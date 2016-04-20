/*
 * main.c
 */
#include "inc/hw_ints.h"
#include "inc/hw_memmap.h"			//memory map of stellaris devs
#include "inc/hw_types.h"			//type macros
#include "driverlib/sysctl.h"		//system control API of driverlib
#include "driverlib/gpio.h"
#include "driverlib/interrupt.h"	//macros for NVIC controller
#include "driverlib/timer.h"
#include "driverlib/adc.h"
//#include "inc/hw_gpio.h"

//libraries for the SPI
#include "driverlib/ssi.h"
#include "inc/hw_ssi.h"


unsigned long ulData;

void SPISendCmd();
void CompInt();
void ConvDoneInt();


unsigned long intTime = 100;
unsigned long adcTemp[4];
unsigned long tempValue;

typedef union {
	unsigned short histTemp[4096];
	unsigned char histCharBuff[4096*2];
}sendBuffer;

sendBuffer histBuff;


int main(void) {


	SysCtlClockSet(SYSCTL_SYSDIV_2_5| SYSCTL_USE_PLL | SYSCTL_XTAL_16MHZ | SYSCTL_OSC_MAIN);

	SysCtlPeripheralEnable(SYSCTL_PERIPH_SSI0);
	SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOA);
	SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOF);
	SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOD);

	//Configure PIN D
	GPIOPinTypeGPIOOutput(GPIO_PORTD_BASE, GPIO_PIN_2 | GPIO_PIN_3 ); 		//outputs
	//GPIOPinTypeGPIOInput(GPIO_PORTD_BASE, GPIO_PIN_0 | GPIO_PIN_1);			//inputs
	//GPIOPinTypeGPIOInput(GPIO_PORTD_BASE, GPIO_PIN_0); //TODO si no funciona
	//usar DirModeSet, ponerlo de input y luego en PadConfig especificar pull-down
	GPIODirModeSet(GPIO_PORTD_BASE, GPIO_PIN_0, GPIO_DIR_MODE_IN);
	GPIOPadConfigSet(GPIO_PORTD_BASE,GPIO_PIN_0 ,GPIO_STRENGTH_4MA,GPIO_PIN_TYPE_STD_WPD);
	//use the PortD Pin 0 to activate ADC converssion
	//TODO uncomment next line to use the pin to start the conversion
	//GPIOADCTriggerEnable(GPIO_PORTD_BASE, GPIO_PIN_0);
	GPIOPinTypeADC(GPIO_PORTD_BASE, GPIO_PIN_1);

	/*
	 *                 External interrupt configuration
	 */
	// configure and activate the corresponding interrupt
	GPIOPortIntRegister(GPIO_PORTD_BASE,CompInt);
	GPIOIntTypeSet(GPIO_PORTD_BASE,GPIO_PIN_0, GPIO_RISING_EDGE);
	GPIOPinIntEnable(GPIO_PORTD_BASE, GPIO_PIN_0);
	//make sure the interrupt is cleared at start
	GPIOPinIntClear(GPIO_PORTD_BASE,GPIO_PIN_0);
	IntEnable(INT_GPIOD);


	//
	GPIOPinTypeGPIOOutput(GPIO_PORTF_BASE, GPIO_PIN_3|GPIO_PIN_2);
	//GPIOPinTypeGPIOInput(GPIO_PORTF_BASE, GPIO_PIN_4);
	GPIODirModeSet(GPIO_PORTF_BASE, GPIO_PIN_4, GPIO_DIR_MODE_IN);
	GPIOPadConfigSet(GPIO_PORTF_BASE,GPIO_PIN_4 ,GPIO_STRENGTH_2MA,GPIO_PIN_TYPE_STD_WPU);
	// configure and activate the corresponding interrupt
	GPIOPortIntRegister(GPIO_PORTF_BASE,SPISendCmd);
	GPIOIntTypeSet(GPIO_PORTF_BASE,GPIO_PIN_4, GPIO_RISING_EDGE);
	GPIOPinIntEnable(GPIO_PORTF_BASE, GPIO_PIN_4);
	//make sure the interrupt is cleared at start
	GPIOPinIntClear(GPIO_PORTF_BASE,GPIO_PIN_4);
	IntEnable(INT_GPIOF);



	//Configure the pins that will be used for the SSI communication
	GPIOPinConfigure(GPIO_PA2_SSI0CLK);
	GPIOPinConfigure(GPIO_PA3_SSI0FSS);
	GPIOPinConfigure(GPIO_PA5_SSI0TX);
	GPIOPinTypeSSI(GPIO_PORTA_BASE, GPIO_PIN_5 | GPIO_PIN_3 | GPIO_PIN_2);

	// Configure the SoftSSI module.  Use idle clock level low and active low
	// clock (mode 0) and 8-bit data.  You can set the polarity of the SoftSSI
	// clock when the SoftSSI module is idle.  You can also configure what
	// clock edge you want to capture data on.  Please reference the datasheet
	// for more information on the different SPI modes.
	SSIConfigSetExpClk(SSI0_BASE, SysCtlClockGet(),SSI_FRF_MOTO_MODE_2,SSI_MODE_MASTER,4000, 16);

	// Enable the SSI module.
	SSIEnable(SSI0_BASE);


	//Timer Activation
	SysCtlPeripheralEnable(SYSCTL_PERIPH_TIMER0);
	TimerConfigure( TIMER0_BASE, TIMER_CFG_A_ONE_SHOT); //just timer A running down
	//integration time
	TimerLoadSet(TIMER0_BASE, TIMER_A, intTime); //configure the timer
	//now i configure it to start the adc conversion
	TimerControlTrigger(TIMER0_BASE, TIMER_A, true);


	//ADC config
	SysCtlPeripheralEnable(SYSCTL_PERIPH_ADC0);
//TODO hacer lo mismo con el ADC1, para obtener una media haciendo un desfase entre ambas medidas
	//SysCtlPeripheralEnable(SYSCTL_PERIPH_ADC1);
	SysCtlADCSpeedSet( SYSCTL_ADCSPEED_1MSPS); // as fast as it can go
	ADCReferenceSet(ADC0_BASE,ADC_REF_INT);
	ADCSequenceDisable(ADC0_BASE,0); //need to be done before configuring it
	//disable those sequences that i will not use...or not....
	ADCSequenceDisable(ADC0_BASE,1);
	ADCSequenceDisable(ADC0_BASE,2);
	ADCSequenceDisable(ADC0_BASE,3);
    //Interrupt Conv Routine
	ADCIntRegister(ADC0_BASE, 0, ConvDoneInt);   //interrupt that will be called after conversion
	ADCIntEnable(ADC0_BASE, 0);
	//clear the ADC interrupt, just to be sure
	ADCIntClear(ADC_BASE,0);
	//After testing the fastest way is to use an external input to trigger ADC converssion
	//TODO uncomment this line to use the external ADC trigger
	//ADCSequenceConfigure(ADC0_BASE, 0 , ADC_TRIGGER_EXTERNAL, 1);
	ADCSequenceConfigure(ADC0_BASE, 0 , ADC_TRIGGER_TIMER, 1);
	//configure the sequence step
	//ADCSequenceStepConfigure(ADC0_BASE, 0, 0, ADC_CTL_TS |ADC_CTL_IE| ADC_CTL_END);
	ADCSequenceStepConfigure(ADC0_BASE, 0, 0, ADC_CTL_CH6|ADC_CTL_IE| ADC_CTL_END);
	//We use the phase delay to control the integration time given to the system
	//only specific constant values can be used, for more info read "adc.C" library
	ADCPhaseDelaySet(ADC0_BASE, ADC_PHASE_0); //increasing the integration time
    //enable the ADC sequence that i want to use
	ADCSequenceEnable(ADC0_BASE,0);




	//Activate the interrupts
	IntMasterEnable();

	   while (true)
	   {
		   /*
		   //Send a hello world message
		   GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2 | GPIO_PIN_3 , 8);
		   ulData = 0x00009001; //0x00004865; //'He'
			SysCtlDelay(5000000);
			SSIDataPut(SSI0_BASE, ulData);
			while(SSIBusy(SSI0_BASE)){};

			ulData = 0x00000270; //0x006C6C; //'ll'
			SysCtlDelay(500);
			SSIDataPut(SSI0_BASE, ulData);
			while(SSIBusy(SSI0_BASE)){};

			ulData = 0x00000270; //0x00006F21; //'o!'
			SysCtlDelay(500);
			SSIDataPut(SSI0_BASE, ulData);
			while(SSIBusy(SSI0_BASE)){};

			SysCtlDelay(5000);

		    GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2 | GPIO_PIN_3, 4);
		    SysCtlDelay(5000000);

		    */

	   }

	return 0;
}

void SPISendCmd(void){
	//FLASH the LED, turning it...blue-green
	 //Send a hello world message
	GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2 | GPIO_PIN_3 , 8);
	ulData = 0x00009001; //0x00004865; //'He'
	SysCtlDelay(5000000);
	SSIDataPut(SSI0_BASE, ulData);
	while(SSIBusy(SSI0_BASE)){};

	ulData = 0x00000270; //0x006C6C; //'ll'
	SysCtlDelay(500);
	SSIDataPut(SSI0_BASE, ulData);
	while(SSIBusy(SSI0_BASE)){};

	ulData = 0x00000270; //0x00006F21; //'o!'
	SysCtlDelay(500);
	SSIDataPut(SSI0_BASE, ulData);
	while(SSIBusy(SSI0_BASE)){};

	SysCtlDelay(5000);

	GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2 | GPIO_PIN_3, 4);
	SysCtlDelay(5000000);

	GPIOPinIntClear(GPIO_PORTF_BASE, GPIO_PIN_4);

}

void CompInt(void){

    //begin to wait the integration time
	//TimerEnable(TIMER0_BASE, TIMER_A);
	GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2 | GPIO_PIN_3 , 8);

	SysCtlDelay(500000);

	GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2 | GPIO_PIN_3 , 0);
	//Better clear it after the conversion
	//clear interrupt flag
	GPIOPinIntClear(GPIO_PORTD_BASE, GPIO_PIN_0);
}



void ConvDoneInt(void){

	//read the vale from the ADC
	ADCSequenceDataGet(ADC0_BASE, 0, adcTemp);
	//tempValue = (1475 - ((2475 * adcTemp[0])) / 4096)/10; //adcTemp[0];
	tempValue = adcTemp[0];
	//store the value in the corresponding histogram
	if (tempValue < 4096) {histBuff.histTemp[tempValue]++;}
	else{ histBuff.histTemp[100] = adcTemp[0]; }

	GPIOPinWrite(GPIO_PORTD_BASE, GPIO_PIN_3, 0);
	//Here i could add some timing...and later on an ADC conversion
	//SysCtlDelay(10);
	GPIOPinWrite(GPIO_PORTD_BASE, GPIO_PIN_3, 8);

	//clear the interrupt flag
	ADCIntClear(ADC0_BASE, 0 );

	//clear interrupt flag
	//GPIOPinIntClear(GPIO_PORTD_BASE, GPIO_PIN_0);
}




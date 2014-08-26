#include "inc/hw_ints.h"  			//interrupts asignment on stellaris devices
#include "inc/hw_memmap.h"			//memory map of stellaris devs
#include "inc/hw_types.h"			//type macros
#include "driverlib/sysctl.h"		//system control API of driverlib
#include "driverlib/interrupt.h"	//macros for NVIC controller
#include "driverlib/gpio.h"
#include "driverlib/timer.h"
//#include "inc/hw_gpio.h"
#include "driverlib/adc.h"

//libraries used for the USB
#include "usblib/usblib.h"
#include "usblib/usb-ids.h"
#include "usblib/device/usbdevice.h"
#include "usblib/device/usbdbulk.h"
#include "utils/ustdlib.h"
#include "usb_bulk_structs.h"

//libraries for the SPI
#include "driverlib/ssi.h"
#include "inc/hw_ssi.h"

//ISR function

void ButtonPressInt();
void ConvDoneInt();
void SPISendCmd();


/*
 * main.c
 */
unsigned long adcTemp[4];

unsigned long intTime = 5; // 50 Mhz -> 20 ns ...10*20 = 200 ns
unsigned long ulData = 0;
//int tempValue;


volatile unsigned long g_ulFlags = 0;
char *g_pcStatus;

//*****************************************************************************
//
// Global flag indicating that a USB configuration has been set.
//
//*****************************************************************************

//TODO quitar esto de aqui y ponerlo de forma que los USB send lo puedan ver
/*
typedef union {
	unsigned short histTemp[4096];
	unsigned char histCharBuff[4096*2];
}sendBuffer;

sendBuffer histBuff;
*/


int main() {
	//system clock config, 50 MHz, using PLL and a 16 Mhz XTAL,  to use 80 Mhz, sysctl_sysdiv_2_5
	SysCtlClockSet(SYSCTL_SYSDIV_2_5| SYSCTL_USE_PLL | SYSCTL_XTAL_16MHZ | SYSCTL_OSC_MAIN);


	//Port A will be used for the SPI, using SSI0
	SysCtlPeripheralEnable(SYSCTL_PERIPH_SSI0);
	SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOA);
	//Port F is used to control the Button Interrupts and the LED
	//TODO could be removed in future designs
	SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOF);
	// Used PIN0 as CompInt, generates the interrupt that triggers ADC conversion, using a timer
	// PIN1 is used as ADC input, containing the analog pulse integral
	// PIN3 is used to close the integration gate, connected to /CLR in the flip-flop
	SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOD);
	//Timer used to delay the conversion a given integration time...could probably be removed
	//triggering conversions directly from the pins and using phase_delay for the ADC conv delay
	SysCtlPeripheralEnable(SYSCTL_PERIPH_TIMER0);
	//Currently only this ADC, and only sequence 0 are being used
	SysCtlPeripheralEnable(SYSCTL_PERIPH_ADC0);


	/*
	 * 				GPIO Port D Configuration
	 */
	GPIOPinTypeGPIOOutput(GPIO_PORTD_BASE, GPIO_PIN_2 | GPIO_PIN_3 ); 		//outputs
	GPIODirModeSet(GPIO_PORTD_BASE, GPIO_PIN_0, GPIO_DIR_MODE_IN);
	GPIOPadConfigSet(GPIO_PORTD_BASE,GPIO_PIN_0 ,GPIO_STRENGTH_2MA,GPIO_PIN_TYPE_STD_WPD);
	//use the PortD Pin 0 to activate ADC converssion
	//TODO uncomment next line to use the pin to start the conversion
	//GPIOADCTriggerEnable(GPIO_PORTD_BASE, GPIO_PIN_0);
	GPIOPinTypeADC(GPIO_PORTD_BASE, GPIO_PIN_1);
	/*
	 *                 External interrupt configuration
	 */
	GPIOPortIntRegister(GPIO_PORTD_BASE,ButtonPressInt);
	GPIOIntTypeSet(GPIO_PORTD_BASE,GPIO_PIN_0, GPIO_RISING_EDGE);
	GPIOPinIntEnable(GPIO_PORTD_BASE, GPIO_PIN_0);
	GPIOPinIntClear(GPIO_PORTD_BASE, GPIO_PIN_0);
	IntEnable(INT_GPIOD);

	/*
	 * 				GPIO Port F Configuration
	 */
	GPIOPinTypeGPIOOutput(GPIO_PORTF_BASE, GPIO_PIN_3|GPIO_PIN_2);
	GPIODirModeSet(GPIO_PORTF_BASE, GPIO_PIN_4, GPIO_DIR_MODE_IN);
	GPIOPadConfigSet(GPIO_PORTF_BASE,GPIO_PIN_4 ,GPIO_STRENGTH_2MA,GPIO_PIN_TYPE_STD_WPU);
	// configure and activate the corresponding interrupt
	GPIOPortIntRegister(GPIO_PORTF_BASE,SPISendCmd);
	GPIOIntTypeSet(GPIO_PORTF_BASE,GPIO_PIN_4, GPIO_RISING_EDGE);
	GPIOPinIntEnable(GPIO_PORTF_BASE, GPIO_PIN_4);
	//make sure the interrupt is cleared at start
	GPIOPinIntClear(GPIO_PORTF_BASE,GPIO_PIN_4);
	IntEnable(INT_GPIOF);


	/**
	 * SPI communication configuration
	 **/
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

	/*
	 *            Timer configuration
	 *
	 *            using an external input to start the ADC conversion seems to work to fast..
	 */
	TimerConfigure( TIMER0_BASE, TIMER_CFG_A_ONE_SHOT); //just timer A running down
	//integration time
	TimerLoadSet(TIMER0_BASE, TIMER_A, intTime); //configure the timer
	//now i configure it to start the adc conversion
	TimerControlTrigger(TIMER0_BASE, TIMER_A, true);

	/*
	 * 		ADC0 Configuration
	 */
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



	/*
	 * 				USB bulk transfer device Configuration
	 */
	//No need to call GPIOPinCOnfigure for the USB to work properly
	GPIOPinTypeUSBAnalog(GPIO_PORTD_BASE, GPIO_PIN_4 | GPIO_PIN_5);

	//
	// Initialize the transmit and receive buffers.
	//
	//USBBufferInit((tUSBBuffer *)&g_sTxBuffer);
	//USBBufferInit((tUSBBuffer *)&g_sRxBuffer);

	//
	// Set the USB stack mode to Device mode with VBUS monitoring.
	//
	USBStackModeSet(0, USB_MODE_FORCE_DEVICE, 0);

	// Pass our device information to the USB library and place the device
	// on the bus.
	USBDBulkInit(0, (tUSBDBulkDevice *)&g_sBulkDevice);

	//
	// Clear our local byte counters.
	volatile unsigned long ulLoop;

	//
	g_ulRxCount = 0;
	g_ulTxCount = 0;
	ulRxCount = 0;
	ulTxCount = 0;



	IntMasterEnable(); //master interrupt enable, for all interrupts

	//Starts the DAC configuration routine
	SPISendCmd();

	//
	// Main application loop.
	//
	while(true)
	{
		/*
		//
		// See if any data has been transferred.
		//
		if((ulTxCount != g_ulTxCount) || (ulRxCount != g_ulRxCount))
		{
			//
			// Has there been any transmit traffic since we last checked?
			//
			if(ulTxCount != g_ulTxCount)
			{
				//
				// Turn on the Green LED.
				//
				GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_3, GPIO_PIN_3);

				//
				// Delay for a bit.
				//
				for(ulLoop = 0; ulLoop < 150000; ulLoop++)
				{
				}

				//
				// Turn off the Green LED.
				//
				GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_3, 0);

				//
				// Take a snapshot of the latest transmit count.
				//
				ulTxCount = g_ulTxCount;
			}

			//
			// Has there been any receive traffic since we last checked?
			//
			if(ulRxCount != g_ulRxCount)
			{
				//
				// Turn on the Blue LED.
				//
				GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2, GPIO_PIN_2);

				//
				// Delay for a bit.
				//
				for(ulLoop = 0; ulLoop < 150000; ulLoop++)
				{
				}

				//
				// Turn off the Blue LED.
				//
				GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2, 0);

				//
				// Take a snapshot of the latest receive count.
				//
				ulRxCount = g_ulRxCount;
			}

			//
			// Update the display of bytes transferred.
			//
		}
		*/
	}




	/*while(true){
		//open main loop, waits for interrupts
	}*/

	return 0;
}

/****
 *  ISR that will be executed after the ADC conversion, started by the
 *  comparator signal
 ****/
void ConvDoneInt(void){

/*
	//TODO cambiar si cambio por un Switch con logica invertida
	GPIOPinWrite(GPIO_PORTD_BASE, GPIO_PIN_3, 8);
	SysCtlDelay(10);
	GPIOPinWrite(GPIO_PORTD_BASE, GPIO_PIN_6, 64);
	SysCtlDelay(10);
	GPIOPinWrite(GPIO_PORTD_BASE, GPIO_PIN_6, 0);

	//TODO cambiado para usar aparte el reloj...que cristofer...

	//Here i could add some timing...and later on an ADC conversion
	//SysCtlDelay(200);
	GPIOPinWrite(GPIO_PORTD_BASE, GPIO_PIN_3, 0);
*/

	//read the vale from the ADC
	ADCSequenceDataGet(ADC0_BASE, 0, adcTemp);
	//tempValue = (1475 - ((2475 * adcTemp[0])) / 4096)/10; //adcTemp[0];
	//store the value in the corresponding histogram
	if (adcTemp[0] < 4096) {histBuff.histTemp[adcTemp[0]]++;}
	else{ histBuff.histTemp[100] = adcTemp[0]; }

	GPIOPinWrite(GPIO_PORTD_BASE, GPIO_PIN_3, 0);
	//Here i could add some timing...and later on an ADC conversion
	//SysCtlDelay(10);
	GPIOPinWrite(GPIO_PORTD_BASE, GPIO_PIN_3, 8);

	//clear the interrupt flag
	ADCIntClear(ADC0_BASE, 0 );

	//clear interrupt flag
	GPIOPinIntClear(GPIO_PORTD_BASE, GPIO_PIN_0);

	GPIOPinIntEnable(GPIO_PORTD_BASE, GPIO_PIN_0);

}

/* Needed only when using the timer for the integration time
 *
 */
void ButtonPressInt(void){

	//GPIOPinWrite(GPIO_PORTD_BASE, GPIO_PIN_3, 0);
	//Here i could add some timing...and later on an ADC conversion
	//SysCtlDelay(10);
	//GPIOPinWrite(GPIO_PORTD_BASE, GPIO_PIN_3, 8);

    //begin to wait the integration time
	TimerEnable(TIMER0_BASE, TIMER_A);
	//Disable this interrupt until the new data has been acquired
	GPIOPinIntDisable(GPIO_PORTD_BASE, GPIO_PIN_0);

	//clear interrupt flag
	//GPIOPinIntClear(GPIO_PORTD_BASE, GPIO_PIN_0);
	//Better clear it after the conversion
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




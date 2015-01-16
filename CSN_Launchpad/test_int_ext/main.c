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

/*
 *  Not used in this version
 *
#include "usblib/usblib.h"
#include "usblib/usb-ids.h"
#include "usblib/device/usbdevice.h"
#include "usblib/device/usbdbulk.h"
#include "utils/ustdlib.h"
#include "usb_bulk_structs.h"
*/

//libraries for the SPI
#include "driverlib/ssi.h"
#include "inc/hw_ssi.h"

//libraries for the C11204 power supply
#include "C11204PS.h"

//ISR function

void ButtonPressInt();
void ConvDoneInt();
void SPISendCmd(int valThreshold);
void msgProc();


/*
 * main.c
 */
unsigned long adcTemp[4];

unsigned long intTime = 5; // 50 Mhz -> 20 ns ...10*20 = 200 ns
//int tempValue;

//variables for the C11204
float HVset;
float tempCorrs[6];


volatile unsigned long g_ulFlags = 0;
char *g_pcStatus;

//*****************************************************************************
//
// Global flag indicating that a USB configuration has been set.
//
//*****************************************************************************

//TODO quitar esto de aqui y ponerlo de forma que los USB send lo puedan ver

typedef union {
	unsigned short histTemp[4096];
	unsigned char histCharBuff[4096*2];
}sendBuffer;

sendBuffer histBuff;

tBoolean datFull = false;

//Serial communication buffer
unsigned char buffIn[10];
unsigned char buffOut[10];

int main() {

	unsigned char aux;
	int i,readChar;
	float vars[6];
	int errCode;
	char cmdIn[60];

	//system clock config, 50 MHz, using PLL and a 16 Mhz XTAL,  to use 80 Mhz, sysctl_sysdiv_2_5
	SysCtlClockSet(SYSCTL_SYSDIV_2_5| SYSCTL_USE_PLL | SYSCTL_XTAL_16MHZ | SYSCTL_OSC_MAIN);


	//Port A will be used for the SPI, using SSI0....and also for UART
	SysCtlPeripheralEnable(SYSCTL_PERIPH_SSI0);
	SysCtlPeripheralEnable(SYSCTL_PERIPH_UART0);
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
	//SysCtlPeripheralEnable(SYSCTL_PERIPH_TIMER0);
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

	//External interrupt
	GPIOPortIntRegister(GPIO_PORTD_BASE,ButtonPressInt);
	GPIOIntTypeSet(GPIO_PORTD_BASE,GPIO_PIN_0, GPIO_RISING_EDGE);
	GPIOPinIntEnable(GPIO_PORTD_BASE, GPIO_PIN_0);
	GPIOPinIntClear(GPIO_PORTD_BASE, GPIO_PIN_0);
	IntEnable(INT_GPIOD);


	/*
	 * 				GPIO Port F Configuration
	 */
	GPIOPinTypeGPIOOutput(GPIO_PORTF_BASE, GPIO_PIN_3|GPIO_PIN_2);
	// Uncomment this to use an external interrupt for the threshold configuration
	/*
	GPIODirModeSet(GPIO_PORTF_BASE, GPIO_PIN_4, GPIO_DIR_MODE_IN);
	GPIOPadConfigSet(GPIO_PORTF_BASE,GPIO_PIN_4 ,GPIO_STRENGTH_2MA,GPIO_PIN_TYPE_STD_WPU);
	// configure and activate the corresponding interrupt
	GPIOPortIntRegister(GPIO_PORTF_BASE,SPISendCmd);
	GPIOIntTypeSet(GPIO_PORTF_BASE,GPIO_PIN_4, GPIO_RISING_EDGE);
	GPIOPinIntEnable(GPIO_PORTF_BASE, GPIO_PIN_4);
	//make sure the interrupt is cleared at start
	GPIOPinIntClear(GPIO_PORTF_BASE,GPIO_PIN_4);
	IntEnable(INT_GPIOF);
	*/


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
	 * 		C11204 Power supply configuration
	 *
	 */
	startCommunication(UART3_BASE);


	/*
	 *            Timer configuration
	 *
	 *            using an external input to start the ADC conversion seems to work to fast..
	 */
	/*
	TimerConfigure( TIMER0_BASE, TIMER_CFG_A_ONE_SHOT); //just timer A running down
	//integration time
	TimerLoadSet(TIMER0_BASE, TIMER_A, intTime); //configure the timer
	//now i configure it to start the adc conversion
	TimerControlTrigger(TIMER0_BASE, TIMER_A, true);
	*/

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
	//ADCSequenceConfigure(ADC0_BASE, 0 , ADC_TRIGGER_TIMER, 1);
	//Software started conversion ... has proven to be unstable modfying integration times
	ADCSequenceConfigure(ADC0_BASE, 0 , ADC_TRIGGER_PROCESSOR, 1);
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
	 *
	 * 				Not used on this version

	//No need to call GPIOPinCOnfigure for the USB to work properly
	GPIOPinTypeUSBAnalog(GPIO_PORTD_BASE, GPIO_PIN_4 | GPIO_PIN_5);

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
	*/
	//Pin config
	GPIOPinConfigure(GPIO_PA0_U0RX);
	GPIOPinConfigure(GPIO_PA1_U0TX);
	GPIOPinTypeUART(GPIO_PORTA_BASE, GPIO_PIN_0 | GPIO_PIN_1);
	UARTConfigSetExpClk(UART0_BASE, SysCtlClockGet(), 115200,
			(UART_CONFIG_WLEN_8 | UART_CONFIG_STOP_ONE | UART_CONFIG_PAR_NONE));



	IntMasterEnable(); //master interrupt enable, for all interrupts

	 UARTCharPut(UART0_BASE,'C');
	 UARTCharPut(UART0_BASE,'O');
	 UARTCharPut(UART0_BASE,'M');

//Start the standard configuration
	//Starts the DAC configuration routine
	SPISendCmd(300);  //set it to 300mV by default

	//Configure the HV power supply
	HVset = 73.7;
	tempCorrs[0] = 0.0; tempCorrs[1] = 0.0;
	tempCorrs[2] = 56.0; tempCorrs[3] = 56.0;
	tempCorrs[4] = HVset; tempCorrs[5] = 25.0;

	setTempCorrFact(UART3_BASE, tempCorrs);
	setHVOn(UART3_BASE);

	 //clear the input buffer
	 for (i = 0; i < 10; i++){
		 buffIn[i] = 0;
	 }
	//
	// Main application loop.
	//
	while(true)
	{
		//put a while to read from UART0
		while (buffIn[0] != 0xFE || buffIn[1] != 0xFE ){
		 while (!UARTCharsAvail(UART0_BASE)){}
		//read the message header
			buffIn[0] = UARTCharGet(UART0_BASE);
			buffIn[1] = UARTCharGet(UART0_BASE);
		}
			 //now I read the rest of the command
			 buffIn[2] = UARTCharGet(UART0_BASE);
			 buffIn[3] = UARTCharGet(UART0_BASE);
			 buffIn[4] = UARTCharGet(UART0_BASE);

		 GPIOPinIntDisable(GPIO_PORTD_BASE, GPIO_PIN_0);



		 msgProc();
		 GPIOPinIntEnable(GPIO_PORTD_BASE, GPIO_PIN_0);

		 //clear the input buffer
		 for (i = 0; i < 10; i++){
			 buffIn[i] = 0;
		 }
		 /*

		  //send the data using the USART0
		  if(buffIn == 'v'){
			  SPISendCmd(300);
		  }
		  else if (aux == 'd'){

			  setTempCorrFact(UART3_BASE, tempCorrs);

			  setHVOn(UART3_BASE);

			  errCode = getInfoAndStatus(UART3_BASE,vars);
			  readChar = 0;
			  if (errCode == 0){
				  for (i = 0; i < 5 ; i++){
					  if (i == 3) vars[i]*=1000;
					  readChar += ltoa((long) vars[i], &cmdIn[readChar]);
					  cmdIn[readChar] = ' ';
					  readChar++;
				  }
				  // UARTCharPut(UART0_BASE, readChar);
				  for (i = 0; i <readChar; i++){
					  UARTCharPut(UART0_BASE, cmdIn[i]);
				  }
			  }
			  UARTCharPut(UART0_BASE,'\n');
			  errCode = readTempCorrFact(UART3_BASE,tempCorrs);//;getTempCorrFact(UART3_BASE,tempCorrs);
			  readChar = 0;
			  if (errCode == 0){
				  for (i = 0; i < 6 ; i++){
					  readChar += ltoa((long) tempCorrs[i], &cmdIn[readChar]);
					  cmdIn[readChar] = ' ';
					  readChar++;
				  }
				  // UARTCharPut(UART0_BASE, readChar);
				  for (i = 0; i <readChar; i++){
					  UARTCharPut(UART0_BASE, cmdIn[i]);
				  }
			  }
			  UARTCharPut(UART0_BASE,'\n');
		  }else{
		  UARTCharPut(UART0_BASE,aux);
		  UARTCharPut(UART0_BASE, '\n');
		  for (i = 0; i < 4096*2; i++){
			  UARTCharPut(UART0_BASE,histBuff.histCharBuff[i]);

		  }
		  }
		  //clear the histogram once it has been sent
		  for (i = 0; i < 4096; i++){
			  histBuff.histTemp[i] = 0;
		  }
		  //allow new data to be stored
		  datFull = false;
		  GPIOPinIntEnable(GPIO_PORTD_BASE, GPIO_PIN_0);

		  */


	}

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
	if (adcTemp[0] < 4096 && !datFull) {
		histBuff.histTemp[adcTemp[0]]++;
		if(histBuff.histTemp[adcTemp[0]] > 65500) {datFull = true;}
	}
	//else{ histBuff.histTemp[100] = adcTemp[0]; }

	GPIOPinWrite(GPIO_PORTD_BASE, GPIO_PIN_3, 0);
	//Here i could add some timing...and later on an ADC conversion
	//SysCtlDelay(10);
	GPIOPinWrite(GPIO_PORTD_BASE, GPIO_PIN_3, 8);

	//clear the interrupt flag
	ADCIntClear(ADC0_BASE, 0 );

	//Not used when the conversion starts with the pin

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
	//TimerEnable(TIMER0_BASE, TIMER_A);

	//Start ADC conversion now and use it directly instead of using a timer
	//is better to use an interrupt, because like this i can turn it off
	//while the current data is being processed
	ADCProcessorTrigger(ADC0_BASE, 0);

	//Disable this interrupt until the new data has been acquired
	GPIOPinIntDisable(GPIO_PORTD_BASE, GPIO_PIN_0);

	//clear interrupt flag
	//GPIOPinIntClear(GPIO_PORTD_BASE, GPIO_PIN_0);
	//Better clear it after the conversion
}

/*
 *   To set the threshold voltage on the TLV5624
 *   valThreshold, value to set in mV
 */
void SPISendCmd(int valThreshold){

	unsigned long ulData = 0;
	int code = 0;
	//FLASH the LED, turning it...blue-green
	//GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2 | GPIO_PIN_3 , 8);
	ulData = 0x00009001; // Configure it to use the internal reference
						 //and set it to be 1.024 V
	SysCtlDelay(5000000);
	SSIDataPut(SSI0_BASE, ulData);
	while(SSIBusy(SSI0_BASE)){};

	//compute the DAC code to send
	//code = V*2^n/(2*ref)
	code = valThreshold*125/1000; //no need to round, not floats used
	code*=16; //doing a 4 bits left shift
	ulData = 0x00000FF0 & code;  //
	//ulData = 0x00000250;
	SysCtlDelay(500);
	SSIDataPut(SSI0_BASE, ulData);
	while(SSIBusy(SSI0_BASE)){};

	//ulData = 0x00000250;
	//Send the data two times just to be sure it worked
	SysCtlDelay(500);
	SSIDataPut(SSI0_BASE, ulData);
	while(SSIBusy(SSI0_BASE)){};

	SysCtlDelay(5000);

	//GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2 | GPIO_PIN_3, 4);
	//SysCtlDelay(5000);

	//GPIOPinIntClear(GPIO_PORTF_BASE, GPIO_PIN_4);
	//GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2 | GPIO_PIN_3, 0);

}

/*
 *   To process data coming from the serial port
 *
 *   TODO pass the buffer as an argument and stop using a global variable
 *   hacer algo mas decente tb que los if anidados...duele a la vista
 *
 *   Commands	Argument
 *   SHV   		2bytes		--> sets the high voltate, the value to set will be received as the voltage*100
 *   GHV  		no argument --> sends back high voltage data
 *   STH		2 bytes		--> sets  the threshold value value received as mV
 *   GTP		no argument	--> sends back the temperature of the MPPC
 *   DAT		no argument	--> sends back the stored histogram
 */
void msgProc(){
	int i;
	//check the contents of the message received
	if(buffIn[2] == 'S' && buffIn[3] == 'H' && buffIn[4] =='V'){
		//first I will read the new value
		buffIn[5] = UARTCharGet(UART0_BASE);
		buffIn[6] = UARTCharGet(UART0_BASE);
		int HVtemp = buffIn[5] | buffIn[6] << 8;
		HVset = (float)HVtemp/100.00;
		tempCorrs[0] = 0.0; tempCorrs[1] = 0.0;
		tempCorrs[2] = 56.0; tempCorrs[3] = 56.0;
		tempCorrs[4] = HVset; tempCorrs[5] = 25.0;

		setTempCorrFact(UART3_BASE, tempCorrs);
		//send the header first
		UARTCharPut(UART0_BASE,0xFE);
		UARTCharPut(UART0_BASE,0xFE);
		//answer with the same...but in small letters
		UARTCharPut(UART0_BASE,'s');
		UARTCharPut(UART0_BASE,'h');
		UARTCharPut(UART0_BASE,'v');

	}
	else if(buffIn[2] == 'S' && buffIn[3] == 'T' && buffIn[4] =='H'){
		//first I will read the new value
		buffIn[5] = UARTCharGet(UART0_BASE);
		buffIn[6] = UARTCharGet(UART0_BASE);
		int THtemp = buffIn[5] | buffIn[6] << 8;
		SPISendCmd(THtemp);
		//send the header first
		UARTCharPut(UART0_BASE,0xFE);
		UARTCharPut(UART0_BASE,0xFE);
		//answer with the same...but in small letters
		UARTCharPut(UART0_BASE,'s');
		UARTCharPut(UART0_BASE,'h');
		UARTCharPut(UART0_BASE,'i');
	}

   else if(buffIn[2] == 'D' && buffIn[3] == 'A' && buffIn[4] =='T'){
	   //send the header first
		UARTCharPut(UART0_BASE,0xFE);
		UARTCharPut(UART0_BASE,0xFE);
	   //answer with the same...but in small letters
		UARTCharPut(UART0_BASE,'d');
		UARTCharPut(UART0_BASE,'a');
		UARTCharPut(UART0_BASE,'t');
		for (i = 0; i < 4096*2; i++){
			UARTCharPut(UART0_BASE,histBuff.histCharBuff[i]);

		}
		//clear the histogram once it has been sent
		for (i = 0; i < 4096; i++){
			histBuff.histTemp[i] = 0;
		}
		//allow new data to be stored
		datFull = false;
	}

}




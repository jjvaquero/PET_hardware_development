#include "inc/hw_ints.h"  			//interrupts asignment on stellaris devices
#include "inc/hw_memmap.h"			//memory map of stellaris devs
#include "inc/hw_types.h"			//type macros
#include "driverlib/sysctl.h"		//system control API of driverlib
#include "driverlib/interrupt.h"	//macros for NVIC controller
#include "driverlib/gpio.h"
//#include "driverlib/timer.h"
//#include "inc/hw_gpio.h"
#include "driverlib/adc.h"

//libraries used for the USB
#include "usblib/usblib.h"
#include "usblib/usb-ids.h"
#include "usblib/device/usbdevice.h"
#include "usblib/device/usbdbulk.h"
#include "utils/ustdlib.h"
#include "usb_bulk_structs.h"

//ISR function
extern void ButtonPressInt(void);
extern void ConvDoneInt(void);


/*
 * main.c
 */
unsigned long adcTemp[4];

unsigned long intTime = 100; // 50 Mhz -> 20 ns ...10*20 = 100 ns
int tempValue;



volatile unsigned long g_ulFlags = 0;
char *g_pcStatus;

//*****************************************************************************
//
// Global flag indicating that a USB configuration has been set.
//
//*****************************************************************************



int main() {
	//system clock config, 50 MHz, using PLL and a 16 Mhz XTAL,  to use 80 Mhz, sysctl_sysdiv_2_5
	SysCtlClockSet(SYSCTL_SYSDIV_2_5| SYSCTL_USE_PLL | SYSCTL_XTAL_16MHZ | SYSCTL_OSC_MAIN);
	//GPIO conf
	SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOD);
	GPIOPinTypeGPIOOutput(GPIO_PORTD_BASE, GPIO_PIN_2 | GPIO_PIN_3); 		//outputs
	GPIOPinTypeGPIOInput(GPIO_PORTD_BASE, GPIO_PIN_0 | GPIO_PIN_1);			//inputs


	//Pad configuration to detect the adequate input levels
	GPIOPadConfigSet(GPIO_PORTD_BASE,GPIO_PIN_0 ,GPIO_STRENGTH_2MA,GPIO_PIN_TYPE_STD_WPU);
	//use the PortD Pin 0 to activate ADC converssion
	GPIOADCTriggerEnable(GPIO_PORTD_BASE, GPIO_PIN_0);


	//add now adc support, after the external interrupt a timer should be used
	//to select the given integration time....so...


/*
 * 			ADC Configuration
 */
	SysCtlPeripheralEnable(SYSCTL_PERIPH_ADC0);
//TODO hacer lo mismo con el ADC1, para obtener una media haciendo un desfase entre ambas medidas
	//SysCtlPeripheralEnable(SYSCTL_PERIPH_ADC1);
	SysCtlADCSpeedSet( SYSCTL_ADCSPEED_1MSPS); // as fast as it can go
	ADCSequenceDisable(ADC0_BASE,0); //need to be done before configuring it
	//disable those sequences that i will not use...or not....
	ADCSequenceDisable(ADC0_BASE,1);
	ADCSequenceDisable(ADC0_BASE,2);
	ADCSequenceDisable(ADC0_BASE,3);
    //Interrupt Conv Routine
	ADCIntRegister(ADC0_BASE, 0, ConvDoneInt);   //interrupt that will be called after conversion
	ADCIntEnable(ADC0_BASE, 0);
	//After testing the fastest way is to use an external input to trigger ADC converssion
	ADCSequenceConfigure(ADC0_BASE, 0 , ADC_TRIGGER_EXTERNAL, 1);
	//configure the sequence step
	ADCSequenceStepConfigure(ADC0_BASE, 0, 0, ADC_CTL_TS |ADC_CTL_IE| ADC_CTL_END);
	//We use the phase delay to control the integration time given to the system
	//only specific constant values can be used, for more info read "adc.C" library
	ADCPhaseDelaySet(ADC0_BASE, ADC_PHASE_0);
    //enable the ADC sequence that i want to use
	ADCSequenceEnable(ADC0_BASE,0);

	//USB activation and configuration

	    // Enable the GPIO peripheral used for USB, and configure the USB
	    // pins.

/**
 * USB bulk transfer device Configuration
 **/
	GPIOPinTypeUSBAnalog(GPIO_PORTD_BASE, GPIO_PIN_4 | GPIO_PIN_5);
	//these will only be used for the LEDs, testing only...
	//TODO remove this later on
	SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOF);

	//
	// Enable the GPIO pins for the LED (PF2 & PF3).
	//
	GPIOPinTypeGPIOOutput(GPIO_PORTF_BASE, GPIO_PIN_3|GPIO_PIN_2);

	//
	// Initialize the transmit and receive buffers.
	//
	USBBufferInit((tUSBBuffer *)&g_sTxBuffer);
	USBBufferInit((tUSBBuffer *)&g_sRxBuffer);

	//
	// Set the USB stack mode to Device mode with VBUS monitoring.
	//
	USBStackModeSet(0, USB_MODE_FORCE_DEVICE, 0);  //USB_MODE_FORCE_DEVICE

	//
	// Pass our device information to the USB library and place the device
	// on the bus.
	//
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

	//
	// Main application loop.
	//
	while(1)
	{
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


	GPIOPinWrite(GPIO_PORTD_BASE, GPIO_PIN_3, 8);
	//Here i could add some timing...and later on an ADC conversion
	//SysCtlDelay(200);
	GPIOPinWrite(GPIO_PORTD_BASE, GPIO_PIN_3, 0);

	//read the vale from the ADC
	ADCSequenceDataGet(ADC0_BASE, 0, adcTemp);
	//tempValue = (1475 - ((2475 * adcTemp[0])) / 4096)/10; //adcTemp[0];
	tempValue = adcTemp;
	//store the value in the corresponding histogram
	if (tempValue < 4096) histBuff.histTemp[tempValue]++;

	//clear the interrupt flag
	ADCIntClear(ADC0_BASE, 0 );

}


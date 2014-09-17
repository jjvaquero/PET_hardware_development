#include "inc/hw_ints.h"
#include "inc/hw_memmap.h"
#include "inc/hw_types.h"
#include "driverlib/gpio.h"
#include "driverlib/interrupt.h"
#include "driverlib/pin_map.h"
#include "driverlib/sysctl.h"
#include "driverlib/uart.h"
//#include "utils/uartstdio.h"


unsigned char cmdOut[60];
unsigned char cmdIn[60];


int main(void) {
	int i = 0;
	//system clock config, 50 MHz, using PLL and a 16 Mhz XTAL,  to use 80 Mhz, sysctl_sysdiv_2_5
	SysCtlClockSet(SYSCTL_SYSDIV_2_5| SYSCTL_USE_PLL | SYSCTL_XTAL_16MHZ | SYSCTL_OSC_MAIN);

	//Port D will be used to use UART2
	SysCtlPeripheralEnable(SYSCTL_PERIPH_UART2);
	SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOD);
	SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOF);

	//Pin Configuration
	GPIOPinConfigure(GPIO_PD6_U2RX);
	GPIOPinConfigure(GPIO_PD7_U2TX);
	GPIOPinTypeUART(GPIO_PORTD_BASE, GPIO_PIN_6 | GPIO_PIN_7);

	//LED pin
	GPIOPinTypeGPIOOutput(GPIO_PORTF_BASE, GPIO_PIN_2);

	//UART configuration
	UARTConfigSetExpClk(UART2_BASE, SysCtlClockGet(), 38400,
	        (UART_CONFIG_WLEN_8 | UART_CONFIG_STOP_ONE | UART_CONFIG_PAR_EVEN | UART_CONFIG_PAR_ONE));

	UARTEnable(UART2_BASE);

//	UARTStdioInit(0);
	//populate the array now

	  cmdOut[0] = 0x02;
	  cmdOut[1] = 0x48;
	  cmdOut[2] = 0x50;
	  cmdOut[3] = 0x4F;
	  cmdOut[4] = 0x03;
	  cmdOut[5] = 0x45; //0x00;
	  cmdOut[6] = 0x43; //0xEA; //x43;
	  cmdOut[7] = 0x0D;
	  //Now i will send the data thoroug the serial port

	  while(1) //continous send read loop
	  {
		  GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2, 0x04);
		  for (i = 0; i < 8 ; i++){
			  UARTCharPutNonBlocking(UART2_BASE, cmdOut[i]);
		  }
		 //Now the read command
		 //I now i will get 28 bytes so...
		  for (i = 0; i < 28 ; i++){
			  cmdIn[i] = UARTCharGetNonBlocking(UART2_BASE);
		 }
		 SysCtlDelay(5000);
		 GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2, 0x00);
		 SysCtlDelay(5000);


	  }





	return 0;
}

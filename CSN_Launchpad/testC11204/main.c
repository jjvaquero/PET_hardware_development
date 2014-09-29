#include "inc/hw_ints.h"
#include "inc/hw_memmap.h"
#include "inc/hw_types.h"
#include "driverlib/gpio.h"
#include "driverlib/interrupt.h"
#include "driverlib/pin_map.h"
#include "driverlib/sysctl.h"
#include "driverlib/uart.h"
//#include "utils/uartstdio.h"
#include <stdio.h>
#include <stdlib.h>



unsigned char cmdOut[60];
unsigned char cmdIn[60];
int readChar;
unsigned char aux;
char cmd[15];
char* ptr;


/**
 *  Copied from  http://www.programiz.com/c-programming/examples/hexadecimal-decimal-convert
 *
 */
void decimal_hex(int n, char hex[]) /* Function to convert decimal to hexadecimal. */
{
    int i=3,rem;  // i=4 I will only use numbers smaller than this
    while (n!=0 && i >= 0)
    {
        rem=n%16;
        switch(rem)
        {
            case 10:
              hex[i]='A';
              break;
            case 11:
              hex[i]='B';
              break;
            case 12:
              hex[i]='C';
              break;
            case 13:
              hex[i]='D';
              break;
            case 14:
              hex[i]='E';
              break;
            case 15:
              hex[i]='F';
              break;
            default:
              hex[i]=rem+'0';
              break;
        }
        i--;
        n/=16;
    }

}


int main(void) {
	int i = 0;
	//system clock config, 50 MHz, using PLL and a 16 Mhz XTAL,  to use 80 Mhz, sysctl_sysdiv_2_5
	SysCtlClockSet(SYSCTL_SYSDIV_2_5| SYSCTL_USE_PLL | SYSCTL_XTAL_16MHZ | SYSCTL_OSC_MAIN);

	//Port D will be used to use UART2
	SysCtlPeripheralEnable(SYSCTL_PERIPH_UART3);
	SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOC);
	SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOF);

	//configure the UART to be used with the usb
	SysCtlPeripheralEnable(SYSCTL_PERIPH_UART0);
	SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOA);

	//Pin Configuration
	GPIOPinConfigure(GPIO_PC6_U3RX);
	GPIOPinConfigure(GPIO_PC7_U3TX);
	GPIOPinTypeUART(GPIO_PORTC_BASE, GPIO_PIN_6 | GPIO_PIN_7);
	//UART configuration, this function also enables the UART Comm
	UARTConfigSetExpClk(UART3_BASE, SysCtlClockGet(), 38400,
	        (UART_CONFIG_WLEN_8 | UART_CONFIG_STOP_ONE | UART_CONFIG_PAR_EVEN));

	//LED pin
	GPIOPinTypeGPIOOutput(GPIO_PORTF_BASE, GPIO_PIN_2);




	//Pin config
	GPIOPinConfigure(GPIO_PA0_U0RX);
	GPIOPinConfigure(GPIO_PA1_U0TX);
	GPIOPinTypeUART(GPIO_PORTA_BASE, GPIO_PIN_0 | GPIO_PIN_1);
	UARTConfigSetExpClk(UART0_BASE, SysCtlClockGet(), 115200,
	(UART_CONFIG_WLEN_8 | UART_CONFIG_STOP_ONE | UART_CONFIG_PAR_NONE));

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

	  UARTCharPut(UART0_BASE, 'E');
	  UARTCharPut(UART0_BASE, 'n');
	  UARTCharPut(UART0_BASE, 't');
	  UARTCharPut(UART0_BASE, 'e');
	  UARTCharPut(UART0_BASE, 'r');
	  UARTCharPut(UART0_BASE, ' ');
	  UARTCharPut(UART0_BASE, 'T');
	  UARTCharPut(UART0_BASE, 'e');
	  UARTCharPut(UART0_BASE, 'x');
	  UARTCharPut(UART0_BASE, 't');
	  UARTCharPut(UART0_BASE, ':');
	  UARTCharPut(UART0_BASE, ' ');


	  while(1) //continous send read loop
	  {

		  //Send the hpo command until i get an answer from the system
		  //while (!UARTCharsAvail(UART3_BASE)){
		  aux = UARTCharGet(UART0_BASE);

		  //test to see if the conversion using sprintf and sscanf works well
		  for ( i = 0; i< 4 ; i++){
			  cmd[i] = UARTCharGet(UART0_BASE);
		  }
		  UARTCharPut(UART0_BASE,'T');
		  //Now i can read the data
		  int value;
		  // Not working on Stellaris..
		  //sscanf(cmd, "%4x",&value);
		   value = (int)strtol(cmd,&ptr,16);
		  //prepara valores para devolverlos
		  UARTCharPut(UART0_BASE,'T');
		  UARTCharPut(UART0_BASE,'0');
		  UARTCharPut(UART0_BASE,'M');
		  ltoa((long)value,&cmd[4]);
		  //sprintf(&cmd[4],"%.4X",value);
		  decimal_hex(value, &cmd[10]);

		  for ( i = 0; i< 15 ; i++){
		  	 UARTCharPut(UART0_BASE,cmd[i]);
		  }



		  for(i = 0; i < 60; i++){ cmdIn[i] = 0;}

		  while (cmdIn[1] != 'h' || cmdIn[2] !='p' || cmdIn[3] != 'o' ){ // && readChar !=28

	      //clean the buffer first
		  while(UARTCharsAvail(UART3_BASE)){ aux = UARTCharGet(UART3_BASE);}

		  for (i = 0; i < 8 ; i++){
			  UARTCharPut(UART3_BASE, cmdOut[i]);
		  }

		   while (UARTBusy(UART3_BASE)){}
		 // }

		 //Now the read command
		 //I now i will get 28 bytes so...
		  readChar = 0;
		  aux = 0;

		 // GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2, 0x04);

		  //wait to get the start of a new message
		  while(aux != 0x02){
			  aux = UARTCharGetNonBlocking(UART3_BASE); //NonBlocking
		  }
		  cmdIn[readChar++] = aux;

		 // while(UARTCharsAvail(UART3_BASE) && readChar < 60 && readChar ){
		  while(aux != 0x0D){ //(readChar < 28){
		  //for (i = 0; i < 28; i++){
			//  cmdIn[i] = UARTCharGetNonBlocking(UART2_BASE);
			  aux = UARTCharGetNonBlocking(UART3_BASE); //NonBlocking
			  //send the read bytes to the usb
			  if (aux!= 0xFF) {
				  cmdIn[readChar++]=aux;
			  }
		 }

		 }

		  UARTCharPut(UART0_BASE,'\n');
		  UARTCharPut(UART0_BASE, readChar);
		  for (i = 0; i <readChar; i++){
			  UARTCharPut(UART0_BASE, cmdIn[i]);
		  }

		 //SysCtlDelay(5000000);
		// GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2, 0x00);
		 //SysCtlDelay(5000000);

	  }





	return 0;
}

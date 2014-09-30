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
#include "C11204PS.h"



/**
 *  Copied from  http://www.programiz.com/c-programming/examples/hexadecimal-decimal-convert
 *
 */
void decimal_hex(int n, char hex[]) /* Function to convert decimal to hexadecimal. */
{
    int i=3,rem;  // i=4 I will only use numbers smaller than this
    if ( n < 0 ){ n = 0xFFFF - n*(-1)+1;}
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
	char cmdIn[60];
	int readChar;
    unsigned char aux;
    int errCode;
	float vars[5];
	float HVset = 72.0;
	float tempCorrFactors[6];

	//system clock config, 50 MHz, using PLL and a 16 Mhz XTAL,  to use 80 Mhz, sysctl_sysdiv_2_5
	SysCtlClockSet(SYSCTL_SYSDIV_2_5| SYSCTL_USE_PLL | SYSCTL_XTAL_16MHZ | SYSCTL_OSC_MAIN);




	SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOF);

	//configure the UART to be used with the usb
	SysCtlPeripheralEnable(SYSCTL_PERIPH_UART0);
	SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOA);

	//LED pin
	GPIOPinTypeGPIOOutput(GPIO_PORTF_BASE, GPIO_PIN_2);

	//Pin config
	GPIOPinConfigure(GPIO_PA0_U0RX);
	GPIOPinConfigure(GPIO_PA1_U0TX);
	GPIOPinTypeUART(GPIO_PORTA_BASE, GPIO_PIN_0 | GPIO_PIN_1);
	UARTConfigSetExpClk(UART0_BASE, SysCtlClockGet(), 115200,
	(UART_CONFIG_WLEN_8 | UART_CONFIG_STOP_ONE | UART_CONFIG_PAR_NONE));

	startCommunication(UART3_BASE);


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
/*
 *  				Allreay tested
 *
 *
 *
		  //test the voltage setting
		  errCode = setTempHV(UART3_BASE, HVset);
		  if(HVset < 80.0){
			  HVset += 1.00;
		  }else{
			  HVset = 72.00;
		  }

		  //read the output voltage
		  UARTCharPut(UART0_BASE,'V');
		  vars[0] =  getOutputHV(UART3_BASE);
		  readChar = 0;
		  readChar += ltoa((long) vars[0], &cmdIn[readChar]);
		  cmdIn[readChar] = '\n ';
		  readChar++;

		  for (i = 0; i <readChar; i++){
			  UARTCharPut(UART0_BASE, cmdIn[i]);
		  }
*/


		  /*
		  * 		Secondly high temperature side coefficient DT’1, Secondly low temperature side coefficient DT’2,
		  * 		Primary high temperature side coefficient DT1, Primary low temperature side coefficient DT2,
		  * 		Reference voltage Vb, Reference temperature Tb
		  */
		  if(HVset < 80.0){
		  			  HVset += 1.00;
		  		  }else{
		  			  HVset = 72.00;
		  		  }
		  tempCorrFactors[0] = 0.0; tempCorrFactors[1] = 0.0;
		  tempCorrFactors[2] = 100.0; tempCorrFactors[3] = 100.0;
		  tempCorrFactors[4] = HVset; tempCorrFactors[5] = 25.0;

		  setTempCorrFact(UART3_BASE, tempCorrFactors);

		  switchTempComp(UART3_BASE, false);

		  //turn on HV
		  setHVOn(UART3_BASE);
		  //turn off HV
		  //setHVOff(UART3_BASE);


		  errCode = getInfoAndStatus(UART3_BASE,vars);
		  readChar = 0;
		  if (errCode == 0){
			  for (i = 0; i < 5 ; i++){
				  readChar += ltoa((long) vars[i], &cmdIn[readChar]);
				  cmdIn[readChar] = ' ';
				  readChar++;
			  }
			  UARTCharPut(UART0_BASE,'\n');
			 // UARTCharPut(UART0_BASE, readChar);
			  for (i = 0; i <readChar; i++){
				  UARTCharPut(UART0_BASE, cmdIn[i]);
			  }
		  }

	  }


	return 0;
}

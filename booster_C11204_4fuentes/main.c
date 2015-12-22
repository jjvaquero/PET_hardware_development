#include <stdint.h>
#include <stdbool.h>

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


void msgProc();

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

bool datFull = false;

//Serial communication buffer
unsigned char buffIn[10];
unsigned char buffOut[10];




int main(void) {

	int i = 0;
	char cmdIn[60];
	int readChar;
    unsigned char aux;
    int errCode;
    float HVset;
    float vars[6];
    float tempCorrs[6];
    float tmpVolt;

    unsigned long mPort1;
    unsigned long mPort2;
    unsigned long mPort3;
    unsigned long mPort5;



	//system clock config, 50 MHz, using PLL and a 16 Mhz XTAL,  to use 80 Mhz, sysctl_sysdiv_2_5
	SysCtlClockSet(SYSCTL_SYSDIV_1 | SYSCTL_USE_OSC |SYSCTL_OSC_MAIN | SYSCTL_XTAL_16MHZ);


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

	//set up the ports to use
	//startCommunication(UART3_BASE);
//	startCommunicationUART1();
//	startCommunicationUART2();
	startCommunicationUART3();
	startCommunicationUART5();

	mPort1 = UART1_BASE;
	mPort2 = UART2_BASE;
	mPort3 = UART3_BASE;
	mPort5 = UART5_BASE;

	HVset = 61.6;  //Safe HV value for the S12642 detectors

	tempCorrs[0] = 0.0; tempCorrs[1] = 0.0;
	tempCorrs[2] = 0.0; tempCorrs[3] = 0.0;
	tempCorrs[4] = HVset; tempCorrs[5] = 25.0;

	//Fisrt I will set them all at the same HV
	// the idea is that later on a program will modify this HV usin the serial port

//    setTempCorrFact(mPort1, tempCorrs);

	HVset = 62.2;tempCorrs[4] = HVset;
//	setTempCorrFact(mPort2, tempCorrs);
	HVset = 66.6;tempCorrs[4] = HVset;
	setTempCorrFact(mPort3, tempCorrs);
	HVset = 68.5;tempCorrs[4] = HVset;
	setTempCorrFact(mPort5, tempCorrs);

	//make sure comm is working
//	errCode = getInfoAndStatus(mPort1,vars);
	errCode = getInfoAndStatus(mPort3,vars);
	readChar = 0;

	if (errCode == 0){
		for (i = 0; i < 5 ; i++){
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


	UARTCharPut(UART0_BASE,'d');
	UARTCharPut(UART0_BASE,'o');

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
		//read the comm selector byte
		buffIn[1] = UARTCharGet(UART0_BASE);

		//now I read the rest of the command
		buffIn[2] = UARTCharGet(UART0_BASE);
		buffIn[3] = UARTCharGet(UART0_BASE);
		buffIn[4] = UARTCharGet(UART0_BASE);

		switch (buffIn[1]){
		case 1:
			msgProc(mPort1);
			break;
		case 2:
			msgProc(mPort2);
			break;
		case 3:
			msgProc(mPort3);
			break;
		case 5:
			msgProc(mPort5);
			break;
		}
		msgProc();

		//clear the input buffer
		for (i = 0; i < 10; i++){
			buffIn[i] = 0;
		}

	}


	return 0;
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
void msgProc(unsigned long lPort){
	int i;
	union intchar{
		float dat; // i can use because i asume no value to be > 16000...
		unsigned char data[4];
	}int2char;
	//check the contents of the message received
	if(buffIn[2] == 'S' && buffIn[3] == 'H' && buffIn[4] =='V'){
		//first I will read the new value
		buffIn[5] = UARTCharGet(UART0_BASE);
		buffIn[6] = UARTCharGet(UART0_BASE);
		int HVtemp = buffIn[5] | buffIn[6] << 8;
		HVset = (float)HVtemp/100.00;
		tempCorrs[0] = 0.0; tempCorrs[1] = 0.0;
		tempCorrs[2] = 0.0; tempCorrs[3] = 0.0;
		tempCorrs[4] = HVset; tempCorrs[5] = 25.0;

		setTempCorrFact(lPort, tempCorrs);
		//send the header first
		UARTCharPut(UART0_BASE,0xFE);
		UARTCharPut(UART0_BASE,0xFE);
		//answer with the same...but in small letters
		UARTCharPut(UART0_BASE,'s');
		UARTCharPut(UART0_BASE,'h');
		UARTCharPut(UART0_BASE,'v');

	}
	//used to read the temp every minute
    else if(buffIn[2] == 'T' && buffIn[3] == 'E' && buffIn[4] =='M'){
	   //send the header first
		UARTCharPut(UART0_BASE,0xFE);
		UARTCharPut(UART0_BASE,0xFE);
	   //answer with the same...but in small letters
		UARTCharPut(UART0_BASE,'t');
		UARTCharPut(UART0_BASE,'e');
		UARTCharPut(UART0_BASE,'m');
		//read the data from the hamamatsu

		int2char.dat= getMPPCTemp(lPort);
		//lets try another function
		//getInfoAndStatus(UART3_BASE, tempCorrs);
		//int2char.dat = tempCorrs[4];
		for (i = 0 ; i < 4 ; i++){
			UARTCharPut(UART0_BASE,int2char.data[i]);
		}
    }
	//
	// commands specific to the CSN detector system
	//
	/*
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
	}*/

}

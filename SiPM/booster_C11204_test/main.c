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
    unsigned long mPort3;



	//system clock config, 50 MHz, using PLL and a 16 Mhz XTAL,  to use 80 Mhz, sysctl_sysdiv_2_5
	SysCtlClockSet(SYSCTL_SYSDIV_1 | SYSCTL_USE_OSC | SYSCTL_OSC_MAIN | SYSCTL_XTAL_16MHZ);




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
	startCommunicationUART3();
	startCommunicationUART1();
	mPort3 = UART3_BASE;
	mPort1 = UART1_BASE;

/*
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


	//  while() //continous send read loop
	//  {

		  //Send the hpo command until i get an answer from the system
		  //while (!UARTCharsAvail(UART3_BASE)){
		 aux = UARTCharGet(UART0_BASE);
		  UARTCharPut(UART0_BASE,aux);
		  UARTCharPut(UART0_BASE,'\n');

*/

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

		  //turn on HV
		  //setHVOn(UART3_BASE);
		  //turn off HV
		  //setHVOff(UART3_BASE);

		  switchTempComp(UART3_BASE, false);
*/


		  /*
		  * 		Secondly high temperature side coefficient DT’1, Secondly low temperature side coefficient DT’2,
		  * 		Primary high temperature side coefficient DT1, Primary low temperature side coefficient DT2,
		  * 		Reference voltage Vb, Reference temperature Tb
		  */

		  HVset = 73.5;  // Vop 72.2  --to compensate the different gains...72.55

		  tempCorrs[0] = 0.0; tempCorrs[1] = 0.0;
		  tempCorrs[2] = 0.0; tempCorrs[3] = 0.0;
		  tempCorrs[4] = HVset; tempCorrs[5] = 25.0;

		  setTempCorrFact(mPort3, tempCorrs);

		  HVset = 72.8;  // Vop 71.8    --to compensate the different gains ...71.9
		  tempCorrs[4] = HVset; tempCorrs[5] = 25.0;
		  setTempCorrFact(mPort1, tempCorrs);





		  //read and send through UART0 the new temp corr fact values
		  //make sure i set them all to zero
		  //for (i = 0; i < 6 ; i++){ tempCorrFactors[i] = 0;}

		  errCode = getInfoAndStatus(mPort3,vars);
		  readChar = 0;

		  errCode = getInfoAndStatus(mPort1,vars);
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




/*
		  errCode = readTempCorrFact(mPort,tempCorrs);//;getTempCorrFact(UART3_BASE,tempCorrs);
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
		  UARTCharPut(UART0_BASE,'T');
		  tmpVolt =  getOutputCurrent(mPort);
		  readChar = 0;
		  readChar += ltoa((long) tmpVolt, &cmdIn[readChar]);
		  cmdIn[readChar] = 13;
		  readChar++;

		  for (i = 0; i <readChar; i++){
			  UARTCharPut(UART0_BASE, cmdIn[i]);
		  }
*/
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
void msgProc(){
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

		setTempCorrFact(UART3_BASE, tempCorrs);
		//send the header first
		UARTCharPut(UART0_BASE,0xFE);
		UARTCharPut(UART0_BASE,0xFE);
		//answer with the same...but in small letters
		UARTCharPut(UART0_BASE,'s');
		UARTCharPut(UART0_BASE,'h');
		UARTCharPut(UART0_BASE,'v');

	}
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
	*/
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

		int2char.dat= getMPPCTemp(UART3_BASE);
		//lets try another function
		//getInfoAndStatus(UART3_BASE, tempCorrs);
		//int2char.dat = tempCorrs[4];
		for (i = 0 ; i < 4 ; i++){
			UARTCharPut(UART0_BASE,int2char.data[i]);
		}

	}

}

/*
 * C11204PS.cpp
 *
 *  Created on: 25/09/2014
 *      Author: rchil
 */

#include "C11204PS.h"





/*
 *  Hamamatsu conversion table....ouuu yeahh!!!!!...cause sending floats is sooo mainstream...and u know...i always had a thing for strings
 *
 *  Function 				Data range	Conversion 							Unit
 *  Output voltage monitor 	0～65535 	1.812×10-3 							V   --> 'V'
 *  Output current monitor 	0～1024 		4.980×10-3 							mA  --> 'A'
 *  MPPC temp monitor		0～65535 	(val*1.907×10-5-1.035)/(-5.5×10-3)	C	--> 'C'
 *  temp coefficient DT'1	-1000～1000	1.507×10-3			 				mV/°C2	-->'D'
 *  temp coefficient DT’2	-1000～1000	1.507×10-3 							mV/°C2	-->'D'
 *  temp coefficient DT1	0～65535		5.225×10-2 							mV/°C	-->'T'
 *  temp coefficient DT2	0～65535		5.225×10-2 							mV/°C	-->'T'
 *	Reference voltage Vb 	0～65535 	1.812×10-3 							V	-->'V'
 *	Reference temp Tb 		0～65535 	(val*1.907×10-5-1.035)/(-5.5×10-3) °C	-->'C'
 */

/**
 *  Converts a hex value stored in a char array
 *  to its proper float value using the Hamamatsu conversion table
 *  @param value array contaning the hexValues as chars
 *  @param unit unit to be converted
 *  @return the corresponding value as a float
 */
float unitConv(char* value, char unit){
	float tmpVal; //here i will place the value as integer after taking it from the string
	float result; //value that will be returned
	char* ptr;
	tmpVal = (float)strtol(value,&ptr,16);

	//Now choose the proper conversion factor and...voilaaaa
	switch (unit){
		case 'V':
			result = tmpVal*1.812e-3;
			break;
		case 'A':
			result = tmpVal*4.98e-3;
			break;
		case 'C':
			result = (tmpVal*1.907e-5-1.035)/(-5.5e-3);
			break;
		case 'D':
			result = tmpVal*1.507e-3;
			break;
		case 'T':
			result = tmpVal*5.225e-2;
		default:
			result = -1.0;
	}

	return result;
}
/**
 *  Converts a float value to a hex char value...Hamamatsu did it...
 *  @param  value value to be converted
 *  @return the convereted value
 */
char* charConv(float value, char unit){

}


/*
C11204PS::C11204PS(unsigned long portBase) {
	// TODO Auto-generated constructor stub
	port = portBase;
	comOpen = false;
	int i;
	for (i = 0; i < 60 ; i++){
		cmdIn[i] = 0;
		cmdOut[i] = 0;
	}
}

C11204PS::~C11204PS() {
	// TODO Auto-generated destructor stub
}
*/

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

/**
 *  This function should be called at the peripheral configuration phase
 *   the first step would be to check that the port is working properly
 *
 *   @return negative value in case of error, 0 otherwise
 *
 *   TODO add support for other ports, currently only UART3 will be allowed
 */

int startCommunication(unsigned long port){
	//Check that the right port have been set
	if (port != UART3_BASE) return -1;

	//Peripheral configuration
	SysCtlPeripheralEnable(SYSCTL_PERIPH_UART3);
	SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOC);
	//Pin Configuration
	GPIOPinConfigure(GPIO_PC6_U3RX);
	GPIOPinConfigure(GPIO_PC7_U3TX);
	GPIOPinTypeUART(GPIO_PORTC_BASE, GPIO_PIN_6 | GPIO_PIN_7);
	//UART configuration, this function also enables the UART Comm
	UARTConfigSetExpClk(UART3_BASE, SysCtlClockGet(), 38400,
	        (UART_CONFIG_WLEN_8 | UART_CONFIG_STOP_ONE | UART_CONFIG_PAR_EVEN));
	//update this variable that will later be used to check comm has been opened
	//comOpen = true;
	return 0;
}

/**
 *  Used for status monitoring
 *
 *  @return Array containing: status, output volt setting, output volt monitor, output current monitor, MPPC temp monitor
 *
 *  status....							0				1
 *  bit0 	High voltage output 		OFF				ON
 *	bit1 	Over-current protection 	No 				Yes
 *	bit2 	Current value 				within specs	outside specs
 *	bit3 	MPPC temperature sensor 	Disconnect 		Connect
 *	bit4 	MPPC temperature sensor 	Within specs 	Outside specs
 *	bit5 	Reserve 1
 *	bit6 	Temperature correction 		Invalid 		Effectiveness
 *	bit7-16	Reserved
 *
 */
float* getInfoAndStatus(unsigned long port){
	float outData[5];
	char aux = 0;
	int readChar = 0;
	int i;
	char hexChar[4];

	unsigned char cmdIn[60]; 	///buffer that will be used for I/O commands
	unsigned char cmdOut[60]; 	///buffer that will be used for I/O commands

	//Construct the output message
	cmdOut[0] = 0x02;
	cmdOut[1] = 0x48; //H
	cmdOut[2] = 0x50; //P
	cmdOut[3] = 0x4F; //O
	cmdOut[4] = 0x03; // end
	cmdOut[5] = 0x45; // CRC1
	cmdOut[6] = 0x43; // CRC2
	cmdOut[7] = 0x0D; //delimeter

	for (i = 0;  i <60 ; i++) cmdIn[i] = 0;

	//all of this checks later on will not be needed
	while (cmdIn[1] != 'h' || cmdIn[2] !='p' || cmdIn[3] != 'o' ){ // && readChar !=28

		//clean the buffer first
		while(UARTCharsAvail(port)){ aux = UARTCharGet(port);}

		for (i = 0; i < 8 ; i++){
			UARTCharPut(port, cmdOut[i]);
		}

		while (UARTBusy(port)){}
		// }

		//Now the read command
		//I now i will get 28 bytes so...
		readChar = 0;
		aux = 0;

		// GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2, 0x04);

		//wait to get the start of a new message
		while(aux != 0x02){
			aux = UARTCharGetNonBlocking(port); //NonBlocking
		}
		cmdIn[readChar++] = aux;

		// while(UARTCharsAvail(UART3_BASE) && readChar < 60 && readChar ){
		while(aux != 0x0D){ //(readChar < 28){
			//for (i = 0; i < 28; i++){
			//  cmdIn[i] = UARTCharGetNonBlocking(UART2_BASE);
			aux = UARTCharGetNonBlocking(port); //NonBlocking
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

	//Data conversion into actual floats with actual units...

	// Status Info
	hexChar[0] = '0';
	for ( i = 1; i< 4 ; i++) hexChar[i] = cmdIn[i+3];
	outData[0] = (float)strtol(hexChar,0,16);
	//output volt setting
	for ( i = 0; i< 4 ; i++) hexChar[i] = cmdIn[i+7];
	outData[1] = unitConv(hexChar,'V');
	//output volt monitor
	for ( i = 0; i< 4 ; i++) hexChar[i] = cmdIn[i+11];
	outData[2] = unitConv(hexChar,'V');
	//output current monitor
	for ( i = 0; i< 4 ; i++) hexChar[i] = cmdIn[i+15];
	outData[3] = unitConv(hexChar,'A');
	//MPPC temp monitor
	for ( i = 0; i< 4 ; i++) hexChar[i] = cmdIn[i+19];
	outData[4] = unitConv(hexChar,'C');

	return outData;
}
int setTempCorrFact(float* tempCorrFactor){

}
void setHVOn(){

}
void setHVOff(){

}
void switchTempComp(){

}
void pSReset(){

}
void setTempHV(float tempHV){

}
float getMPPCTemp(){

}
float getOutputHV(){

}
float getOutputCurrent(){

}
float getStatus(){

}


unsigned char* computeCRC(unsigned char* buffer, int length){

}
bool checkCRC(unsigned char* buffer, int length){

}




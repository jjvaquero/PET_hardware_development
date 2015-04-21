/*
 * C11204PS.cpp
 *
 * 		Library designed to communicate with the Hamamatsu power supply C11204
 *
 *  Created on: 02/10/2014
 *      Author: rchil
 */

#include "C11204PS.h"


/*
 *  Hamamatsu conversion table....ouuu yeahh!!!!!...cause sending floats is sooo mainstream...and u know...i always had a thing for strings
 *
 *  Function 				Data range	Conversion 							Unit
 *  Output voltage monitor 	0ï½ž65535 	1.812Ã—10-3 							V   --> 'V'
 *  Output current monitor 	0ï½ž1024 		4.980Ã—10-3 							mA  --> 'A'
 *  MPPC temp monitor		0ï½ž65535 	(val*1.907Ã—10-5-1.035)/(-5.5Ã—10-3)	C	--> 'C'
 *  temp coefficient DT'1	-1000ï½ž1000	1.507Ã—10-3			 				mV/Â°C2	-->'D'
 *  temp coefficient DTâ€™2	-1000ï½ž1000	1.507Ã—10-3 							mV/Â°C2	-->'D'
 *  temp coefficient DT1	0ï½ž65535		5.225Ã—10-2 							mV/Â°C	-->'T'
 *  temp coefficient DT2	0ï½ž65535		5.225Ã—10-2 							mV/Â°C	-->'T'
 *	Reference voltage Vb 	0ï½ž65535 	1.812Ã—10-3 							V	-->'V'
 *	Reference temp Tb 		0ï½ž65535 	(val*1.907Ã—10-5-1.035)/(-5.5Ã—10-3) Â°C	-->'C'
 */

/**
 *  Converts a hex value stored in a char array
 *  to its proper float value using the Hamamatsu conversion table
 *  @param value array contaning the hexCharues as chars
 *  @param unit unit to be converted
 *  @return the corresponding value as a float
 */
float unitConv(char* value, char unit){
	float tmpVal; //here i will place the value as integer after taking it from the string
	float result; //value that will be returned
	//char* ptr;
	tmpVal = (float)strtol(value,0,16);

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
			break;
		default:
			result = -1.0;
	}

	return result;
}


/**
 *  Copied from  http://www.programiz.com/c-programming/examples/hexadecimal-decimal-convert
 *
 */
void decimal_hex(int n, unsigned char hex[]) /* Function to convert decimal to hexadecimal. */
{
    int i=3,rem;  // i=4 I will only use numbers smaller than this
    if ( n < 0 ){ n = 0xFFFF - n*(-1)+1;}
    /*else{
    	if(n < 0x0FFF) {

    		hex[0] = '0'; i = 2;
    	}
    	if (n < 0x00FF){
    		hex[1] = '0'; i = 1;
    	}
    	if ( n < 0x000F) {
    		hex[2] = '0'; i = 0;
    	}
    }*/
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
    for (i = 0; i < 4; i++){
    	if (hex[i] == 0) hex[i] = '0';
    }

}

/**
 *  Converts a float value to a hex char value...Hamamatsu did it...
 *  @param  value value to be converted
 *  @param unit that will be converted
 *  @param outPut  char array containing the value as HEX chars
 */
void charConv(float value, char unit, unsigned char outPut[]){

	int result,i;
	//Make that the output array is clear
	for (i = 0; i < 4 ; i++) {outPut[i] = 0;}
	//Now choose the proper conversion factor and...voilaaaa
		switch (unit){
			case 'V':
				result = (int)(value/1.812e-3);
				break;
			case 'A':
				result = (int)(value/4.98e-3);
				break;
			case 'C':
				result = (int)((value*-5.5e-3+1.035)/(1.907e-5));
				break;
			case 'D':
				result = (int)(value/1.507e-3);
				break;
			case 'T':
				result = (int)(value/5.225e-2);
				break;
			default:
				result = -1.0;
		}
		decimal_hex(result, outPut);
}




/**
 * Computes the CRC
 * @param buffer data used for the calculation
 * @pra length length of the current data message
 * @para CRC obtained CRC output
 *
 */
void computeCRC(unsigned char buffer[], int length, unsigned char CRC[]){
	  int i = 0;
	  unsigned char sumVal = 0;
	  for (i = 0 ; i < length-3; i++){
	    sumVal+= buffer[i];
	  }
	  CRC[0] = ((sumVal & 0xF0)>>4)+ 0x30;
	  if (CRC[0] > 0x39) CRC[0]+=0x07;
	  CRC[1] = (sumVal & 0x0F) + 0x30;
	  if (CRC[1] > 0x39) CRC[1]+=0x07;
}

tBoolean checkCRC(unsigned char buffer[], int length){
	  unsigned char CRC[2];
	  computeCRC(buffer, length, CRC);

	  if(CRC[0] == buffer[length-3] && CRC[1] == buffer[length-2])
	  {return true;}
	  else { return false; }
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
	if (port != UART5_BASE) return -1;

	//Peripheral configuration
	SysCtlPeripheralEnable(SYSCTL_PERIPH_UART5);
	SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOE);
	//Pin Configuration

	/******************
	 * Needed only to use NMI-PD7 needs to be unlocked, otherwise the code will not work
	 */
/*
    //
    // Enable port PD7 for UART2 U2TX
    // First open the lock and select the bits we want to modify in the GPIO commit register.
    //
    HWREG(GPIO_PORTD_BASE + GPIO_O_LOCK) = GPIO_LOCK_KEY_DD;
    HWREG(GPIO_PORTD_BASE + GPIO_O_CR) = 0x80;
*/

	GPIOPinConfigure(GPIO_PE4_U5RX);
	GPIOPinConfigure(GPIO_PE5_U5TX);
	GPIOPinTypeUART(GPIO_PORTE_BASE, GPIO_PIN_4 | GPIO_PIN_5);
	//UART configuration, this function also enables the UART Comm
	UARTConfigSetExpClk(UART5_BASE, SysCtlClockGet(), 38400,
	        (UART_CONFIG_WLEN_8 | UART_CONFIG_STOP_ONE | UART_CONFIG_PAR_EVEN));
	//update this variable that will later be used to check comm has been opened
	//comOpen = true;
	return 0;
}

/**
 *  Used to check that the correct answer is obtained
 *  @param cmdOut  command that will be sent
 *  @param outLength  length of the output message
 *  @param cmdIn data received from the power supply
 *  @param inLength  expected length of the received message
 *  @param port base register of the UART port used
 *
 *  @return -1 in case of error, 0 otherwise
 */
int readAnswer(unsigned char cmdOut[], int outLength, unsigned char cmdIn[], int inLength,unsigned long port){
	//TODO
	//all the checks and the continous sendind of the output message is due to inastability in the comm
	//probably this wont be necessary when using a level shifter....
	//the same with the inLength...currently error messages are being discarded, as they were mainly due to comm failures
	//and the only way to fix this...was sending another messages as a level shifter is not currently available
	int i = 0;
	int readChar = 0;
	unsigned char aux;

	for (i = 0;  i <inLength ; i++) cmdIn[i] = 0;
	//Check that we have received the proper answer...being this the same sent command but in lower case, thus the +20
	while (cmdIn[1] != (cmdOut[1]+32) || cmdIn[2] !=(cmdOut[2]+32) || cmdIn[3] != (cmdOut[3]+32) ){ // && readChar !=28

		//clean the UART buffer first
		while(UARTCharsAvail(port)){ aux = UARTCharGet(port);}

		for (i = 0; i < outLength ; i++){
			UARTCharPut(port, cmdOut[i]);
		}
		// Wait for all data to be read by the C11204
		while (UARTBusy(port)){}

		//Now the read command
		readChar = 0;
		aux = 0;


		//wait to get the start of a new message
		while(aux != 0x02){
			aux = UARTCharGetNonBlocking(port); //NonBlocking
		}
		cmdIn[readChar++] = aux;

		while(aux != 0x0D){
			aux = UARTCharGetNonBlocking(port);
			//send the read bytes to the usb
			if (aux!= 0xFF) {
				cmdIn[readChar++]=aux;
			}
		}

	}

	//Check that both length are the same
	if (readChar == inLength){
		return 0;
	}else{
		return -1;
	}
}

/**
 *  Used for status monitoring
 *  @param port Base register of the port that will be used
 *  @param outData where the obtained results will be stored
 *  		 Array containing: status, output volt setting, output volt monitor, output current monitor, MPPC temp monitor
 *  @return -1 in case of error 0 otherwise
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
int getInfoAndStatus(unsigned long port, float outData[]){
	//float outData[5];
	int i;
	char hexChar[5];
    int outLength = 8;
    int inLength = 28;
	unsigned char cmdIn[28+5]; 	///buffer that will be used for I/O commands
	unsigned char cmdOut[8+5]; 	///buffer that will be used for I/O commands

	//Construct the output message
	cmdOut[0] = 0x02;
	cmdOut[1] = 0x48; //H
	cmdOut[2] = 0x50; //P
	cmdOut[3] = 0x4F; //O
	cmdOut[4] = 0x03; // end
	cmdOut[5] = 0x45; // CRC1
	cmdOut[6] = 0x43; // CRC2
	cmdOut[7] = 0x0D; //delimeter

	//Read the expected answer from the comm port
	readAnswer(cmdOut, outLength, cmdIn, inLength, port);

	//Check the CRC
	if (!checkCRC(cmdIn, inLength)){
		//In case something went wrong return an empty vector
		for ( i = 0; i<5; i++) outData[i] = 0.0;
		return -1;
	}

	/*
	//for debugging only
	UARTCharPut(UART0_BASE,'\n');
	for (i = 0; i <inLength; i++){
		UARTCharPut(UART0_BASE, cmdIn[i]);
	}
	*/

	hexChar[4] = 0; //needed as end of string for strtol
	//Data conversion into actual floats with actual units...
	// Status Info
	for ( i = 0; i< 4 ; i++) hexChar[i] = cmdIn[i+4];
	outData[0] = (float)strtol(hexChar,0,10);
	//output volt setting
	for ( i = 0; i< 4 ; i++) hexChar[i] = cmdIn[i+8];
	outData[1] = unitConv(hexChar,'V');
	//output volt monitor
	for ( i = 0; i< 4 ; i++) hexChar[i] = cmdIn[i+12];
	outData[2] = unitConv(hexChar,'V');
	//output current monitor
	//hexChar[0] = '0';  //range 0x0000 - 0x03FF
	for ( i = 0; i< 4 ; i++) hexChar[i] = cmdIn[i+16];
	outData[3] = unitConv(hexChar,'A');
	//MPPC temp monitor
	for ( i = 0; i< 4 ; i++) hexChar[i] = cmdIn[i+20];
	outData[4] = unitConv(hexChar,'C');

	return 0;
}

int readTempCorrFact(unsigned long port, float outData[]){
	int i;
	unsigned char tmpBuff[2];
	char hexChar[5];
	int outLength = 8;
	int inLength = 32;
	unsigned char cmdIn[32+5]; 	///buffer that will be used for I/O commands
	unsigned char cmdOut[8+5]; 	///buffer that will be used for I/O commands

	//Construct the output message
	cmdOut[0] = 0x02;
	cmdOut[1] = 'H';
	cmdOut[2] = 'R';
	cmdOut[3] = 'T';

	cmdOut[4] = 0x03; // end

	//The two CRC bytes, compute the CRC
	computeCRC(cmdOut,outLength,tmpBuff);
	cmdOut[5] = tmpBuff[0];  //CRC1
	cmdOut[6] = tmpBuff[1];  //CRC2

	cmdOut[7] = 0x0D; //delimeter

	//Read the expected answer from the comm port
	readAnswer(cmdOut, outLength, cmdIn, inLength, port);

	//Check the CRC
	if (!checkCRC(cmdIn, inLength)){
		//In case something went wrong return an empty vector
		for ( i = 0; i<6; i++) outData[i] = 0.0;
		return -1;
	}

	/*
	//for debugging only
	UARTCharPut(UART0_BASE,'\n');
	for (i = 0; i <inLength; i++){
		UARTCharPut(UART0_BASE, cmdIn[i]);
	}
	*/
	hexChar[4] = 0; //needed as end of string for strtol
	//Data conversion into actual floats with actual units...
	// Secondly high temperature side coefficient DTâ€™1
	for ( i = 0; i< 4 ; i++) hexChar[i] = cmdIn[i+4];
	outData[0] = unitConv(hexChar,'D');
	//Secondly low temperature side coefficient DTâ€™2
	for ( i = 0; i< 4 ; i++) hexChar[i] = cmdIn[i+8];
	outData[1] =unitConv(hexChar,'D');
	//Primary high temperature side coefficient DT1
	for ( i = 0; i< 4 ; i++) hexChar[i] = cmdIn[i+12];
	outData[2] = unitConv(hexChar,'T');
	//Primary low temperature side coefficient DT2
	for ( i = 0; i< 4 ; i++) hexChar[i] = cmdIn[i+16];
	outData[3] = unitConv(hexChar,'T');
	//Reference voltage Vb
	for ( i = 0; i< 4 ; i++) hexChar[i] = cmdIn[i+20];
	outData[4] = unitConv(hexChar,'V');
	//Reference temperature Tb
	for ( i = 0; i< 4 ; i++) hexChar[i] = cmdIn[i+24];
	outData[5] =unitConv(hexChar,'C');

	return 0;
}



/*  Only god and the compiler know why inside this function calls to strtol where not working....
 *
 *

int getTempCorrFact(unsigned long port, float outTemp[]){
		int i;
		unsigned char tmpBuff[2];
		char hexChar[5];
	    int outLength = 8;
	    int inLength = 32;
		unsigned char cmdIn[32+5]; 	///buffer that will be used for I/O commands
		unsigned char cmdOut[8+5]; 	///buffer that will be used for I/O commands

		//Construct the output message
		cmdOut[0] = 0x02;
		cmdOut[1] = 'H';
		cmdOut[2] = 'R';
		cmdOut[3] = 'T';

		cmdOut[4] = 0x03; // end

		//The two CRC bytes, compute the CRC
		computeCRC(cmdOut,outLength,tmpBuff);
		cmdOut[5] = tmpBuff[0];  //CRC1
		cmdOut[6] = tmpBuff[1];  //CRC2

		cmdOut[7] = 0x0D; //delimeter

		//Read the expected answer from the comm port
		readAnswer(cmdOut, outLength, cmdIn, inLength, port);

		//Check the CRC
		if (!checkCRC(cmdIn, inLength)){
			//In case something went wrong return an empty vector
			for ( i = 0; i<6; i++) outTemp[i] = 0.0;
			return -1;
		}

		//for debugging only
		UARTCharPut(UART0_BASE,'\n');
		for (i = 0; i <inLength; i++){
			UARTCharPut(UART0_BASE, cmdIn[i]);
		}
		UARTCharPut(UART0_BASE,'\n');

		//Data conversion into actual floats with actual units...
		// Secondly high temperature side coefficient DTâ€™1
		for ( i = 0; i< 4 ; i++) hexChar[i] = '0';// cmdIn[i+4];}
		for( i = 0; i < 4 ; i++){
			UARTCharPut(UART0_BASE,hexChar[i]);
		}
		outTemp[0] = (float)strtol(hexChar,0,16); //unitConv(hexChar,'D');
		//Secondly low temperature side coefficient DTâ€™2
		for ( i = 0; i< 4 ; i++) hexChar[i] = cmdIn[i+8];
		outTemp[1] =(float)strtol(hexChar,0,16); // unitConv(hexChar,'D');
		//Primary high temperature side coefficient DT1
		for ( i = 0; i< 4 ; i++) hexChar[i] = cmdIn[i+12];
		outTemp[2] = (float)strtol(hexChar,0,16); //unitConv(hexChar,'T');
		//Primary low temperature side coefficient DT2
		for ( i = 0; i< 4 ; i++) hexChar[i] = cmdIn[i+16];
		outTemp[3] =(float)strtol(hexChar,0,16); // unitConv(hexChar,'T');
		//Reference voltage Vb
		for ( i = 0; i< 4 ; i++) hexChar[i] = cmdIn[i+20];
		outTemp[4] = (float)strtol(hexChar,0,16); //unitConv(hexChar,'V');
		//Reference voltage Tb
		for ( i = 0; i< 4 ; i++) hexChar[i] = cmdIn[i+24];
		outTemp[5] =(float)strtol(hexChar,0,16); // unitConv(hexChar,'C');

		return 0;
}
*/



/**
 * Set the temperature correction factors, the reference temperature and the reference voltage
 * @para tempCorrFactor array containing all the values to be set
 * 		as floats in their corresponding units (6 values in total)
 * 		Secondly high temperature side coefficient DTâ€™1, Secondly low temperature side coefficient DTâ€™2,
 * 		Primary high temperature side coefficient DT1, Primary low temperature side coefficient DT2,
 * 		Reference voltage Vb, Reference temperature Tb
 * 	@param port Base register address of the UART port used
 *
 * 	@return -1 in case of error 0 otherwise
 */
int setTempCorrFact(unsigned long port, float tempCorrFactor[]){

	int outLength = 32;
	int inLength = 8;
	unsigned char cmdIn[8+5]; 	///buffer that will be used for I/O commands
	unsigned char cmdOut[32+5]; 	///buffer that will be used for I/O commands
	unsigned  char tmpBuff[4]; //used for the CRC and the data conversion

	//Construct the output message
	cmdOut[0] = 0x02;

	cmdOut[1] = 'H';
	cmdOut[2] = 'S'; //
	cmdOut[3] = 'T'; //O

	//Secondly high temperature side coefficient DTâ€™1
	charConv(tempCorrFactor[0],'D', tmpBuff);
	cmdOut[4] = tmpBuff[0];
	cmdOut[5] = tmpBuff[1];
	cmdOut[6] = tmpBuff[2];
	cmdOut[7] = tmpBuff[3];

	//Secondly low temperature side coefficient DTâ€™2
	charConv(tempCorrFactor[1],'D', tmpBuff);
	cmdOut[8] = tmpBuff[0];
	cmdOut[9] = tmpBuff[1];
	cmdOut[10] = tmpBuff[2];
	cmdOut[11] = tmpBuff[3];

	//Primary high temperature side coefficient DT1
	charConv(tempCorrFactor[2],'T', tmpBuff);
	cmdOut[12] = tmpBuff[0];
	cmdOut[13] = tmpBuff[1];
	cmdOut[14] = tmpBuff[2];
	cmdOut[15] = tmpBuff[3];

	//Primary low temperature side coefficient DT2
	charConv(tempCorrFactor[3],'T', tmpBuff);
	cmdOut[16] = tmpBuff[0];
	cmdOut[17] = tmpBuff[1];
	cmdOut[18] = tmpBuff[2];
	cmdOut[19] = tmpBuff[3];

	//Reference voltage Vb
	charConv(tempCorrFactor[4],'V', tmpBuff);
	cmdOut[20] = tmpBuff[0];
	cmdOut[21] = tmpBuff[1];
	cmdOut[22] = tmpBuff[2];
	cmdOut[23] = tmpBuff[3];

	//Reference temperature Tb
	charConv(tempCorrFactor[5],'C', tmpBuff);
	cmdOut[24] = tmpBuff[0];
	cmdOut[25] = tmpBuff[1];
	cmdOut[26] = tmpBuff[2];
	cmdOut[27] = tmpBuff[3];

	cmdOut[28] = 0x03; // end

	//The two CRC bytes, compute the CRC
	computeCRC(cmdOut,outLength,tmpBuff);
	cmdOut[29] = tmpBuff[0];
	cmdOut[30] = tmpBuff[1];

	cmdOut[31] = 0x0D; //delimeter

	//Read the expected answer from the comm port
	readAnswer(cmdOut, outLength, cmdIn, inLength, port);

	/*for debugging only
	UARTCharPut(UART0_BASE,'s');
	UARTCharPut(UART0_BASE,' ');
	for (i = 0; i < 32; i++){
		UARTCharPut(UART0_BASE,cmdOut[i]);
	}
	*/

	//Check the CRC
	if (!checkCRC(cmdIn, inLength)){
		//In case something went wrong return an empty vector
		return -1;
	}

	return 0;
}

/**
 * 	High voltage output ON
 */
int setHVOn(unsigned long port){
	int outLength = 8;
	int inLength = 8;
	unsigned char cmdIn[8+5]; 	///buffer that will be used for I/O commands
	unsigned char cmdOut[8+5]; 	///buffer that will be used for I/O commands
	unsigned  char tmpBuff[2]; //used for the CRC and the data conversion

	//Construct the output message
	cmdOut[0] = 0x02;

	cmdOut[1] = 'H';
	cmdOut[2] = 'O';
	cmdOut[3] = 'N';

	cmdOut[4] = 0x03; // end

	//The two CRC bytes, compute the CRC
	computeCRC(cmdOut,outLength,tmpBuff);
	cmdOut[5] = tmpBuff[0];
	cmdOut[6] = tmpBuff[1];

	cmdOut[7] = 0x0D; //delimeter

	//Read the expected answer from the comm port
	readAnswer(cmdOut, outLength, cmdIn, inLength, port);

	//Check the CRC
	if (!checkCRC(cmdIn, inLength)){
		//In case something went wrong return an empty vector
		return -1;
	}

	return 0;

}

/**
 * 	High voltage output OFF
 */
int setHVOff(unsigned long port){
	int outLength = 8;
	int inLength = 8;
	unsigned char cmdIn[8+5]; 	///buffer that will be used for I/O commands
	unsigned char cmdOut[8+5]; 	///buffer that will be used for I/O commands
	unsigned  char tmpBuff[2]; //used for the CRC and the data conversion

	//Construct the output message
	cmdOut[0] = 0x02;

	cmdOut[1] = 'H';
	cmdOut[2] = 'O';
	cmdOut[3] = 'F';

	cmdOut[4] = 0x03; // end

	//The two CRC bytes, compute the CRC
	computeCRC(cmdOut,outLength,tmpBuff);
	cmdOut[5] = tmpBuff[0];
	cmdOut[6] = tmpBuff[1];

	cmdOut[7] = 0x0D; //delimeter

	//Read the expected answer from the comm port
	readAnswer(cmdOut, outLength, cmdIn, inLength, port);

	//Check the CRC
	if (!checkCRC(cmdIn, inLength)){
		//In case something went wrong return an empty vector
		return -1;
	}

	return 0;

}

/**
 * Switch the temperature compensation mode
 * @param port UART port to use
 * @param status Wether to turn it on or off
 *
 * @return -1 in case of error 0 otherwise
 */
int switchTempComp(unsigned long port, tBoolean status){

	int outLength = 9;
	int inLength = 8;
	unsigned char cmdIn[8+5]; 	///buffer that will be used for I/O commands
	unsigned char cmdOut[9+5]; 	///buffer that will be used for I/O commands
	unsigned  char tmpBuff[2]; //used for the CRC and the data conversion

	//Construct the output message
	cmdOut[0] = 0x02;

	cmdOut[1] = 'H';
	cmdOut[2] = 'C';
	cmdOut[3] = 'M';

	//On or Off ...byte...ouuu yeahh pure Hamamatsu style
	if (status== true) {cmdOut[4] = '1';}
	else{ cmdOut[4] = '0';}

	cmdOut[5] = 0x03; // end

	//The two CRC bytes, compute the CRC
	computeCRC(cmdOut,outLength,tmpBuff);
	cmdOut[6] = tmpBuff[0];
	cmdOut[7] = tmpBuff[1];

	cmdOut[8] = 0x0D; //delimeter

	//Read the expected answer from the comm port
	readAnswer(cmdOut, outLength, cmdIn, inLength, port);

	//Check the CRC
	if (!checkCRC(cmdIn, inLength)){
		//In case something went wrong return an empty vector
		return -1;
	}

	return 0;

}

/**
 * Reset of power supply
 */
int pSReset(unsigned long port){
	int outLength = 8;
	int inLength = 8;
	unsigned char cmdIn[8+5]; 	///buffer that will be used for I/O commands
	unsigned char cmdOut[8+5]; 	///buffer that will be used for I/O commands
	unsigned  char tmpBuff[2]; //used for the CRC and the data conversion

	//Construct the output message
	cmdOut[0] = 0x02;

	cmdOut[1] = 'H';
	cmdOut[2] = 'R';
	cmdOut[3] = 'E';

	cmdOut[4] = 0x03; // end

	//The two CRC bytes, compute the CRC
	computeCRC(cmdOut,outLength,tmpBuff);
	cmdOut[5] = tmpBuff[0];
	cmdOut[6] = tmpBuff[1];

	cmdOut[7] = 0x0D; //delimeter

	//Read the expected answer from the comm port
	readAnswer(cmdOut, outLength, cmdIn, inLength, port);

	//Check the CRC
	if (!checkCRC(cmdIn, inLength)){
		//In case something went wrong return an empty vector
		return -1;
	}

	return 0;

}

/**
 * Temporary setting for the reference voltage
 * @param port Base register of the UART port used
 * @param tempHV High voltage value to set
 *
 * @returns -1 in case of error, 0 otherwise
 */
int setTempHV(unsigned long port, float tempHV){

    int outLength = 12;
    int inLength = 8;
	unsigned char cmdIn[8+5]; 	///buffer that will be used for I/O commands
	unsigned char cmdOut[12+5]; 	///buffer that will be used for I/O commands
	unsigned  char tmpBuff[4]; //used for the CRC and the data conversion

	//Construct the output message
	cmdOut[0] = 0x02;

	cmdOut[1] = 'H';
	cmdOut[2] = 'B'; //
	cmdOut[3] = 'V'; //O

	//now follows the 4 data bytes
	charConv(tempHV,'V', tmpBuff);
	cmdOut[4] = tmpBuff[0];
	cmdOut[5] = tmpBuff[1];
	cmdOut[6] = tmpBuff[2];
	cmdOut[7] = tmpBuff[3];

	cmdOut[8] = 0x03; // end

	//The two CRC bytes, compute the CRC
	computeCRC(cmdOut,outLength,tmpBuff);
	cmdOut[9] = tmpBuff[0];
	cmdOut[10] = tmpBuff[1];

	cmdOut[11] = 0x0D; //delimeter

	//Read the expected answer from the comm port
	readAnswer(cmdOut, outLength, cmdIn, inLength, port);

	//Check the CRC
	if (!checkCRC(cmdIn, inLength)){
		//In case something went wrong return an empty vector
		return -1;
	}

	return 0;

}

/**
 * 	Temperature acquisition MPPC
 *	@param port UART port
 *	@return MPPC temp value in deg C, -1 in case of error
 */
float getMPPCTemp(unsigned long port){
    int outLength = 8;
    int inLength = 12;
    float outData;
    char hexChar[5];
    int i;
	unsigned char cmdIn[8+5]; 	///buffer that will be used for I/O commands
	unsigned char cmdOut[12+5]; 	///buffer that will be used for I/O commands
	unsigned  char tmpBuff[4]; //used for the CRC and the data conversion

	//Construct the output message
	cmdOut[0] = 0x02;

	cmdOut[1] = 'H';
	cmdOut[2] = 'G';
	cmdOut[3] = 'T';

	cmdOut[4] = 0x03; // end

	//The two CRC bytes, compute the CRC
	computeCRC(cmdOut,outLength,tmpBuff);
	cmdOut[5] = tmpBuff[0];
	cmdOut[6] = tmpBuff[1];

	cmdOut[7] = 0x0D; //delimeter

	//Read the expected answer from the comm port
	readAnswer(cmdOut, outLength, cmdIn, inLength, port);

	//Check the CRC
	if (!checkCRC(cmdIn, inLength)){
		//In case something went wrong return an empty vector
		return -1;
	}

	hexChar[4] = 0; //needed as end of string for strtol
	//convert the corresponding value
	for ( i = 0; i< 4 ; i++) hexChar[i] = cmdIn[i+4];
	outData = unitConv(hexChar,'C');

	return outData;

}

/**
 * Get the output voltage
 * @param port Base register addrees of the UART port used
 *
 * @return Output voltage in the corresponding units, returns -1 in case of error
 */
float getOutputHV(unsigned long port){
	int i;
	char hexChar[5];
	float outData;
    int outLength = 8;
    int inLength = 12;
	unsigned char cmdIn[12+5]; 	///buffer that will be used for I/O commands
	unsigned char cmdOut[8+5]; 	///buffer that will be used for I/O commands
	unsigned  char tmpBuff[2]; //used for the CRC and the data conversion

	//Construct the output message
	cmdOut[0] = 0x02;

	cmdOut[1] = 'H';
	cmdOut[2] = 'G'; //
	cmdOut[3] = 'V'; //O
	cmdOut[4] = 0x03; // end

	//The two CRC bytes, compute the CRC
	computeCRC(cmdOut,outLength,tmpBuff);
	cmdOut[5] = tmpBuff[0];
	cmdOut[6] = tmpBuff[1];

	cmdOut[7] = 0x0D; //delimeter

	//Read the expected answer from the comm port
	readAnswer(cmdOut, outLength, cmdIn, inLength, port);

	//Check the CRC
	if (!checkCRC(cmdIn, inLength)){
		//In case something went wrong return an empty vector
		return -1;
	}

	hexChar[4] = 0; //needed as end of string for strtol
	//convert the corresponding value
	for ( i = 0; i< 4 ; i++) hexChar[i] = cmdIn[i+4];
	outData = unitConv(hexChar,'V');

	return outData;
}

/**
 * Get the output current
 * @param port Base register addrees of the UART port used
 *
 * @return Output current in the corresponding units, returns -1 in case of error
 */
float getOutputCurrent(unsigned long port){
    int outLength = 8;
    int inLength = 12;
    float outData;
    char hexChar[5];
    int i;
	unsigned char cmdIn[8+5]; 	///buffer that will be used for I/O commands
	unsigned char cmdOut[12+5]; 	///buffer that will be used for I/O commands
	unsigned  char tmpBuff[4]; //used for the CRC and the data conversion

	//Construct the output message
	cmdOut[0] = 0x02;

	cmdOut[1] = 'H';
	cmdOut[2] = 'G';
	cmdOut[3] = 'C';

	cmdOut[4] = 0x03; // end

	//The two CRC bytes, compute the CRC
	computeCRC(cmdOut,outLength,tmpBuff);
	cmdOut[5] = tmpBuff[0];
	cmdOut[6] = tmpBuff[1];

	cmdOut[7] = 0x0D; //delimeter

	//Read the expected answer from the comm port
	readAnswer(cmdOut, outLength, cmdIn, inLength, port);

	//Check the CRC
	if (!checkCRC(cmdIn, inLength)){
		//In case something went wrong return an empty vector
		return -1;
	}

	hexChar[4] = 0; //needed as end of string for strtol
	//convert the corresponding value
	for ( i = 0; i< 4 ; i++) hexChar[i] = cmdIn[i+4];
	outData = unitConv(hexChar,'A');

	return outData;
}

/**
 * Get the current status of the C11204
 * @param port Base register addrees of the UART port used
 *
 * @return Output voltage in the corresponding units, returns -1 in case of error
 *
 *	status....							0				1
 *  bit0 	High voltage output 		OFF				ON
 *	bit1 	Over-current protection 	No 				Yes
 *	bit2 	Current value 				within specs	outside specs
 *	bit3 	MPPC temperature sensor 	Disconnect 		Connect
 *	bit4 	MPPC temperature sensor 	Within specs 	Outside specs
 *	bit5 	Reserve 1
 *	bit6 	Temperature correction 		Invalid 		Effectiveness
 *	bit7-16	Reserved
 */
float getStatus(unsigned long port){
    int outLength = 8;
    int inLength = 12;
    float outData;
    char hexChar[5];
    int i;
	unsigned char cmdIn[8+5]; 	///buffer that will be used for I/O commands
	unsigned char cmdOut[12+5]; 	///buffer that will be used for I/O commands
	unsigned  char tmpBuff[4]; //used for the CRC and the data conversion

	//Construct the output message
	cmdOut[0] = 0x02;

	cmdOut[1] = 'H';
	cmdOut[2] = 'G';
	cmdOut[3] = 'S';

	cmdOut[4] = 0x03; // end

	//The two CRC bytes, compute the CRC
	computeCRC(cmdOut,outLength,tmpBuff);
	cmdOut[5] = tmpBuff[0];
	cmdOut[6] = tmpBuff[1];

	cmdOut[7] = 0x0D; //delimeter

	//Read the expected answer from the comm port
	readAnswer(cmdOut, outLength, cmdIn, inLength, port);

	//Check the CRC
	if (!checkCRC(cmdIn, inLength)){
		//In case something went wrong return an empty vector
		return -1;
	}

	hexChar[4] = 0; //needed as end of string for strtol
	//convert the corresponding value
	for ( i = 0; i< 4 ; i++) hexChar[i] = cmdIn[i+4];
	outData = (float)strtol(hexChar,0,10);

	return outData;


}






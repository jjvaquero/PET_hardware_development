/*
 * C11204PS.h
 *
 *  Created on: 25/09/2014
 *      Author: rchil
 */

#include "inc/hw_ints.h"
#include "inc/hw_memmap.h"
#include "inc/hw_types.h"
#include "driverlib/gpio.h"
#include "driverlib/pin_map.h"
#include "driverlib/sysctl.h"
#include "driverlib/uart.h"
#include <stdlib.h>

#ifndef C11204PS_H_
#define C11204PS_H_


//*****************************************************************************
//
// If building with a C++ compiler, make all of the definitions in this header
// have a C binding.
//
//*****************************************************************************
#ifdef __cplusplus
extern "C"
{
#endif


//class to be used with the hamamatsu power supply
/**** List of supported C11204 commands from Hamamatsu command reference
 *
 *	Poling 										HPO 	Get the monitor information and status
 * 	Set the temperature correction factor 		HST 	Set the temperature correction factor
 * 	Read the temperature correction factor 		HRT 	Read the temperature correction factor
 *	High voltage output OFF 					HOF 	High voltage output OFF
 * 	High voltage output ON 						HON 	High voltage output ON
 *	Switching the temp compensation mode		HCM		Switching the temperature compensation mode
 *	Power supply reset 							HRE 	Power supply reset
 * 	Temporary setting for the ref voltage 		HBV 	Temporary setting for the reference voltage
 *	Temperature acquisition MPPC 				HGT 	Temperature acquisition MPPC
 *	Get the output voltage 						HGV 	Get the output voltage
 * 	Get the output current 						HGC 	Get the output current
 * 	Get the status 								HGS 	Get the status

****///


//class C11204PS {
//public:
//	C11204PS(unsigned long portBase);

	/**
	 *  This function should be called at the peripheral configuration phase
	 *   the first step would be to check that the port is working properly
	 *
	 *   @return negative value in case of error
	 *   TODO add support for other ports, currently only UART3 will be allowed
	 */
extern	int startCommunication(unsigned long port);
extern	float* getInfoAndStatus(unsigned long port);
	int setTempCorrFact(float* tempCorrFactor);
	void setHVOn();
	void setHVOff();
	void switchTempComp();
	void pSReset();
	void setTempHV(float tempHV);
	float getMPPCTemp();
	float getOutputHV();
	float getOutputCurrent();
	float getStatus();

//	virtual ~C11204PS();

//private:
	/**
	 *  Computes the CRC
	 *  @param buffer array on which the CRC will be computed
	 *  @param length length of current array, message size is command dependant
	 *  @return computed CRC bytes, always 2 bytes
	 */
//	unsigned char* computeCRC(unsigned char* buffer, int length);

	/**
	 *  Checks the CRC
	 *  @param buffer array on which the CRC will be computed
	 *  @param length length of current array, message size is command dependant
	 *  @return true if CRC is ok
	 */
//	bool checkCRC(unsigned char* buffer, int length);

	/**
	 *  Converts a hex value stored in a char array
	 *  to its proper float value using the Hamamatsu conversion table
	 *  @param value array contaning the hexValues as chars
	 *  @param unit unit to be converted
	 *  @return the corresponding value as a float
	 */
//	float unitConv(char* value, char unit);
	/**
	 *  Converts a float value to a hex char value...Hamamatsu did it...
	 *  @param  value value to be converted
	 *  @return the convereted value
	 */
//	char* charConv(float value, char unit);

/*	unsigned long port;		/// port base register
	bool comOpen;
	unsigned char cmdIn[60]; 	///buffer that will be used for I/O commands
	unsigned char cmdOut[60]; 	///buffer that will be used for I/O commands

};*/

	//*****************************************************************************
	//
	// Mark the end of the C bindings section for C++ compilers.
	//
	//*****************************************************************************
	#ifdef __cplusplus
	}
	#endif

#endif /* C11204PS_H_ */

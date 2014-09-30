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

	/**
	 *  This function should be called at the peripheral configuration phase
	 *   the first step would be to check that the port is working properly
	 *
	 *   @return negative value in case of error
	 *   TODO add support for other ports, currently only UART3 will be allowed
	 */
extern	int startCommunication(unsigned long port);
extern int getInfoAndStatus(unsigned long port, float outData[]);
extern int setTempCorrFact(unsigned long port, float tempCorrFactor[]);
extern int setHVOn(unsigned long port);
extern int setHVOff(unsigned long port);
extern int switchTempComp(unsigned long port, tBoolean status);
extern int pSReset(unsigned long port);
extern int setTempHV(unsigned long port, float tempHV);
extern float getMPPCTemp(unsigned long port);
extern float getOutputHV(unsigned long port);
extern	float getOutputCurrent(unsigned long port);
extern	float getStatus(unsigned long port);

//TODO   Read the temperature correction factor


//Internal Functions
	void computeCRC(unsigned char buffer[], int length, unsigned char CRC[]);
	//TODO...the fuck with the compiler.....for some reason is not letting me put bool here....
    tBoolean checkCRC(unsigned char buffer[], int length);
	int readAnswer(unsigned char cmdOut[], int outLength, unsigned char cmdIn[], int inLength, unsigned long port);
	float unitConv(char* value, char unit);
	void charConv(float value, char unit, char outPut[]);


	//*****************************************************************************
	//
	// Mark the end of the C bindings section for C++ compilers.
	//
	//*****************************************************************************
	#ifdef __cplusplus
	}
	#endif

#endif /* C11204PS_H_ */

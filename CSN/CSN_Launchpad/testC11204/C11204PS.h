/*
 * C11204PS.h
 *
 * 		Library designed to communicate with the Hamamatsu power supply C11204
 *
 *  Created on: 02/10/2014
 *      Author: rchil
 */

#include "inc/hw_ints.h"
#include "inc/hw_memmap.h"
#include "inc/hw_types.h"
#include "driverlib/gpio.h"
#include "driverlib/pin_map.h"
#include "driverlib/sysctl.h"
#include "driverlib/uart.h"
#include "driverlib/debug.h"
//#include <inc/hw_gpio.h>
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
*/
extern	int startCommunication(unsigned long port);		//First functions to call, handles all configuration, now only supports UART3_BASE
extern int getInfoAndStatus(unsigned long port, float outData[]);  //Get the monitor information and status
extern int setTempCorrFact(unsigned long port, float tempCorrFactor[]); //Set the temperature correction factor
//For some reason...this is not working.....
// extern int getTempCorrFact(unsigned long port, float outTemp[]);	//Read the temperature correction factor
extern int readTempCorrFact(unsigned long port, float outData[]);	//Read the temperature correction factor
extern int setHVOn(unsigned long port);		//High voltage output ON
extern int setHVOff(unsigned long port);	//High voltage output OFF
extern int switchTempComp(unsigned long port, tBoolean status); //Switching the temperature compensation mode
extern int pSReset(unsigned long port);		//Power supply reset
extern int setTempHV(unsigned long port, float tempHV);		//Temporary setting for the reference voltage
extern float getMPPCTemp(unsigned long port);	//MPPC temperature acquisition
extern float getOutputHV(unsigned long port);	//Get the output voltage
extern	float getOutputCurrent(unsigned long port);		//get the Output current
extern	float getStatus(unsigned long port);		//Get the current status


//Internal Functions
void computeCRC(unsigned char buffer[], int length, unsigned char CRC[]);
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

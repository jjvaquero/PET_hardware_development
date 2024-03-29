/*
 * C11204PS.h
 *
 * 		Library designed to communicate with the Hamamatsu power supply C11204
 *
 *  Created on: 02/10/2014
 *      Author: rchil
 */

#include <stdint.h>
#include <stdbool.h>

#include "inc/hw_ints.h"
#include "inc/hw_memmap.h"
#include "inc/hw_types.h"
#include "driverlib/gpio.h"
#include "driverlib/pin_map.h"
#include "driverlib/sysctl.h"
#include "driverlib/uart.h"
#include <stdlib.h>
//library needed to use NMI pin, PD7
#include "inc/hw_gpio.h"


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


/*Just to use as a remainder....of the pins tu unlock....
 *
 *
 * For PF0:
  HWREG(GPIO_PORTF_BASE + GPIO_O_LOCK) = GPIO_LOCK_KEY;
  HWREG(GPIO_PORTF_BASE + GPIO_O_CR)   |= 0x01;

For PD7:
  HWREG(GPIO_PORTD_BASE + GPIO_O_LOCK) = GPIO_LOCK_KEY;
  HWREG(GPIO_PORTD_BASE + GPIO_O_CR)   |= 0x81;

(these lines of code are considering you use TivaWare and you have included the right headers: inc/hw_memmap.h, inc/hw_gpio.h)
 *
 */



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
extern	int startCommunication(unsigned long port);		//deprecated function, could later on be eliminated
extern void startCommunicationUART1();  //used to start UART1 peripheral
extern void startCommunicationUART2();  //used to start UART2 peripheral
extern void startCommunicationUART3();  //used to start UART3 peripheral
extern void startCommunicationUART5();  //used to start UART5 peripheral


extern int getInfoAndStatus(unsigned long port, float outData[]);  //Get the monitor information and status
extern int setTempCorrFact(unsigned long port, float tempCorrFactor[]); //Set the temperature correction factor
//For some reason...this is not working.....
// extern int getTempCorrFact(unsigned long port, float outTemp[]);	//Read the temperature correction factor
extern int readTempCorrFact(unsigned long port, float outData[]);	//Read the temperature correction factor
extern int setHVOn(unsigned long port);		//High voltage output ON
extern int setHVOff(unsigned long port);	//High voltage output OFF
extern int switchTempComp(unsigned long port, bool status); //Switching the temperature compensation mode
extern int pSReset(unsigned long port);		//Power supply reset
extern int setTempHV(unsigned long port, float tempHV);		//Temporary setting for the reference voltage
extern float getMPPCTemp(unsigned long port);	//MPPC temperature acquisition
extern float getOutputHV(unsigned long port);	//Get the output voltage
extern	float getOutputCurrent(unsigned long port);		//get the Output current
extern	float getStatus(unsigned long port);		//Get the current status


//Internal Functions
void computeCRC(unsigned char buffer[], int length, unsigned char CRC[]);
bool checkCRC(unsigned char buffer[], int length);
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

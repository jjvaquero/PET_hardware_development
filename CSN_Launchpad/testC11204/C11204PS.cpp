/*
 * C11204PS.cpp
 *
 *  Created on: 25/09/2014
 *      Author: rchil
 */

#include "C:C11204PS.h"

C11204_PS::C11204_PS(unsigned long portBase) {
	// TODO Auto-generated constructor stub
	this.portBase = portBase;
}

C11204_PS::~C11204_PS() {
	// TODO Auto-generated destructor stub
}


int C11204_PS::startCommunication(){

}
int C11204_PS::updatePort(unsigned long portBase){

}
int* C11204_PS::getInfoAndStatus(){

}
int C11204_PS::setTempCorrFact(float* tempCorrFactor){

}
void C11204_PS::setHVOn(){

}
void C11204_PS::setHVOff(){

}
void C11204_PS::switchTempComp(){

}
void C11204_PS::pSReset(){

}
void C11204_PS::setTempHV(float tempHV){

}
float C11204_PS::getMPPCTemp(){

}
float C11204_PS::getOutputHV(){

}
float C11204_PS::getOutputCurrent(){

}
float C11204_PS::getStatus(){

}


unsigned char* C11204_PS::computeCRC(unsigned char* buffer, int length){

}
bool C11204_PS::checkCRC(unsigned char* buffer, int length){

}

float C11204_PS::hexChar2float(unsigned char* hexValues){

}

unsigned char* C11204_PS::float2hexChar(float value){

}

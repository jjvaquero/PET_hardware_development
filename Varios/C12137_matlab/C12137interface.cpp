/*
 * C12137interface.cpp
 *
 *  Created on: Aug 29, 2012
 *      Author: rchil
 */
#include "C12137interface.h"



// starts communications with the device and opens the needed interface
extern int C12137_init(){

    int error;
    //connects to the device using the given vendor Id and product Id
	error = detector.openDevice();
	if (error== -1) return error;

	// sets which C12137 interface is going to be used
	error = detector.setInterface(CONTROL_INTERFACE);


	return error;

}

// reads a set of data values from the C12137
extern int C12137_read(int dataIn[]){

	//data reading and processing
	unsigned short datos[DATASIZE+HDSIZE];
	int error;
	error = detector.readSensorData(datos);

	//variables declaration
	int numEvents, adcInd;
	float temperature;

	//if the data header is not correct it means that data is not updated
	if (datos[0]!=0x5A5A){
		//old data must be discarded
		memset(dataIn,0,18); //I make sure the first values of the array are 0
		error = -1; //indicates that data have not been updated
		return error;
	}
	numEvents = datos[2]+datos[3];
	adcInd = datos[6];



	/*
	* From C12137.java from Hamamatsu
	*
		float t1 = 0.0f;
	    float v1 = 1034.0f;
	    float t2 = 50.0f;
	    float v2 = 760.0f;
	    float range = 1250.0f; // 1250mV

		value = pd[5];
		tval = (float) value * range / 65535.0f;
		Celcius[0] = t1 + ((tval - v1) * (t2 - t1)) / (v2 - v1);
	*
	*/


    //temperature calculation
	temperature = (float)datos[5] *1250.0/65535.0;
	temperature = ((temperature - 1034.0)*50.0)/(760.0-1034.0);

	//now I store the energy values
	for (int i = 0; i < numEvents; i++){
		//energy data that will be sent back to Matlab
		//dataIn[i+2] = datos[i+8];
		//change from 16 bits resolution to 12 bit resolution
		dataIn[i+2] = datos[i+8]>> 4;
	}
    //now i construct the data that i will deliver to the matlab programa
	dataIn[0] = datos[5]; //temperature...raw...conversion must be done in matlab
	dataIn[1] = numEvents;



	return error;
}




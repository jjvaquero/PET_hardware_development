/*
 * main.cpp
 *
 *  Created on: Aug 23, 2012
 *      Author: rchil
 */

#include "C12137detector.h"

//used to make sense of the data read from the device
void analyze_data(unsigned short dataIn[],unsigned int hist1[], unsigned int hist2[]){
	//variables declaration
	int numEvents, adcInd;
	float temperature;

	//if the data header is not correct there is no need to analyze it
	if (dataIn[0]!=0x5A5A){
		printf("Wrong data header, header value %d",dataIn[0]);
		return;
	}
	numEvents = dataIn[2]+dataIn[3];
	adcInd = dataIn[6];

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

	temperature = (float)dataIn[5] *1250.0/65535.0;
	temperature = ((temperature - 1034.0)*50.0)/(760.0-1034.0);

	//now I store the energy values
	int histData[numEvents];
	//printf("\n Events \n");
	for (int i = 0; i < numEvents; i++){
		//falta meter lo de los coeficientes pero...es un comienzo
		histData[i] = dataIn[i+8];
		//printf(" %d,",histData[i]);
		//here is where i save the energy data in the histograms
		int aux;
		hist1[histData[i]]++; //increment the corresponding energy value
	    aux = histData[i]>>4; //changing the number of energy channels
	    hist2[aux]++;
	}

	printf("\n Numero de Enventos: %d Temperatura: %f",numEvents,temperature);



}


int main(){

	unsigned short datos[DATASIZE+HDSIZE];
	unsigned int localHist[65535];
	unsigned int modLocalHist[4096];

	//making sure there is nothing in the arrays
	memset(modLocalHist,0,4096*4);
	memset(localHist,0,65535*4);
	//Create an object of the detector class
	C12137_detector detector;

   //open the device connection
   detector.openDevice();
   //set the usb interface
   detector.setInterface(CONTROL_INTERFACE);
   //reading eeprom info
   detector.readEepromData();


   for (int i =0; i< 500 ; i++){
	   detector.readSensorData(datos);
	   analyze_data(datos,localHist,modLocalHist);
   }

   printf("\n Histograma \n");
   for (int i = 0; i < 4096; i++){
	   printf(" %d, ",modLocalHist[i]);
   }
   printf("\n ");
	return 0;


}











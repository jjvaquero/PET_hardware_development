/****************************************************************************  
 *
 *    ****                              *                                    
 *   ******                            ***                                   
 *   *******                           ****                                  
 *   ********    ****  ****     **** *********    ******* ****    ***********
 *   *********   ****  ****     **** *********  **************  *************
 *   **** *****  ****  ****     ****   ****    *****    ****** *****     ****
 *   ****  ***** ****  ****     ****   ****   *****      ****  ****      ****
 *  ****    *********  ****     ****   ****   ****       ****  ****      ****
 *  ****     ********  ****    *****  ****    *****     *****  ****      ****
 *  ****      ******   ***** ******   *****    ****** *******  ****** *******
 *  ****        ****   ************    ******   *************   *************
 *  ****         ***     ****  ****     ****      *****  ****     *****  ****
 *                                                                       ****
 *          I N N O V A T I O N  T O D A Y  F O R  T O M O R R O W       ****
 *                                                                        ***      
 *
 ************************************************************************//**
 *
 * @file      adp_mi125_record_test.c
 * 
 * @brief     MI125 RTDEx example.
 *
 * Copyright (C) 2014, Nutaq, Canada. All rights reserved.
 *
 * This file is part of Nutaq’s ADP Software Suite.
 *
 * You may at your option receive a license to Nutaq’s ADP Software Suite under 
 * either the terms of the GNU General Public License (GPL) or the 
 * Nutaq Professional License, as explained in the note below.
 *
 * Nutaq’s ADP Software Suite may be used under the terms of the GNU General 
 * Public License version 3 as published by the Free Software Foundation 
 * and appearing in the file LICENSE.GPL included in the packaging of this file.
 *
 * Nutaq’s ADP Software Suite is provided AS IS WITHOUT WARRANTY OF 
 * ANY KIND; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A 
 * PARTICULAR PURPOSE. See the GNU General Public License for more details.
 *
 * NOTE:
 *
 * Using Nutaq’s ADP Software Suite under the GPL requires that your work based on 
 * Nutaq’s ADP Software Suite, if  distributed, must be licensed under the GPL. 
 * If you wish to distribute a work based on Nutaq’s ADP Software Suite but desire 
 * to license it under your own terms, e.g. a closed source license, you may purchase 
 * a Nutaq Professional License.
 *
 * The Professional License, gives you -- under certain conditions -- the right to
 * use any license you wish for your work based on Nutaq’s ADP Software Suite. 
 * For the full terms of the Professional License, please contact the Nutaq sales team.
 *
 ****************************************************************************/
#include <stdio.h>
#include <string.h>

#ifdef __linux__
#include <stdlib.h>
#include <Nutaq/memory_map.h>
#include <Nutaq/adp_types.h>
#include <Nutaq/adp_media_types.h>
#include <Nutaq/eapi.h>
#include <Nutaq/adp_buff_fct.h>
#include <Nutaq/adp_bus_access_media_types.h>
#include <Nutaq/adp_bus_access_types.h>
#include <Nutaq/adp_bus_access.h>
#include <Nutaq/adp_rtdex_types.h>
#include <Nutaq/adp_rtdex_eth_types.h>
#include <Nutaq/adp_rtdex_media.h>
#include <Nutaq/adp_rtdex_access.h>
#include <Nutaq/adp_rtdex.h>
#include <Nutaq/adp_rtdex_eth.h>
#include <Nutaq/adp_recplay_types.h>
#include <Nutaq/adp_recplay.h>
#include <Nutaq/mac_utils.h>
#include <Nutaq/linux_utils.h>
#include <Nutaq/media_utils.h>
#include <Nutaq/adp_record_playback.h>
#include <Nutaq/lyr_error.h>
#include <mi125_settings.h>
#else
#include <conio.h>
#include "memory_map.h"
#include "adp_types.h"
#include "adp_media_types.h"
#include "eapi.h"
#include "adp_buff_fct.h"
#include "adp_bus_access_media_types.h"
#include "adp_bus_access_types.h"
#include "adp_bus_access.h"
#include "adp_rtdex_types.h"
#include "adp_rtdex_eth_types.h"
#include "adp_rtdex_media.h"
#include "adp_rtdex_access.h"
#include "adp_rtdex.h"
#include "adp_rtdex_eth.h"
#include "adp_recplay_types.h"
#include "adp_recplay.h"
#include "mi125_settings.h"
#include "mac_utils.h"
#include "adp_record_playback.h"
#include "lyr_error.h"
#include "media_utils.h"
#endif

//TODO libraries needed for the name fix...remove afterwards
#include <string.h>
#include <time.h>

// WARNING: to run this demo under LINUX, you may need root privilege


// Internal demo version
#define MYVERSION "V0.70"

/***************************************************
*  Defines for easy command line arguments access
***************************************************/
#define Channels argv[1]
#define TrigSource argv[2]
#define RecordFileName argv[3]
#define IpAddress argv[4]
#define ClkSrc argv[5]
#define CAPTURED_SAMPLES_PER_CHANNEL atoi(argv[6])
#define PulseFileName argv[7]
#define ThresholdValue atoi(argv[8])
#define NumRep atoi(argv[9])

/***************************************************
*  Record defines
***************************************************/
#define FRAMESIZE 1024
#define FRAMEGAP 0
#define RTDEX_CHANNEL 0

/***************************************************
*  adp handles
***************************************************/
adp_handle_bus_access hBusAccess = NULL;
adp_handle_recplay hRecPlay = NULL;
connection_state state;


int Test_Terminate(void)
{
	int res;
	eMediaType eMedia;
    // detect media
    res = DetectMedia(hBusAccess, &eMedia);
    if (res)
    {
        printf( "Unable to determine the RTDEx Media\n\n");
    }
    // Close all Record handles
    if(hRecPlay != NULL)
    {
        RecPlay_Close(hRecPlay);
    }

 	// Close all hBusAccess handles
	if(hBusAccess != NULL)
    {
        BusAccess_Ethernet_Close(hBusAccess);
    }
    return 0;
}

/****
*	Here I should add a check for data type and some way of knowing the channel configuration
*	for now it will only work with 4 channels and int16 values....so...yeaahhh!!!
*    
*   
*
*****/
void findPulses(char* inputFileName, char* outputFileName, int thresholdValue,int nChannels){
	int dataSize = 100000;
	//short *buffIn, *buffOut;
	short buffIn[100000];
	short buffOut[100000];
	int fileSize;
	int i,j;
	int result;
	int rdIndex;
	int wrIndex;
	int recordSize = 50;
	int nEvents =0;
	int trigEvt = 0;

	//lectura de los primeros chorrocientos caracteres
	/*buffIn = (short*) malloc (dataSize);
	buffOut = (short*) malloc (dataSize);
	*/

	FILE * wrFile, *rdFile;

	wrFile = fopen (outputFileName, "ab");
	rdFile = fopen(inputFileName,"rb");
	//get the size of the current rdFile to know how many times i will read on it
	fseek(rdFile, 0L, SEEK_END);
    fileSize = ftell(rdFile);
	fseek(rdFile, 0L, SEEK_SET);
	//I will run this N times to read all the data
	nEvents=0;
	for (i = 0; i<fileSize/(dataSize*2); i++){
		//in fread the size of the values to read is specified in bytes....so the second argument should be 2
		 result = fread (buffIn,sizeof(short),dataSize,rdFile);
		 //read on the values until i can find the value that i want
		 rdIndex = 0;
		 wrIndex =0;
		 while( rdIndex < result-(nChannels*recordSize)){ //nChannels*recordSize to throw away the last event
			 //for loop to check if a trigger happpened on all the 16 channels
			 for (j = 0; j<nChannels; j++){
				 if ((buffIn[rdIndex+j] > thresholdValue) || (buffIn[rdIndex+j] < (thresholdValue*-1))){
					 trigEvt = 1;
				 }
			 }
			 
			 // If I detect and event in any of the channels, I will record all channels
			 if (trigEvt > 0 ){
				 //check that I am not at the beggining
				 //TODO mejorar esto				
				 if (rdIndex > recordSize/2){  //wait to be at least in the first trigger
					 //size in memcpy is specified in bytes
					 memcpy (&buffOut[wrIndex], &buffIn[rdIndex-(recordSize/2)*nChannels], (recordSize+recordSize/2)*sizeof(short)*nChannels);
					 // these are short arrays, so no *sizeof(short) needed
					 wrIndex+=(recordSize+recordSize/2)*nChannels; //both the previous and the past part have been saved
					 rdIndex+=(recordSize+recordSize/2)*nChannels;  
					 nEvents++; //number of events
				 }
				 // make sure i finish the file
				 else{
					 rdIndex+=nChannels;
				 }
			 }
			 else{
				 rdIndex+=nChannels;
			 }
			 trigEvt = 0;

		}
		//now i can store the data for the read values and prepare for a new run
		// maxEvt = 1 MeVt/s   -- fsample = 125 Mhz... so the maximum event rate
		// in bytes is ---> fileSize/(32*125)
		// this check is needed to detect some measurements in which data seems to be repeated
		if(nEvents > 0) {// && nEvents < result/(16*125*10)) {  // *10 added to check for less events
			fwrite (buffOut , sizeof(short), wrIndex, wrFile);	 
		}
	}
	//finally I close both files
	fclose (rdFile);
	fclose (wrFile);
	//in case this is not noisy data I can now delete the file
	if (nEvents < fileSize/(32*125*10)){
		remove(inputFileName);
	}
	
}

int main( int argc, char* argv[] )
{
	adp_result_t res;
	unsigned int uAddrTrig;
	unsigned char uTrigOffset;
	unsigned int uRecordSize;
	eMediaType eMedia;
	unsigned int i,channelc, trigsourcec, clocksource;
	// TODO remove this when done testing
	char strDigit[10];
	char fName[256];  //espero que sea lo bastante grande....
	clock_t begin_time;

	// Initialize eapi before use 
	res = eapi_init();
	if( res != 0 )
	{
		printf( ErrorToString(res) );
		printf( "\n" );
		printf( "Error initializing eapi.\n"
                " The program will terminate. Push any key to continue\n" );
		GETCH();
		return -1;
	}

	// Check for correct command line parameters
	if( argc != 10 )
	{
		printf( "Error: Wrong number of parameters\n"
		        "Parameters 1: the channels config used (1:16 bottom,\n"
		        "              2:16 top, 3:32 with downsampling).\n"
			    "Parameters 2: trigger source (0: soft, 1: external trig).\n"
		        "Parameters 3: the Record data file (write only).\n"
		        "Parameters 4: the FPGA ip address, ex 192.168.0.1\n"
			    "Parameters 5: clk source (0: int, 1: external clk).\n"
			    "Parameters 6: record size in number of samples per channel.\n"
                " The program will terminate. Push any key to continue\n");
		GETCH();
		return -1;
	}

	// Extract the channels config
	channelc = atoi(Channels);

	if (channelc <1 || channelc>3)
	{
		printf( "Error: Wrong channels config parameter (different 1,2 or 3)\n"
                " The program will terminate. Push any key to continue\n" );
		GETCH();
		return -1;
	}

	// Extract the trig source
	trigsourcec = atoi(TrigSource);

	if (trigsourcec !=0 && trigsourcec != 1)
	{
		printf( "Error: Wrong trigger source config parameter (different 0, 1)\n"
                " The program will terminate. Push any key to continue\n" );
        GETCH();
        return -1;
	}

	// Extract the clk source
	clocksource = atoi(ClkSrc);

	if (clocksource !=0 && clocksource != 1)
	{
        printf( "Error: Wrong clock source config parameter (different 0, 1)\n"
                " The program will terminate. Push any key to continue\n" );
		GETCH();
        return -1;
	}

	printf( "MI125 Record demo %s is started.\n\n", MYVERSION);
	printf( "Connecting to Perseus %s\n",IpAddress);

	res  = BusAccess_Ethernet_OpenWithoutConnection(&hBusAccess, (int8_t *)IpAddress, 0);
	if( FAILURE(res) ) 
	{
		printf( "The Perseus is not responding.\n" );
		printf( ErrorToString(res) );
		printf( "\nPlease ensure the Perseus IP address you specified (%s) is correct.\n\n", IpAddress );
		printf( "The program will terminate. Push any key to continue\n" );
		GETCH();
		return res;
	}
   
	res = BusAccess_GetConnectionState( hBusAccess, &state);
	if( FAILURE(res) )
    {
		printf( "Error: Could not retrieve connection state\r\n");
		printf( ErrorToString(res) );
		printf( "\nThe program will terminate. Push any key to continue\n" );
		GETCH();
		Test_Terminate();
		return res;
    }

	// detect media
    res = DetectMedia(hBusAccess, &eMedia);
    if( res )
    {
		printf( ErrorToString(res) );
        printf( "\nThe program will terminate. Push any key to continue\n" );
        GETCH();
        Test_Terminate();
        return res;
    }

    if(eMedia == eMediaEth)
    {
        printf( "RTDEx Media is Gigabit Ethernet\n"  );
    }
    else
    {
        printf( "Unsupported RTDEx Media.\n" );
        Test_Terminate();
        return res;
    }

	res = RTDExResetCoreEth(hBusAccess,module_rtdex_eth_base);
	if( FAILURE(res) )
	{
		printf( ErrorToString(res) );
		printf( "\nThe program will terminate. Push any key to continue\n" );
		GETCH();
		Test_Terminate();
		return res;
	}
   
	if (clocksource == 0)
		printf( "Using internal bottom 125MHz clock source\n\n");
	else
		printf( "Using external bottom clock source\n\n");

	// Initialized all needed mi125 boards to capture
	for (i=1; i <= (1 + (unsigned int)(channelc > 1)); i++)
	{
		res = InitMi125( hBusAccess,  i, clocksource);
		if( FAILURE(res) )
		{
			printf( ErrorToString(res) );
			printf( "\nThe program will terminate. Push any key to continue\n" );
			GETCH();
			Test_Terminate();
			return res;
		}
	}

	// Display capture mode
	switch(channelc)
	{
		case 1:
			printf( "Recording bottom board 16 channels...\n");
			break;

		case 2:
			printf( "Recording top board 16 channels...\n");
			break;

		case 3:
			printf( "Recording bottom and top boards 32 channels (with decimation by 2)...\n");
			break;
	}

	// Set the MI125 Mux to send the correct channels to the record core.
	res = custom_register_write_send(&state, 0, (channelc - 1) );
	if( FAILURE(res) )
	{
		printf( ErrorToString(res) );
		printf( "\nThe program will terminate. Push any key to continue\n" );
		GETCH();
		Test_Terminate();
		return res;
	}

	// Set mi125 to expected trigger mode (soft or external).
	res = custom_register_write_send(&state, 1, trigsourcec );
	if( FAILURE(res) )
	{
		printf( ErrorToString(res) );
		printf( "\nThe program will terminate. Push any key to continue\n" );
		GETCH();
		Test_Terminate();
		return res;
	}

	// Reset mi125 soft trig to default.
	res = custom_register_write_send(&state, 2, 0 );
	if( FAILURE(res) )
	{
		printf( ErrorToString(res) );
		printf( "\nThe program will terminate. Push any key to continue\n" );
		GETCH();
		Test_Terminate();
		return res;
	}

	// RecPlay
	res = RecPlay_Open( &hRecPlay, hBusAccess, module_rec_play_base );
	if( FAILURE(res) )
	{
		printf( ErrorToString(res) );
		printf( "\nThe program will terminate. Push any key to continue\n" );
		GETCH();
		Test_Terminate();
		return res;
	}

	// Setup record transfer
	//TODO cambiado paa ver si asi lee solo cuatro canales
	//uRecordSize = CAPTURED_SAMPLES_PER_CHANNEL * 16 * 2;
	uRecordSize = CAPTURED_SAMPLES_PER_CHANNEL * 4 * 2;
	res = SetupRecord(hRecPlay, uRecordSize, eRecPlayTrigExternal, 0, 0, FRAMESIZE);
	if( FAILURE(res) )
	{
		printf( ErrorToString(res) );
		printf( "\nThe program will terminate. Push any key to continue\n" );
		GETCH();
		Test_Terminate();
		return res;
	}


	 //TODO 

	//add some of the processing in this part to the data acquired...guess the data is stored somewhere by using getch
	for (i = 0; i < NumRep ; i++) //added a loop to see if it will work...or not...
	{
			res = SetupRecord(hRecPlay, uRecordSize, eRecPlayTrigExternal, 0, 0, FRAMESIZE);
			if( FAILURE(res) )
			{
				printf( ErrorToString(res) );
				printf( "\nThe program will terminate. Push any key to continue\n" );
				GETCH();
				Test_Terminate();
				return res;
			}

		printf( "Recording %d samples per channel\n",CAPTURED_SAMPLES_PER_CHANNEL);
		// Is this soft trig mode
		if (trigsourcec == 0)
		{
			printf("Applying software trigger\r\n");
			// Generate a mi125 soft trig
			res = custom_register_write_send(&state, 2, 1 );
			if( res ) 
			{
				printf( ErrorToString(res) );
				printf( "\nThe program will terminate. Push any key to continue\n" );
				GETCH();
				Test_Terminate();
				return res;
			}

			// Reset mi125 soft trig
			res = custom_register_write_send(&state, 2, 0 );
			if( res ) 
			{
				printf( ErrorToString(res) );
				printf( "\nThe program will terminate. Push any key to continue\n" );
				GETCH();
				Test_Terminate();
				return res;
			}
		}

		// Verifying record transfer success and retrieving trigger address
		res = VerifyRecord(hRecPlay, &uAddrTrig, &uTrigOffset);
		if( FAILURE(res) )
		{
			printf( ErrorToString(res) );
			printf( "\nThe program will terminate. Push any key to continue\n" );
			GETCH();
			Test_Terminate();
			return res;
		}

		printf( "\nRetrieving recorded data\n");

		// Retrieve data from memory
		//esta es la funcion que almacena los datos leidos en un archivo

		//TODO change this to return it back to how it was
		// res = RetrieveRecordedDataToFile(eMedia, hBusAccess, hRecPlay,  RTDEX_CHANNEL, uAddrTrig, uTrigOffset, FRAMESIZE, uRecordSize, FRAMEGAP, RecordFileName);
		sprintf(strDigit, "%05d", i);
		strcpy(fName,RecordFileName);
		strcat(fName,strDigit);

		//to measure time
		begin_time = clock();
		res = RetrieveRecordedDataToFile(eMedia, hBusAccess, hRecPlay,  RTDEX_CHANNEL, uAddrTrig, uTrigOffset, FRAMESIZE, uRecordSize, FRAMEGAP,fName); // RecordFileName);
		printf("Time diff %f \n" ,((float)(clock () - begin_time) /CLOCKS_PER_SEC));
		//TODO end of the changes

		if( res )
		{
			printf( ErrorToString(res) );
			printf( "\nThe program will terminate. Push any key to continue\n" );
			GETCH();
			Test_Terminate();
			return res;
		}
		printf( "%d bytes were saved to %s.\n\n", uRecordSize , RecordFileName);
	/*	printf( "Press any key to terminate");
		GETCH();
		Test_Terminate();
		*/
		//TODO here is where I should add my own code to test the signal processing stufff
		//findPulses(RecordFileName, PulseFileName, ThresholdValue,16);
		findPulses(fName, PulseFileName, ThresholdValue,4);
	}
		printf( "Press any key to terminate");
		GETCH();
		Test_Terminate();


}

//*****************************************************************************
//
// usb_bulk_structs.c - Data structures defining this bulk USB device.
//
// Copyright (c) 2012 Texas Instruments Incorporated.  All rights reserved.
// Software License Agreement
// 
// Texas Instruments (TI) is supplying this software for use solely and
// exclusively on TI's microcontroller products. The software is owned by
// TI and/or its suppliers, and is protected under applicable copyright
// laws. You may not combine this software with "viral" open-source
// software in order to form a larger program.
// 
// THIS SOFTWARE IS PROVIDED "AS IS" AND WITH ALL FAULTS.
// NO WARRANTIES, WHETHER EXPRESS, IMPLIED OR STATUTORY, INCLUDING, BUT
// NOT LIMITED TO, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
// A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE. TI SHALL NOT, UNDER ANY
// CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL, OR CONSEQUENTIAL
// DAMAGES, FOR ANY REASON WHATSOEVER.
// 
// This is part of revision 9453 of the EK-LM4F120XL Firmware Package.
//
//*****************************************************************************
#include "inc/hw_types.h"
#include "driverlib/usb.h"
#include "usblib/usblib.h"
#include "usblib/usb-ids.h"
#include "usblib/device/usbdevice.h"
#include "usblib/device/usbdbulk.h"
#include "usb_bulk_structs.h"


//*****************************************************************************
//
// The languages supported by this device.
//
//*****************************************************************************




//constants and parameter that i will use
#define USB_VID_OPENMOKO 0x1d50
#define USB_PID_DOSEMETER 0x2014 //this year...why not...

const unsigned char g_pLangDescriptor[] =
{
    4,
    USB_DTYPE_STRING,
    USBShort(USB_LANG_EN_US)
};

//*****************************************************************************
//
// The manufacturer string.
//
//*****************************************************************************
const unsigned char g_pManufacturerString[] =
{
    (17 + 1) * 2,
    USB_DTYPE_STRING,
    'T', 0, 'e', 0, 'x', 0, 'a', 0, 's', 0, ' ', 0, 'I', 0, 'n', 0, 's', 0,
    't', 0, 'r', 0, 'u', 0, 'm', 0, 'e', 0, 'n', 0, 't', 0, 's', 0,
};

//*****************************************************************************
//
// The product string.
//
//*****************************************************************************
const unsigned char g_pProductString[] =
{
    (19 + 1) * 2,
    USB_DTYPE_STRING,
    'G', 0, 'e', 0, 'n', 0, 'e', 0, 'r', 0, 'i', 0, 'c', 0, ' ', 0, 'B', 0,
    'u', 0, 'l', 0, 'k', 0, ' ', 0, 'D', 0, 'e', 0, 'v', 0, 'i', 0, 'c', 0,
    'e', 0
};

//*****************************************************************************
//
// The serial number string.
//
//*****************************************************************************
const unsigned char g_pSerialNumberString[] =
{
    (8 + 1) * 2,
    USB_DTYPE_STRING,
    '1', 0, '2', 0, '3', 0, '4', 0, '5', 0, '6', 0, '7', 0, '8', 0
};

//*****************************************************************************
//
// The data interface description string.
//
//*****************************************************************************
const unsigned char g_pDataInterfaceString[] =
{
    (19 + 1) * 2,
    USB_DTYPE_STRING,
    'B', 0, 'u', 0, 'l', 0, 'k', 0, ' ', 0, 'D', 0, 'a', 0, 't', 0,
    'a', 0, ' ', 0, 'I', 0, 'n', 0, 't', 0, 'e', 0, 'r', 0, 'f', 0,
    'a', 0, 'c', 0, 'e', 0
};

//*****************************************************************************
//
// The configuration description string.
//
//*****************************************************************************
const unsigned char g_pConfigString[] =
{
    (23 + 1) * 2,
    USB_DTYPE_STRING,
    'B', 0, 'u', 0, 'l', 0, 'k', 0, ' ', 0, 'D', 0, 'a', 0, 't', 0,
    'a', 0, ' ', 0, 'C', 0, 'o', 0, 'n', 0, 'f', 0, 'i', 0, 'g', 0,
    'u', 0, 'r', 0, 'a', 0, 't', 0, 'i', 0, 'o', 0, 'n', 0
};

//*****************************************************************************
//
// The descriptor string table.
//
//*****************************************************************************
const unsigned char * const g_pStringDescriptors[] =
{
    g_pLangDescriptor,
    g_pManufacturerString,
    g_pProductString,
    g_pSerialNumberString,
    g_pDataInterfaceString,
    g_pConfigString
};

#define NUM_STRING_DESCRIPTORS (sizeof(g_pStringDescriptors) /                \
                                sizeof(unsigned char *))

//*****************************************************************************
//
// The bulk device initialization and customization structures. In this case,
// we are using USBBuffers between the bulk device class driver and the
// application code. The function pointers and callback data values are set
// to insert a buffer in each of the data channels, transmit and receive.
//
// With the buffer in place, the bulk channel callback is set to the relevant
// channel function and the callback data is set to point to the channel
// instance data. The buffer, in turn, has its callback set to the application
// function and the callback data set to our bulk instance structure.
//
//*****************************************************************************
tBulkInstance g_sBulkInstance;
tBoolean writeData = false;
unsigned char sendData[64];
unsigned long sentIndex = 0;
unsigned long datRemain = 0;

extern const tUSBBuffer g_sTxBuffer;
unsigned char txBuffer[64];
unsigned char rxBuffer[64];
extern const tUSBBuffer g_sRxBuffer;

unsigned long ulTxCount;
unsigned long ulRxCount;
unsigned long g_ulTxCount;
unsigned long g_ulRxCount;


static volatile tBoolean g_bUSBConfigured = false;

const tUSBDBulkDevice g_sBulkDevice =
{
	USB_VID_OPENMOKO, //USB_VID_STELLARIS,  //
    USB_PID_DOSEMETER,     //USB_PID_BULK,   //
    200,
    USB_CONF_ATTR_SELF_PWR,
    RxHandler, //USBBufferEventCallback,
    rxBuffer, //(void *)&g_sRxBuffer,
    TxHandler, //,
    txBuffer, //(void *)&g_sTxBuffer,
    g_pStringDescriptors,
    NUM_STRING_DESCRIPTORS,
    &g_sBulkInstance
};

//*****************************************************************************
//
// Receive buffer (from the USB perspective).
//
//*****************************************************************************
unsigned char g_pucUSBRxBuffer[BULK_BUFFER_SIZE];
unsigned char g_pucRxBufferWorkspace[USB_BUFFER_WORKSPACE_SIZE];
const tUSBBuffer g_sRxBuffer =
{
    false,                           // This is a receive buffer.
    RxHandler,                       // pfnCallback
    (void *)&g_sBulkDevice,          // Callback data is our device pointer.
    USBDBulkPacketRead,              // pfnTransfer
    USBDBulkRxPacketAvailable,       // pfnAvailable
    (void *)&g_sBulkDevice,          // pvHandle
    g_pucUSBRxBuffer,                // pcBuffer
    BULK_BUFFER_SIZE,                // ulBufferSize
    g_pucRxBufferWorkspace           // pvWorkspace
};

//*****************************************************************************
//
// Transmit buffer (from the USB perspective).
//
//*****************************************************************************
//TODO modificado para usarlo con nuestro buffer
unsigned char g_pucUSBTxBuffer[BULK_OUT_BUFFER_SIZE];
unsigned char g_pucTxBufferWorkspace[USB_BUFFER_WORKSPACE_SIZE];
const tUSBBuffer g_sTxBuffer =
{
    true,                            // This is a transmit buffer.
    TxHandler,                       // pfnCallback
    (void *)&g_sBulkDevice,          // Callback data is our device pointer.
    USBDBulkPacketWrite,             // pfnTransfer
    USBDBulkTxPacketAvailable,       // pfnAvailable
    (void *)&g_sBulkDevice,          // pvHandle
    g_pucUSBTxBuffer,                // pcBuffer
    BULK_BUFFER_SIZE,                // ulBufferSize
    g_pucTxBufferWorkspace           // pvWorkspace
};








/****
 *
 *
 *
 *
 *
 * */

static unsigned long sendHist();

/*****************************************************************************
//
// Receive new data and echo it back to the host.
//
// \param psDevice points to the instance data for the device whose data is to
// be processed.
// \param pcData points to the newly received data in the USB receive buffer.
// \param ulNumBytes is the number of bytes of data available to be processed.
//
// This function is called whenever we receive a notification that data is
// available from the host. We read the data, byte-by-byte and swap the case
// of any alphabetical characters found then write it back out to be
// transmitted back to the host.
//
// \return Returns the number of bytes of data processed.
//
 *
 * *****************************
 *
 *
 */
static unsigned long
EchoNewDataToHost(tUSBDBulkDevice *psDevice, unsigned char *pcData,
                  unsigned long ulNumBytes)
{
    unsigned long ulLoop, ulSpace, ulCount;
    unsigned long ulReadIndex;
    unsigned long ulWriteIndex;
    tUSBRingBufObject sTxRing;

    //
    // Get the current buffer information to allow us to write directly to
    // the transmit buffer (we already have enough information from the
    // parameters to access the receive buffer directly).
    //
    USBBufferInfoGet(&g_sTxBuffer, &sTxRing);

    //
    // How much space is there in the transmit buffer?
    //
    ulSpace = USBBufferSpaceAvailable(&g_sTxBuffer);

    //
    // How many characters can we process this time round?
    //
    ulLoop = (ulSpace < ulNumBytes) ? ulSpace : ulNumBytes;
    ulCount = ulLoop;


    //
    // Update our receive counter.
    //
    g_ulRxCount += ulNumBytes;

    //
    // Dump a debug message.
    //

    //
    // Set up to process the characters by directly accessing the USB buffers.
    //
    ulReadIndex = (unsigned long)(pcData - g_pucUSBRxBuffer);
    ulWriteIndex = sTxRing.ulWriteIndex;

    while(ulLoop)
    {
        //
        // Copy from the receive buffer to the transmit buffer converting
        // character case on the way.
        //

        //
        // Is this a lower case character?
        //
        if((g_pucUSBRxBuffer[ulReadIndex] >= 'a') &&
           (g_pucUSBRxBuffer[ulReadIndex] <= 'z'))
        {
            //
            // Convert to upper case and write to the transmit buffer.
            //
            g_pucUSBTxBuffer[ulWriteIndex] =
                (g_pucUSBRxBuffer[ulReadIndex] - 'a') + 'A';
        }
        else
        {
            //
            // Is this an upper case character?
            //
            if((g_pucUSBRxBuffer[ulReadIndex] >= 'A') &&
               (g_pucUSBRxBuffer[ulReadIndex] <= 'Z'))
            {
                //
                // Convert to lower case and write to the transmit buffer.
                //
                g_pucUSBTxBuffer[ulWriteIndex] =
                    (g_pucUSBRxBuffer[ulReadIndex] - 'Z') + 'z';
            }
            else
            {
                //
                // Copy the received character to the transmit buffer.
                //
                g_pucUSBTxBuffer[ulWriteIndex] = g_pucUSBRxBuffer[ulReadIndex];
            }
        }

        //
        // Move to the next character taking care to adjust the pointer for
        // the buffer wrap if necessary.
        //
        ulWriteIndex++;
        ulWriteIndex = (ulWriteIndex == BULK_BUFFER_SIZE) ? 0 : ulWriteIndex;

        ulReadIndex++;
        ulReadIndex = (ulReadIndex == BULK_BUFFER_SIZE) ? 0 : ulReadIndex;

        ulLoop--;
    }

    //
    // We've processed the data in place so now send the processed data
    // back to the host.
    //
    USBBufferDataWritten(&g_sTxBuffer, ulCount);

    //
    // We processed as much data as we can directly from the receive buffer so
    // we need to return the number of bytes to allow the lower layer to
    // update its read pointer appropriately.
    //
    return(ulCount);
}


//Funcion propia para el envio del array a traves del USB

//TODO descomentar lo de abajo al poner sendBuffer en otro sitio
sendBuffer histBuff;
static unsigned long
SendHistDataToHost(tUSBDBulkDevice *psDevice, unsigned char *pcData,
                  unsigned long ulNumBytes){
    unsigned long ulLoop, ulSpace, ulCount;
    unsigned long ulReadIndex;
    unsigned long ulWriteIndex;
    unsigned char readData[64];
    tUSBRingBufObject sTxRing;


  //TODO luego quito esto
	int i; //aux var


	//
	// Get the current buffer information to allow us to write directly to
	// the transmit buffer (we already have enough information from the
	// parameters to access the receive buffer directly).
	//
	//USBBufferInfoGet(&g_sTxBuffer, &sTxRing);

	//
	// How much space is there in the transmit buffer?
	//
	/*
	ulSpace = USBBufferSpaceAvailable(&g_sTxBuffer);

	//
	// How many characters can we process this time round?
	//
	//ulLoop = (ulSpace < ulNumBytes) ? ulSpace : ulNumBytes;
	ulLoop = (ulSpace < 100) ? ulSpace : 100;
	ulCount = ulLoop;
	*/
	//while( USBBufferSpaceAvailable(&g_sTxBuffer)<99) {} //wait for the buffer to be free
	//ulCount = 100;
	//ulLoop = 100;
	//
	// Update our receive counter.
	//
	//g_ulRxCount += ulNumBytes;

	//
	// Dump a debug message.
	//

	//
	// Set up to process the characters by directly accessing the USB buffers.
	//
	//ulReadIndex = (unsigned long)(pcData - g_pucUSBRxBuffer);
	//ulWriteIndex = sTxRing.ulWriteIndex;
	//ulWriteIndex = 0;

	ulCount= USBDBulkPacketRead((void *)&g_sBulkDevice,readData,10,true);
	ulReadIndex = 0;
	ulWriteIndex = 0;


    //now i should read the first 5 characters
	//and check that they are what i want
	 /*if(g_pucUSBRxBuffer[ulReadIndex] == 'D' && g_pucUSBRxBuffer[ulReadIndex+1] == 'A' &&
			 g_pucUSBRxBuffer[ulReadIndex+2] == 'T' && g_pucUSBRxBuffer[ulReadIndex+3] == 'A' &&
			 g_pucUSBRxBuffer[ulReadIndex+4] == '?')
			 */
	 if(readData[ulReadIndex] == 'D' && readData[ulReadIndex+1] == 'A' &&
			 readData[ulReadIndex+2] == 'T' && readData[ulReadIndex+3] == 'A' &&
			 readData[ulReadIndex+4] == '?')
	 {
		 //Now i will send the
		 //for (i = 0; i < 4096*2-ulWriteIndex; i++){
	    for (i = ulWriteIndex; i < 100; i++){

			 sendData[i] = '0'+i; //histBuff.histCharBuff[i];
		 }
	    ulCount = 64;
	 }else{
		   for (i = ulWriteIndex; i < ulCount; i++){

					 sendData[i] = readData[ulReadIndex]; //histBuff.histCharBuff[i];
				 }
	 }


	// USBBufferDataWritten(&g_sTxBuffer, ulCount);
	 //USBDBulkPacketWrite((void *)&g_sBulkDevice,sendData,ulCount,true);
	// while( USBDBulkTxPacketAvailable((void *)&g_sBulkDevice)<34)
	// USBDBulkPacketWrite((void *)&g_sBulkDevice,sendData[2],34,false);

	 /*for (i = 0 ; i < 4096; i++){
			histBuff.histTemp[i] = i;
	 }*/
	 datRemain = 8192;
	 sentIndex = 0;
	 sendHist();
	// writeData = true;



	   //
	  // We processed as much data as we can directly from the receive buffer so
	  // we need to return the number of bytes to allow the lower layer to
	  // update its read pointer appropriately.
	 //
	 return(ulCount);

}

static unsigned long
 sendHist(){
    int i;

    if(datRemain > 63 && sentIndex < (8192-63)){
		for (i = 0; i < 64; i++){

			sendData[i] = histBuff.histCharBuff[i+sentIndex]; //'A'+i;
		}
		USBDBulkPacketWrite((void *)&g_sBulkDevice,sendData,64,true);
		sentIndex+=64;
		datRemain-=64;
		writeData = true;
		if (datRemain == 0 || sentIndex == 8192) { writeData = false;}
    }
    else if( datRemain > 0 && sentIndex < 8192){
    	for (i = 0; i < datRemain-1; i++){

    				sendData[i] = 'A'+i;  //histBuff.histCharBuff[i+sentIndex];
    			}
    			USBDBulkPacketWrite((void *)&g_sBulkDevice,sendData,datRemain,true);
    			sentIndex= 8192;
    			datRemain= 0;
    			writeData = false;

    }
    return 64;

}

static unsigned long
 sendRest(unsigned char *pcData,
         unsigned long ulNumBytes){
    int i;

    for (i = 0; i < 64; i++){

		 sendData[i] = 'A'+i; //histBuff.histCharBuff[i];
	 }

	 USBDBulkPacketWrite((void *)&g_sBulkDevice,sendData,ulNumBytes,true);
	 writeData = false;

	 return 64;

}

//*****************************************************************************
//
// Handles bulk driver notifications related to the transmit channel (data to
// the USB host).
//
// \param pvCBData is the client-supplied callback pointer for this channel.
// \param ulEvent identifies the event we are being notified about.
// \param ulMsgValue is an event-specific value.
// \param pvMsgData is an event-specific pointer.
//
// This function is called by the bulk driver to notify us of any events
// related to operation of the transmit data channel (the IN channel carrying
// data to the USB host).
//
// \return The return value is event-specific.
//
//*****************************************************************************
unsigned long
TxHandler(void *pvCBData, unsigned long ulEvent, unsigned long ulMsgValue,
          void *pvMsgData)
{
    //
    // We are not required to do anything in response to any transmit event
    // in this example. All we do is update our transmit counter.
    //
    if(ulEvent == USB_EVENT_TX_COMPLETE)
    {
    	if (writeData == true) {
    		//sendRest(sendData[2],36);
    		sendHist();
    	}
       g_ulTxCount += ulMsgValue;

    }

    //
    // Dump a debug message.
    //

    return(0);
}

//*****************************************************************************
//
// Handles bulk driver notifications related to the receive channel (data from
// the USB host).
//
// \param pvCBData is the client-supplied callback pointer for this channel.
// \param ulEvent identifies the event we are being notified about.
// \param ulMsgValue is an event-specific value.
// \param pvMsgData is an event-specific pointer.
//
// This function is called by the bulk driver to notify us of any events
// related to operation of the receive data channel (the OUT channel carrying
// data from the USB host).
//
// \return The return value is event-specific.
//
//*****************************************************************************
unsigned long
RxHandler(void *pvCBData, unsigned long ulEvent,
               unsigned long ulMsgValue, void *pvMsgData)
{
    //
    // Which event are we being sent?
    //
    switch(ulEvent)
    {
        //
        // We are connected to a host and communication is now possible.
        //
        case USB_EVENT_CONNECTED:
        {
            g_bUSBConfigured = true;

            //
            // Flush our buffers.
            //
            USBBufferFlush(&g_sTxBuffer);
            USBBufferFlush(&g_sRxBuffer);

            break;
        }

        //
        // The host has disconnected.
        //
        case USB_EVENT_DISCONNECTED:
        {
            g_bUSBConfigured = false;
            break;
        }

        //
        // A new packet has been received.
        //
        case USB_EVENT_RX_AVAILABLE:
        {
            tUSBDBulkDevice *psDevice;

            //
            // Get a pointer to our instance data from the callback data
            // parameter.
            //
            psDevice = (tUSBDBulkDevice *)pvCBData;

            //
            // Read the new packet and echo it back to the host.
            //
            return(SendHistDataToHost(psDevice,pvMsgData, ulMsgValue));
             //return(EchoNewDataToHost(psDevice, pvMsgData, ulMsgValue));
        }

        //
        // Ignore SUSPEND and RESUME for now.
        //
        case USB_EVENT_SUSPEND:
        case USB_EVENT_RESUME:
        {
            break;
        }

        //
        // Ignore all other events and return 0.
        //
        default:
        {
            break;
        }
    }

    return(0);
}
/*
 *
 *    Find dl copypasteo
 *
 */

/*==========================================================
=======
 * mexfunction.c
 *
 * This mex file use libusb.lib for function
 * tic;[bytes_read,data_read]=mxUsbGetBulkDataDebug(1003, 
8960);z=toc;
 * mex mxUsbGetBulkData.c libusb.lib
 * 
============================================================
=====*/

#include "libusb.h"
#include "mex.h"

/* the device's vendor and product id */
#define MY_VID 0x1D50
#define MY_PID 0x2014

/*configuration and interface that will be used*/
#define MY_CONF 0x01
#define MY_INT 0x00

/* the device's endpoints */
#define EP_IN 0x81
#define EP_OUT 0x01


//to esto me lo puedo cargar luego
// #define NONE	0
// #define PARAMS_IN	1
// #define PARAMS_OUT	2
// #define DATA_IN	3
// #define DATA_OUT	4
// #define DEBUG	5
// #define USB_SIGNTURE	0xc5c5
// 
// #define DATA_BUF_SIZE	500
// #define TOTAL_CHANNELS_NUMBER_BUFF 14
// #define CTMP_SIZE	
// (DATA_BUF_SIZE*TOTAL_CHANNELS_NUMBER_BUFF)
 #define USB_TIMEOUT 5000

#define PACKET_SIZE 8192

//jargggg no
// typedef struct USB_MESSAGE
// {
//     unsigned char ucUSBMessageType;
//     short sUsbSignture;
//     short sValue1;
//     short sValue2;
//     short sValue3;
// } xUSBMessage;

//No need for this
//usb_dev_handle *open_dev(int my_vid, int my_pid);

// Starts the USB communication
usb_dev_handle *open_dev(int my_vid, int my_pid)
{
    struct usb_bus *bus;
    struct usb_device *dev;
    
    for(bus = usb_get_busses(); bus; bus = bus->next)
    {
        for(dev = bus->devices; dev; dev = dev->next)
        {
            if(dev->descriptor.idVendor == my_vid
            && dev->descriptor.idProduct == my_pid)
            {
                return usb_open(dev);
            }
        }
    }
    return NULL;
}

void mexFunction(int nlhs,mxArray *plhs[],int nrhs,const mxArray *prhs[])
{
    struct usb_bus *bus;
    struct usb_device *dev;
    
//     double *ptr_my_vid, *ptr_my_pid;
//     double *ptr_my_configuration, *ptr_my_interface;
//     int my_vid, my_pid, my_configuration, my_interface;
     int bytes_write, bytes_read;
//     int i,j;
    
    
    char *outBuf;
    int i;
    int buflen;
    int status;
    char *inBuf; //[PACKET_SIZE];   
   // int Size[] = {1,8192};
   // unsigned short *tmpBuf; //[4096];
    buflen = mxGetN(prhs[0])*sizeof(mxChar)+1;
    outBuf = mxMalloc(buflen); 
   // inBuf = mxMalloc(PACKET_SIZE);
    //tmpBuf = mxMalloc(PACKET_SIZE);
    //plhs[0]= mxCreateString(inBuf);    
    //plhs[1] = mxCreateNumericMatrix(1, 4096,mxUINT16_CLASS,mxREAL);
   //plhs[1] = mxCreateDoubleMatrix(1,4096,mxREAL);
   // inBuf =  mxGetPr(plhs[0]);
    plhs[0] = mxCreateNumericMatrix(1,4096,mxUINT16_CLASS,mxREAL);
   // plhs[0] = mxCreateCharArray(1, (const int*)Size);
    inBuf = mxGetData(plhs[0]);

    
//     unsigned short cTmp[CTMP_SIZE]={0};
//     double *y;
//     double *x;
    
//     xUSBMessage sxUSBMessage;
    
//     plhs[0]=mxCreateDoubleMatrix(1, 1, mxREAL);
//     plhs[1]=mxCreateDoubleMatrix
// (DATA_BUF_SIZE,TOTAL_CHANNELS_NUMBER_BUFF, mxREAL);
//     
//     //Chorradas, me lo cargo todo....
//     
//     y = mxGetPr(plhs[0]);
//     x = mxGetPr(plhs[1]);
//     
//     // reset values
//     y[0]=0;
//     for (i=0;i<TOTAL_CHANNELS_NUMBER_BUFF;i++)
//         for (j=0;j<DATA_BUF_SIZE;j++)
//             x[(i*DATA_BUF_SIZE)+j]=0;
//     
//     /* Check for proper number of input and output 
// arguments */
//     /* my_vid, my_pid, my_configuration, my_interface */
//     if (nrhs ==4) {
//         ptr_my_interface = mxGetPr(prhs[3]);
//         ptr_my_configuration = mxGetPr(prhs[2]);
//         ptr_my_pid = mxGetPr(prhs[1]);
//         ptr_my_vid = mxGetPr(prhs[0]);
//         my_interface = (int)(*ptr_my_interface);
//         my_configuration = (int)(*ptr_my_configuration);
//         my_pid = (int)(*ptr_my_pid);
//         my_vid = (int)(*ptr_my_vid);
//     }
//     else if (nrhs ==3)
//     {
//         my_interface=0;
//         
//         ptr_my_configuration = mxGetPr(prhs[2]);
//         ptr_my_pid = mxGetPr(prhs[1]);
//         ptr_my_vid = mxGetPr(prhs[0]);
//         my_configuration = (int)(*ptr_my_configuration);
//         my_pid = (int)(*ptr_my_pid);
//         my_vid = (int)(*ptr_my_vid);
//     }
//     
//     else if (nrhs ==2) {
//         my_interface=0;
//         my_configuration=1;
//         
//         ptr_my_pid = mxGetPr(prhs[1]);
//         ptr_my_vid = mxGetPr(prhs[0]);
//         my_pid = (int)(*ptr_my_pid);
//         my_vid = (int)(*ptr_my_vid);
//     }
//     else if ((nrhs <2)| (nrhs >4)){
//         y[0]=-1;
//         mexWarnMsgTxt("At least two input arguments 
// required.");
//         return;
//     }
//     
//     if(nlhs > 2){
//         y[0]=-2;
//         mexWarnMsgTxt("Too many output arguments.");
//         return;
//     }
    
    usb_init(); /* initialize the library */
    usb_find_busses(); /* find all busses */
    usb_find_devices(); /* find all connected devices */
  
    // open device
    if(!(dev = open_dev(MY_VID, MY_PID)))
    {
        inBuf[0]=3;
        mexWarnMsgTxt("error: device not found!\n");
        return;
    }
    
    // set configuration
    if(usb_set_configuration(dev, MY_CONF) < 0)
    {
        inBuf[0]=4;
        mexWarnMsgTxt("error: setting config failed\n");
        usb_close(dev);
        return;
    }
    
    // claim interface
    if(usb_claim_interface(dev, MY_INT) < 0)
    {
        inBuf[0]=5;
        mexWarnMsgTxt("error: claiming interface failed\n");
        usb_close(dev);
        return;
    }
    
//     // arrange request struct for data
//     sxUSBMessage.ucUSBMessageType=DATA_IN;
//     
// sxUSBMessage.sUsbSignture=SHORT_little_endian_TO_big_endian
// (USB_SIGNTURE+(short)DATA_IN);
//     sxUSBMessage.sValue1=SHORT_little_endian_TO_big_endian
// (0);
//     sxUSBMessage.sValue2=SHORT_little_endian_TO_big_endian
// (0);
//     sxUSBMessage.sValue3=SHORT_little_endian_TO_big_endian
// (0);
    
    //convert the string input data to a C string, to be sent
    //through the usb
    
      status = mxGetString(prhs[0], outBuf, buflen);

    
    // send request data
    bytes_write=usb_bulk_write(dev, EP_OUT, outBuf, sizeof(outBuf), USB_TIMEOUT);
    if( bytes_write != sizeof(outBuf))
    {
        inBuf[0]=6;
        mexWarnMsgTxt("error: bulk write failed\n");
        usb_release_interface(dev, MY_INT);
        usb_close(dev);
        return;
    }
    
    
  //    mexCallMATLAB(0,NULL,1, 2, "pause");
   
    //Chorradas, me lo cargo todo....  
//     y = mxGetPr(plhs[0]);
    // get data
    bytes_read=usb_bulk_read(dev, EP_IN, inBuf, PACKET_SIZE, USB_TIMEOUT);
    if( bytes_read != PACKET_SIZE ) //&& bytes_read != 1)
    {
       // inBuf[0]=7;
        //inBuf[0] = 65;
        mexWarnMsgTxt(inBuf);
        mexWarnMsgTxt("error: bulk read failed\n");
        usb_release_interface(dev, MY_INT);
        usb_close(dev);
        return;
    }
    //move the values from one array to the other

 /*   for (i = 0; i < 8192; i+=2){
        if ( i == 0) {
            *tmpBuf[0] = (unsigned short *)((&inBuf[i])*256+&inBuf[i+1]);
        }
        else{
            *tmpBuf[i/2] = (unsigned short *)((&inBuf[i])*256+&inBuf[i+1]);
        }
    }
    
    */
    // mexWarnMsgTxt(inBuf);
    // mexWarnMsgTxt(&inBuf[130]);
 //    plhs[0]=mxCreateString(inBuf);
     //plhs[1] = tmpBuf;
     
     
    
//     // change endian and write to matlab
//     if(bytes_read==sizeof( cTmp))
//         for (i=0;i<TOTAL_CHANNELS_NUMBER_BUFF;i++)
//             for (j=0;j<DATA_BUF_SIZE;j++)
//                 x[(i*DATA_BUF_SIZE)+j]
// =SHORT_little_endian_TO_big_endian(cTmp[(i*DATA_BUF_SIZE)
// +j]);
//     
//     // get byte read if 1 still no full buffer
//     y[0]=bytes_read;

    
    // release interface
    if(usb_release_interface(dev, MY_INT) < 0)
    {
        inBuf[0]=8;
        usb_close(dev);
        mexWarnMsgTxt("error: releasing interface failed\n");
        return;
    }
    
    // close device
    if(usb_close(dev) < 0)
    {
        inBuf[0]=9;
        mexWarnMsgTxt("error: closing device\n");
        return;
    }
    return;
}
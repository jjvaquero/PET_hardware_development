/*
 * C12137detector.cpp
 *
 *  Created on: Aug 27, 2012
 *      Author: rchil
 */

#include "C12137detector.h"
#include <iostream>
using namespace std;

C12137_detector::C12137_detector() {

	//variable initialization
	 devh = NULL;

	//libusb initialization, needed before calling anything else
	error = libusb_init(NULL);
	//if (error<0 ) error_msg ("libusb_init");
	area_start = 0;
	area_end = 0;
	base_sievert = 0;
	base_energy = 0;

}

C12137_detector::~C12137_detector() {

	//release usb device before closing
	libusb_release_interface(devh,CONTROL_INTERFACE);
	libusb_close(devh);
	libusb_exit(NULL);
}


int C12137_detector::openDevice(){
	//opening the C12137
	devh = libusb_open_device_with_vid_pid(NULL, VENDOR_ID,PRODUCT_ID);
	//check device handle is correct
	if (devh == NULL) {
		//error_msg("USB open error\n C12137 device not found");
		error =  -1;
	}else {error = 0;}

	return error;
}

int C12137_detector::setInterface(int interfaceNum){
	//check that the usb handle have been initialized
    if(devh==NULL) {
    	printf("\n USB handle not initialized");
    	error = -1;
    	return error;
    }

	//Interface must be claimed before accessing any endpoint
	error = libusb_claim_interface(devh,interfaceNum);

	//now i must read the device configuration in order to get the endpoints....
	//TODO once I can tell the endpoint values...this can be removed
	//using the endpoint values...they are not likely to change...

	return error;
}

void C12137_detector::readEepromData(){

	//check that the usb handle have been initialized
    if(devh==NULL) {
    	printf("\n USB handle not initialized");
    	return;
    }

	/*Copied from the RadiationDetectorActivity.java ....
	 *
	 *
	 *      // モジュール内部に保存されている情報を読み出す
		int[] data = new int[1];
		String[] strData = new String[1];

		C12137.RdmUsb_ReadEepromString(mUsbConnection, 32, strData);
		C12137.RdmUsb_ReadEeprom(mUsbConnection, 28, data);
		if (strData[0]
				.equals(getString(R.string.EEPROM_PRODUCT_NAME_C12137_01))) {
			mCoeffX = Gf_C12137_01.KeV;
			mCoeffY = Gf_C12137_01.raw;
		} else {
			if (data[0] == 1) {
				mCoeffX = Gf_C12137_1.KeV;
				mCoeffY = Gf_C12137_1.raw;
			} else {
				mCoeffX = Gf_C12137.KeV;
				mCoeffY = Gf_C12137.raw;
			}
		}
 		// 動作モード
		C12137.RdmUsb_ReadEeprom(mUsbConnection, 0, data);
		if (data[0] == 0) {
			// 自動補正
		} else {
			// 外部制御
		}

		// 温度補償係数
		// 係数T
		C12137.RdmUsb_ReadEeprom(mUsbConnection, 2, data);
		// 係数A
		C12137.RdmUsb_ReadEeprom(mUsbConnection, 4, data);
		// 係数B
		C12137.RdmUsb_ReadEeprom(mUsbConnection, 6, data);
		// 係数C
		C12137.RdmUsb_ReadEeprom(mUsbConnection, 8, data);

		// 起動時コンパレータ設定値
		C12137.RdmUsb_ReadEeprom(mUsbConnection, 10, data);
		if (data[0] > 4095) {
			data[0] = 4095;
		}

		// エネルギー変換指定範囲（下限）
		C12137.RdmUsb_ReadEeprom(mUsbConnection, 12, data);
		if (data[0] > 4095) {
			data[0] = 4095;
		}
		AreaStart = (double) data[0];

		// エネルギー変換指定範囲（上限）
		C12137.RdmUsb_ReadEeprom(mUsbConnection, 14, data);
		if (data[0] > 4095) {
			data[0] = 4095;
		}
		AreaEnd = (double) data[0];

		// uSv/h変換係数
		C12137.RdmUsb_ReadEeprom(mUsbConnection, 16, data);
		BaseSievert = (double) data[0];

		// ADC⇒エネルギー変換値
		C12137.RdmUsb_ReadEeprom(mUsbConnection, 18, data);
		BaseEnergy = (double) data[0] / 1000;

	 */

	//two control transfers to check program functionality
	//array to save read data
	unsigned char data16[16];
	unsigned char data2[2];
	int aux_tmp;


	error = libusb_control_transfer(devh,EEPROM_Request_Type,VENDOR_READ_EEPROM,32,0,data16,16,0);
	if (error!=16) error_msg("Read Error");
	for (int i =0; i<16; i++){
		dev_name[i] = data16[i];
	}

	error = libusb_control_transfer(devh,EEPROM_Request_Type,VENDOR_READ_EEPROM,28,0,data2,2,0);
	if (error!=2) error_msg("Read Error");
    aux_tmp = (data2[1] & 0xFF) + ((data2[0] & 0xFF) << 8);

    //Energy conversion lower limit
	error = libusb_control_transfer(devh,EEPROM_Request_Type,VENDOR_READ_EEPROM,12,0,data2,2,0);
	if (error!=2) error_msg("Read Error");
    aux_tmp = (data2[1] & 0xFF) + ((data2[0] & 0xFF) << 8);
	area_start = (float)aux_tmp;

    //Energy conversion superior limit
	error = libusb_control_transfer(devh,EEPROM_Request_Type,VENDOR_READ_EEPROM,14,0,data2,2,0);
	if (error!=2) error_msg("Read Error");
    aux_tmp = (data2[1] & 0xFF) + ((data2[0] & 0xFF) << 8);
	area_end = (float)aux_tmp;

	//conversion factor uSv/h
	error = libusb_control_transfer(devh,EEPROM_Request_Type,VENDOR_READ_EEPROM,16,0,data2,2,0);
	if (error!=2) error_msg("Read Error");
    aux_tmp = (data2[1] & 0xFF) + ((data2[0] & 0xFF) << 8);
	base_sievert = (float)aux_tmp;

	// ADC  - Energy conversion value
	error = libusb_control_transfer(devh,EEPROM_Request_Type,VENDOR_READ_EEPROM,18,0,data2,2,0);
	if (error!=2) error_msg("Read Error");
    aux_tmp = (data2[1] & 0xFF) + ((data2[0] & 0xFF) << 8);
	base_energy = (float)aux_tmp;



	//printing the read info
	//printf("\n %s \n %f \n %f \n %f \n %f  \n",dev_name,area_start,area_end, base_sievert, base_energy );
}

//function used to get the usb device configuration data
void C12137_detector::getDeviceConfig(){
	libusb_config_descriptor *config;
	libusb_get_config_descriptor(libusb_get_device(devh), 0, &config);
	cout<<"Interfaces: "<<(int)config->bNumInterfaces<<" ||| ";
	const libusb_interface *inter;
	const libusb_interface_descriptor *interdesc;
	const libusb_endpoint_descriptor *epdesc;
	for(int i=0; i<(int)config->bNumInterfaces; i++) {
		inter = &config->interface[i];
		cout<<"Number of alternate settings: "<<inter->num_altsetting<<" | ";
		for(int j=0; j<inter->num_altsetting; j++) {
			interdesc = &inter->altsetting[j];
			cout<<"Interface Number: "<<(int)interdesc->bInterfaceNumber<<" | ";
			cout<<"Number of endpoints: "<<(int)interdesc->bNumEndpoints<<" | ";
			for(int k=0; k<(int)interdesc->bNumEndpoints; k++) {
				epdesc = &interdesc->endpoint[k];
				cout<<"Descriptor Type: "<<(int)epdesc->bDescriptorType<<" | ";
				cout<<"EP Address: "<<(int)epdesc->bEndpointAddress<<" | ";
				cout<<"Attributes "<<(int)epdesc->bmAttributes<<" | ";
				cout<<" PacketSize" <<(int)epdesc->wMaxPacketSize<<" | ";
			}
		}
	}
	printf("\n \n \n");
	libusb_free_config_descriptor(config);
}

//indicates if there is an error and then exits the application
void C12137_detector::error_msg(char* cad){
	printf("ERROR \n %s",cad);
	//exit(1);
}


int C12137_detector::readSensorData(unsigned short data[]){
	int length = HDSIZE+DATASIZE;
	unsigned char buffer[length*2];
	int received;
	//clearing the buffer
	memset(buffer,0,length*2);
	unsigned int timeout = 0; // 0 = unlimited time ->blocking call
	//clear the halt/stall condition of the breakpoint before the transfer
	//error = libusb_clear_halt 	(devh, usbBulkEpIn); //not needed

	//aks device to send data
	error = libusb_bulk_transfer (devh, usbBulkEpIn, buffer,length*2, &received,timeout);
	//error check
	switch (error){
	case 0:
		break;
	case LIBUSB_ERROR_TIMEOUT:
		printf("if the transfer timed out (and populates transferred) %d",received);
		return error;
	case LIBUSB_ERROR_PIPE:
		printf("if the endpoint halted"); return error;
	case LIBUSB_ERROR_OVERFLOW:
	    printf("if the device offered more data, see Packets and overflows "); return error;
	case LIBUSB_ERROR_NO_DEVICE:
		printf("if the device has been disconnected"); return error;
	default:
		printf("Unknown Error"); return error;
	}
	for (int i = 0; i<length*2; i+=2){
		if (i<16){
			//header bytes are in MSB, LSB
			//read_values[i] = buffer[i];
			//read_values[i+1] = buffer[i+1];
			data[i / 2] = (((buffer[i]&0xFF)<<8) | (buffer[i+1]&0xFF));
		}else{
			//to read the value of this bytes
			//read_values[i] = buffer[i+1];
			//read_values[i+1] = buffer[i];
			data[i / 2] = ((buffer[i]&0xFF) | ((buffer[i+1]&0xFF)<<8));
		}
	}
	return error;

}

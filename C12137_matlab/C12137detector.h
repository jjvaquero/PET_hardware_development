/*
 * C12137detector.h
 *
 *  Created on: Aug 27, 2012
 *      Author: rchil
 */

#include <libusb-1.0/libusb.h>

#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
#include <string.h>
#include <signal.h>
#include <stddef.h>


#ifndef C12137DETECTOR_H_
#define C12137DETECTOR_H_


	//
    //constants used in the communication
	//
	const uint8_t HN_SUCCESS = 0x00;
	const uint8_t HN_INVALID_HANDLE = 0x01;
	const uint8_t HN_UNSUCCESS = 0x02;
	const uint8_t HN_INVALID_VALUE = 0x03;
	const uint8_t HN_NOT_UPDATED = 0x04;


	const uint8_t EEPROM_Request_Type = 0xC3;
	//EEPROM
	const uint8_t VENDOR_ERASE_EEPROM = 0x03;
	const uint8_t VENDOR_READ_EEPROM = 0x04;
	const uint8_t VENDOR_WRITE_EEPROM = 0x05;

	//Firmware
	const uint8_t VENDOR_FIRM_VERSION = 0x10; //firmware version
	const uint8_t VENDOR_FIRM_BUILD = 0x11;   //build date of the firmware

	//FPGA
	const uint8_t FPGA_ADC_DELAY = 0x0A;
	const uint8_t FPGA_HOLD_DELAY = 0x0B;
	const uint8_t FPGA_DAC_VALUE = 0x0C;
	const uint8_t TEMPERATURE_DIGITAL = 0x0D;
	const uint8_t TEMPERATURE_ANALOG = 0x0E;

	//I2C
	const uint8_t HVPS_DAC_VALUE = 0x20;
	const uint8_t I2C_TXD_REQUEST = 0x21;
	const uint8_t I2C_RXD_REQUEST = 0x22;
	const uint8_t HVPS_REQ_MODE = 0x23;


	const uint8_t I2C_REQ_MODE = 0x00; // operating Mode Selection

	const uint8_t I2C_REQ_TEMP_D = 0x02; // digital temperature information
	const uint8_t I2C_REQ_TEMP_A = 0x03; // analog temperature information

	const uint8_t I2C_REQ_DAC = 0x06; // preset voltage value
	const uint8_t I2C_REQ_ADC_I = 0x07; // current monitor value
	const uint8_t I2C_REQ_ADC_V = 0x08; // voltage monitor value

	const uint8_t I2C_REQ_COEFF0 = 0x0B; // correction factor (BASE)
	const uint8_t I2C_REQ_COEFF1 = 0x0C; // correction factor (A)
	const uint8_t I2C_REQ_COEFF2 = 0x0D; // correction factor (B)
	const uint8_t I2C_REQ_COEFF3 = 0x0E; // correction factor (C)

	const uint8_t I2C_REQ_CMD = 0xFF; // change request register

	const int CONTROL_INTERFACE = 0;
	//C12137 configuration data
	const uint16_t PRODUCT_ID = 10519;
	const uint16_t VENDOR_ID = 1633;
	//C12137 usb endpoints
	const unsigned char usbBulkEpIn = 0x82;
	const unsigned char usbBulkEpOut = 0x01;
	//communication protocol constants
	const int HDSIZE = 8;
	const int DATASIZE = 1048;
	//
	// end of the communication constants
	//


class C12137_detector {
public:
	C12137_detector();
	virtual ~C12137_detector();

	//start communication with the device
	int openDevice();
	//claim the given number interface
	//TODO el C12137 solo tiene una interface...lo podría meter en open device
	int setInterface(int interfaceNum);

	//reads configuration data from the device itself
	void readEepromData();

	//reads the stored data from the usb device
	int readSensorData(unsigned short data[]);


private:
	//indicates if there is an error and then exits the application
	void error_msg(char* cad);

	//function used to get the usb device configuration data
	//only needs to be used once to get the endpoints and configurations
	void getDeviceConfig();



private:
//defincion de variables de la clase
	//USB com variables
	struct libusb_device_handle* devh;
	//static struct libusb_transfer* data_transfer = NULL;
	int error;
	float area_start, area_end, base_sievert, base_energy;
	unsigned char dev_name[16];

};

#endif /* C12137DETECTOR_H_ */

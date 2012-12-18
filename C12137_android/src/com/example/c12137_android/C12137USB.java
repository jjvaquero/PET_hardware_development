package com.example.c12137_android;


import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.Iterator;

import android.content.Context;
import android.hardware.usb.UsbConstants;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbEndpoint;
import android.hardware.usb.UsbInterface;
import android.hardware.usb.UsbManager;
import android.hardware.usb.UsbRequest;

public class C12137USB {
	
	//private C12137 c12137Activity;
	
	//vendor ID and product ID constants
	static final int VENDOR_ID = 1633;
	static final int PRODUCT_ID = 10519;
	static final int VENDOR_READ_EEPROM = (0x04); 
	
	//USB variables
	private UsbManager usbManager;
	private UsbDevice usbDevice;
	private UsbDeviceConnection usbDeviceConnection;
	private UsbEndpoint usbBulkEpIn, usbBulkEpOut; 
	
	//constants 
	private int DATA_SIZE = 1056;	//8 + 1048	
	
	//variables
	private String devName;
	
	public C12137USB(C12137 mainActivity) {
		//USB initialization
        usbManager = (UsbManager) mainActivity.getSystemService(Context.USB_SERVICE);
        
        UsbDevice device;
        HashMap<String, UsbDevice> deviceList = usbManager.getDeviceList();
		Iterator <UsbDevice> deviceIterator = deviceList.values().iterator();
		while (deviceIterator.hasNext()){
			device = deviceIterator.next();
			if (device.getVendorId() == VENDOR_ID && device.getProductId() == PRODUCT_ID){
				setDevice(device);
			}
		}
		
	}
	
	private void setDevice( UsbDevice device){
    	//If there are no interfaces this is an unusable device
    	if (device.getInterfaceCount()<1 ){
    		return; 
    	}
    	
    	//C12137 detector only uses interface 0
    	UsbInterface intf = device.getInterface(0);
    	//check that there is at least 1 endpoint
    	if (intf.getEndpointCount()<1) return; 
        
    	//TODO esto no es necesario puesto que el hardware ya es conocido
    	// y por lo tanto los endpoints no varian...pero bueno...
    	for (int i = 0; i <intf.getEndpointCount(); i++){
    		UsbEndpoint ep = intf.getEndpoint(i);
    		switch (ep.getType()){
    		case  UsbConstants.USB_ENDPOINT_XFER_CONTROL:
    		case  UsbConstants.USB_ENDPOINT_XFER_INT:
    		case  UsbConstants.USB_ENDPOINT_XFER_ISOC:
    			break;
    		case UsbConstants.USB_ENDPOINT_XFER_BULK:
    			if (ep.getDirection() == UsbConstants.USB_DIR_OUT){
    				usbBulkEpOut = ep;
    			} else{
    			    usbBulkEpIn= ep;
    			} 
    			break;
    		 default: 
    			break;   			  	   
    		    		
    		}
    	}
    	
    	//Connect with the usb detector
    	usbDevice = device;
    	if (device != null){
    		UsbDeviceConnection connection = usbManager.openDevice(usbDevice);
    		if (connection != null && connection.claimInterface(intf, true)){
    			usbDeviceConnection = connection;
    		}else{
    			usbDeviceConnection = null; 
    		}
    	}
    	
    	//Connection has been successful
    	if (usbDeviceConnection == null){
    		System.out.println(" USB No conectado");
    		return;
  
    	}
    	//ReadEEPROM information
    	LoadModuleInfo();
    }
    
	// Reads detector configuration values
    private void LoadModuleInfo(){
    	//TODO there are more values that need to be read
    	
    	
    	int[] data = new int[1];
    	String[] strData = new String[1];
    	
    	
    	//READEEPROM STRING 32, strData
    	//READEEPROM 28, data;
    	
    	int result;
    	byte[] dataBuffer = new byte[16];
    	
    	//check if the connection is valid
		if (usbDeviceConnection == null) {
			return;
		}
		
		//Get device name
		//used to select the adequate calibration values
		result = usbDeviceConnection.controlTransfer(0xC3, VENDOR_READ_EEPROM , 32, 0,
				dataBuffer, 16, 0);
		if ( result == -1 || result != 16) return;
	    strData[0] = new String(dataBuffer);
	    this.devName=strData[0];
		
		//Get device version number
		result = usbDeviceConnection.controlTransfer(0xC3, VENDOR_READ_EEPROM , 28, 0,
				dataBuffer, 2, 0);
		if ( result == -1 || result != 2) return;
		data[0] = (dataBuffer[1] & 0xFF) + ((dataBuffer[0] & 0xFF) << 8);
		
    	  	
    }
    
   // Reads the sensor data and temperature, returns 0 if Ok
   public int readMPPCData(int Data[]){
	   	
		UsbRequest request = new UsbRequest();
		int returnValue = -1;
        // Always read the same number of bytes, (1048 + 8)*2
		ByteBuffer transferBuffer = ByteBuffer.allocate(DATA_SIZE * 2);
		request.initialize(usbDeviceConnection, usbBulkEpIn);
		request.queue(transferBuffer, transferBuffer.remaining());
		if (usbDeviceConnection.requestWait() != request) {
				returnValue = -1;
			} else {
				for (int i = 0; i < DATA_SIZE; i += 2) {
					if (i < 16 ){
						//First 8 values MSB, LSB  (header)
						Data[i/2] = Data[i / 2] = ((transferBuffer.get(i + 0) & 0xFF)<<8)
								+ ((transferBuffer.get(i + 1) & 0xFF));
					}else{
						//rest of the values  LSB,MSB  (sensor data)
						Data[i / 2] = ((transferBuffer.get(i + 0) & 0xFF))
								+ ((transferBuffer.get(i + 1) & 0xFF) << 8);
					}
				}
				//first header value must be 0x5A5A
				if (Data[0] == 0x5A5A) {
					returnValue = 0;
				} else {
					returnValue = -2;
				}
			}
	    
		return returnValue;	    	    	   
   }
   
   public String getDevName(){
	   return this.devName;
   }
   
   public void usbRelease(){
		 usbManager = null;
		 usbDevice = null;
		 usbDeviceConnection.close();
		 usbDeviceConnection = null;
   }

}

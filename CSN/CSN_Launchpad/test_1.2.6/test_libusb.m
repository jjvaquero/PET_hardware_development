%using lib usb in matlab
clear all
if libisloaded('libusb0') 
    unloadlibrary('libusb0');
end

loadlibrary('libusb0');  
 


%init the usb 
calllib('libusb0','usb_init');
calllib('libusb0','usb_find_busses');
calllib('libusb0','usb_find_devices');

%open the connection
busPtr = calllib('libusb0','usb_get_busses');

%compruebo que sea el que quier
if (busPtr.Value.devices.descriptor.idVendor == 7504 && ...
        busPtr.Value.devices.descriptor.idProduct == 8212)
    %es el dispositivo que quiero asin que...lo abro
    [devPtr,usbDev] = calllib('libusb0','usb_open',busPtr.Value.devices);
end

%not sure if i will need to set the configuration
%setting the configuration
[usbConf, usbDev] = calllib('libusb0','usb_set_configuration',devPtr,1);
[usbInt, usbDev] = calllib('libusb0','usb_claim_interface',devPtr,0);

%async_context = '';
%val = calllib('libusb0','usb_bulk_setup_async',devPtr,async_context,0);
%pruebo leer y escribir
data = 'DATA?';
dataRead = ones(1,100);
[nRead,usbDev,dataX] = calllib('libusb0','usb_bulk_write',devPtr,1,data,5,10)
pause(0.2);
[nRead,usbDev,dataRead] = calllib('libusb0','usb_bulk_read',devPtr,129,'alaksdjskjhaljhadsa',100,1000)

%do it again to see if it works
% pause(0.2);
% dataRead1 = ones(1,100);
% data = 'DATA?';
% [nRead,usbDev,dataRead(1:5)] = calllib('libusb0','usb_bulk_write',devPtr,1,data,5,10)
% pause(0.2);
% [nRead,usbDev,dataRead1] = calllib('libusb0','usb_bulk_read',devPtr,129,'alaksdjskjhaljhadsa',100,1000)

%aqui puedo meter para cerrar la comunicacion
[usbInt, usbDev] = calllib('libusb0','usb_release_interface',devPtr,0);
[usbInt, usbDev] = calllib('libusb0','usb_close',devPtr);



%cutre script para probar el uso del quick en Matlab
clear;
%me creo un obejto del tipo FPGA
quick = Quick_USB('qusb1');
%lo configuro
QUSB_init(quick);
%configuro la FPGA
QUSB_FpgaInit(quick);
%programo la FPGA
QUSB_FpgaProgram(quick,'daq_multicanal.rbf');
DataGuard = zeros(100,512);

%Ahora viene el bucle de lectura
for  i = 1:100
    [data,nRead] = QUSB_ReadFpgaData(quick,1024);
    %los datos son leidos a un array de caracteres
    %por ello realizo ahora la conversion necesaria
    dataConv = typecast(data,'uint16');
    DataGuard(i,:)= dataConv;
    pause(0.5);
end

%luego puedo mirar a ver si hay alguna forma de pasar los datos de un tipo
%a otro..seguramente la hay
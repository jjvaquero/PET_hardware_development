%script_para probar la clase C12137

%creo mi objeto
detect = C12137();

%inicio la comunicacion usb
error = detect.openDevice();
if error ~= 0 
    disp('liada to parda');
end

for i = 1 : 500
    [error,histograma, temperatura] = detect.readData();
    if error ~= 0 
        disp('error con la lectura');
    end
end




 
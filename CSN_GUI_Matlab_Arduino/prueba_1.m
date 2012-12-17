%script para probar la lectura con el arduino

%limpio los intrsumentos
instrreset;
%abro el puerto
puerto = serial('COM4');

%configuro y abro el puerto serie
 set(puerto,'BaudRate',115200);
 %a lo mejor necesito mas tamaño en el buffer de entrada
 set(puerto,'InputBufferSize',5000);
 fopen(puerto);
 
 valores = zeros(5,1024);
 %leo...5 veces
 for i = 1 : 5
     cadena = fgetl(puerto);
     valores(i,:) = str2num(cadena);
 end
 
 fclose(puerto);
 suma = sum(valores(:,10:1024));
 plot(suma);
 
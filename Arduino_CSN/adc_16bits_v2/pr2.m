%programa de prueba para leer datos del arduino
%me aseguro de no dejar ninguna conexión abierta
clear all
buff_size = 2500;
s = serial('COM4');
set(s,'BaudRate',115200);
 set(s,'InputBufferSize',buff_size*2+50);
 %set(s,'Timeout',100);
nread = 1000;

a = zeros(nread,buff_size);
b = 0;
x = a;
fopen(s);
%ahora realizo la lectura
tic
for i=1 :nread
    while s.BytesAvailable < (buff_size-50)
        pause(0.2);
    end
    %while b ~= 110 %'n'
    %    x(i) = b;
    %    b = fread(s,1,'uchar');
    %end
    
    a(i,:) = fread(s,buff_size,'uint16');
    
    %pause(0.2);
    %disp(a(i));
    %b = 0;
end
toc
fclose(s);
delete(s); clear s;

%a = a+1;
hist = zeros(2^16,1);
%hist = sum(a);

for i = 1 : nread
     for j = 1:buff_size
         if (a(i,j)) > 1  && a(i,j) < 2^16
             hist(a(i,j)) = hist(a(i,j))+1;
          end
     end
 end
plot(hist);
%programa de prueba para leer datos del arduino
%me aseguro de no dejar ninguna conexión abierta
clear all;

s = serial('COM5');
set(s,'BaudRate',115200);
%set(s,'Timeout',100);
nread = 20000;
a = zeros(nread,100);
b = 0;
x = a;
fopen(s);
if (s.BytesAvailable > 0 )
    data = fread(s,s.BytesAvailable);
end 

%ahora realizo la lectura
tic
for i=1 :nread
    while s.BytesAvailable <200
        pause(0.2);
    end
    %while b ~= 110 %'n'
    %    x(i) = b;
    %    b = fread(s,1,'uchar');
    %end
    
    a(i,:) = fread(s,100,'uint16');
    %pause(0.2);
    %disp(a(i));
    %b = 0;
end
toc
fclose(s);
delete(s); clear s;

%a = a+1;
hist = zeros(4096,1);
for i = 1 : nread
    for j = 1:100
        if (a(i,j)) > 1  && a(i,j) < 4096
            hist(a(i,j)) = hist(a(i,j))+1;
        end
    end
end
plot(hist);
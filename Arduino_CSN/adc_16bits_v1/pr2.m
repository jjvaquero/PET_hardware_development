%programa de prueba para leer datos del arduino
%me aseguro de no dejar ninguna conexión abierta
clear all;

s = serial('COM4');
set(s,'BaudRate',115200);
 set(s,'InputBufferSize',2050);
 %set(s,'Timeout',100);
nread = 5;
a = zeros(nread,1024);
b = 0;
x = a;
fopen(s);
%ahora realizo la lectura
tic
for i=1 :nread
    while s.BytesAvailable <2000
        pause(0.2);
    end
    %while b ~= 110 %'n'
    %    x(i) = b;
    %    b = fread(s,1,'uchar');
    %end
    
    a(i,:) = fread(s,1024,'uint16');
    
    %pause(0.2);
    %disp(a(i));
    %b = 0;
end
toc
fclose(s);
delete(s); clear s;

%a = a+1;
%hist = zeros(4096,1);
hist = sum(a);

%for i = 1 : nread
%     for j = 1:100
%         if (a(i,j)) > 1  && a(i,j) < 4096
%             hist(a(i,j)) = hist(a(i,j))+1;
%         end
%     end
% end
plot(hist);
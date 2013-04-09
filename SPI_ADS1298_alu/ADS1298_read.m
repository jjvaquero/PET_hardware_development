%function to read ECG data from the ADS1298 EVM
%function prototype is ecgData = ADS1298_read(portName, nRead)
% portName --> string indicating the Arduino serial port name ex. 'COM3'
% nRead --> number of times data would be read, 10 or more is recommended


function ecgData = ADS1298_read(portName, nRead)

if nargin < 1 
    portName = 'COM3';
end
if nargin <2
    nRead = 1;
end

%serial port creation and configuration
s = serial(portName);
set(s,'BaudRate',115200);
set(s,'InputBufferSize',2050);
 %set(s,'Timeout',100);

%start communication
fopen(s);

header = int16(0);
nChan = int16(0);
nData = int16(0);
%data reading
tic
prev = 0;
for i=1 :nRead
    while s.BytesAvailable <500
        pause(0.1);
    end
    %read the header first....TODO add a check
    header =0; nChan = 0; ind = 0;
    while header ~= 192 && nChan ~=8
        header = fread(s,1,'int16');
        nChan = fread(s,1,'int16');
    end
    nData = fread(s,1,'int16')
    nChan
    tam = double(nData);
    
    %read the data
    if tam > 0 && tam < 1000
        data1 = fread(s,tam,'int16');
        for j = 1 : nData/nChan
            for k = 1 : nChan
                ind = ind+1;
                ecg_data(j+prev,k)= data1(ind);
            end
        end
        prev = prev + round(nData/nChan);       
    end
    
    
    %pause(0.2);
    %disp(a(i));
    %b = 0;
end
toc
fclose(s);
delete(s); clear s;

if tam < 1 
    data = 0;
end;
ecgData = ecg_data;
 
         
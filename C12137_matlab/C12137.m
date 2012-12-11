classdef C12137 <handle
    %
    %   Class designed to use the C12137 detector in Matlab
    %   in order to use it the libC12137_matlab.so and C12137interface.h files
    %   are required
    %
    
    properties
        histogram = zeros(4096,1); %energy histrogram
        tmp_hist = zeros (4096,1);
        temperature = 0; 
        isOpened = false; 
        % used to read data from the usb
        data_buff = uint32(zeros(1000,1));
    end
    
    methods (Static = true)
        function loadLib()
            if not(libisloaded('libC12137_matlab'))
                loadlibrary('libC12137_matlab','C12137interface.h');
            end
        end
        
        function unloadLib()
            if libisloaded('libC12137_matlab');
                unloadlibrary('libC12137_matlab');
            end
        end
        
        function delete()
            C12137.unloadLib();
        end
        
    end
    
    methods
        function error = openDevice(obj)
            %fisrt I load the library in order to use it
            C12137.loadLib();
            %init usb device communications
            error = calllib('libC12137_matlab','C12137_init');
            obj.isOpened = true;
        end
        
        function [error, hist, temp] = readData(obj)
            if not(obj.isOpened)
                error = -1;
                disp('Device not opened');
                return;
            end
            
            [error,data] = calllib('libC12137_matlab','C12137_read',obj.data_buff);
            data = double(data);
            hist = zeros(4096,1);
            if data(2) > 0 && error == 0
                for i = 1 : data(2)
                    obj.histogram(data(i+2)+1) = obj.histogram(data(i+2)+1)+1;
                    obj.tmp_hist(data(i+2)+1) = obj.tmp_hist(data(i+2)+1)+1;
                    hist(data(i+2)+1) = hist(data(i+2)+1) +1;                    
                end
            end
                       
            temp = data(1);
            temp = temp*1250.0/65535.0;
            temp = ((temp - 1034.0)*50.0)/(760.0-1034.0);
            obj.temperature = temp;
            
            
        end
        
        function clearHist(obj)
            obj.histogram = zeros(4096,1);
        end
        
        function clearTempHist(obj)
            obj.tmp_hist = zeros(4096,1);
        end
    end
    
end
                
        
        
       
        

    
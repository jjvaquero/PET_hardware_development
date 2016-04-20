%
%   prueba interfaz entre el C12137 y matlab
%

loadlibrary('libC12137_matlab','C12137interface.h');
a= calllib('libC12137_matlab','C12137_init');
I = uint32(zeros(1000,1));
hist = zeros(4096,1);
  for i = 1 : 2000
      [a,b]= calllib('libC12137_matlab','C12137_read',I);
      res = double(b);
      if res(2) >0  && a == 0 
          for j = 1 : res(2)
              hist(res (j + 2)+1) = hist (res(j +2)+1) +1;
          end
      end
  end
  unloadlibrary('libC12137_matlab');
  plot(hist); 
              

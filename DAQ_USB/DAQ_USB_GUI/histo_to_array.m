%imagen para dibujar los arrays
function arrayHist = histo_to_array(img_array,x,y)

arrayHist = zeros(1,512);
for i = 1 : 512
    arrayHist(i) = img_array(x,y,i);
end

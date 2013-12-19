// Detector measurements macro.
// Run with image already open.


FWHMminimap = "FWHM_mini";
photoMinimap = "photo_mini";

// FUNCTIONS


//returns the number of the pixel with the max gain
function findMaxGainPixel(threshold){   //,img)
  //make sure that I am working on the correct image
  //selectImage(img);
  height = getHeight();
  width = getWidth();
  
  maxGainPixel = -1;
  //start a little away from the border to avoid detecting a peak from the noise
  y = height - 10; 
  while ( y > 10 ) {
   for ( i = 0; i< width; i++){
     //check if there is any value above the threshold
     pixelValue = getPixel(i,y) - 32768; //getPixelValue(i,y);
     if (pixelValue >= threshold){
       maxGainPixel = i; 
       y = 1; //to stop the loop
     //  print("Valor es "+maxGainPixel+" y en pixel "+ pixelValue);
    }
     
   }
   //decrease the row number
   y--;    
  }
 
  return maxGainPixel;
  //if the returned result is negative then no value above threshold have been found
  //an error message should be used when this happens
}

//returns an array with all the max values stored
function findMaxGainPixels(img, threshold, zValues){
  selectImage(img);
  maxPixels = newArray(zValues);
  
  for ( i = 0; i < zValues; i++) {
   setSlice(i+1); 
   maxPixels[i] = findMaxGainPixel(threshold);
   if ( maxPixels[i] < 0 ) print("Error on detector number "+(i+1));
      
  }
  return maxPixels;
}

/*function used to find the changes in the slope
 * 
 *  dir = 1 --> ascending, dir = -1 --> descending
 *  startIndex --> index where the algorithm will start
 *  dataArray
 *  moveDir = 1 --> forward, moveDir = -1 --> backward
 *  numMean --> number of values used to calculate the next mean
 * 
 */
function findSlopeChange(dataArray,startIndex,dir,moveDir, numMean){
	currIndex = startIndex; // -5 to adjust for the while loop
	currMean = dir; 
	prevMean = 0; 
	//numMean = 10; //number of values used to calculate the next mean
	while ( (currMean - prevMean)*dir > 0 ){
		currIndex+=moveDir;
		prevMean = currMean;
		currMean = 0;
 		for (i = 0; i< numMean; i++){
 			//check that i dont get out of the array
 			if ( (currIndex+(i*moveDir) < 256) && (currIndex+(i*moveDir)>0)){
 				currMean += dataArray[currIndex+(i*moveDir)];
 			}
		}
		currMean/= numMean;	
	
	}
	return currIndex;
	
	
}

//function to work with the image that contains all the max pixels
function findThresholsdIndex(imgName,threshold){
	selectImage(imgName);
	height = getHeight();
	width = getWidth();
	thrsIndexs = newArray(width);

	j = height - 10;
	for (i = 0; i < width; i++){
		while( ((getPixel(i,j) - 32768)< threshold) && (j > 10)){j--;}
		thrsIndexs[i] = j;
		j = height - 10;	
	}

	return thrsIndexs;
}

function findFWHM(dataArray, maxValue, length){
	midValue = maxValue/2;
	indMid1 = 0;
	indMid2 = 0;
	//find the first index 
	i = 0;
	while( dataArray[i] < midValue){
		i++;
	}
	indMid1 = i;
	i = length-1;
	while( dataArray[i] < midValue){
		i--;
	}
	indMid2 = i; 
	FWHM = indMid2 - indMid1;
	return FWHM;
}

/*
 * function that returns the position of the photopeak and the FWHM for each column in an image
 * data is returned in a single array because imageJ macros does not support multi dimension arrays
 * imgName --> name of the image that will be used
 * slcie --> slice to use, this is added to be able to work with multiSlice images
 * threshold --> thresold from wich to start looking for the maximum
 * numMean --> number of values used to compute the mean on the slope detection algorithm
 */
function findMaxPos_FWHM(imgName,slice,threshold,numMean){

selectImage(imgName);
setSlice(slice);

//encuentro los saltos del threshold
width = getWidth();
height = getHeight();
thrsArray = newArray(width);
thrsArray =  findThresholsdIndex(imgName,threshold);

index1 = newArray(width);
index2 = newArray(width);
tmpProfArray = newArray(height);

//values that I will save
minVals = newArray(width);
maxVals = newArray(width);
FWHMValues = newArray(width);
maxPos = newArray(width);
minTmp = 0; 
meanTmp = 0;
stdTmp = 0;

//array to store the results
results = newArray((width*2));

for (i = 0; i< width; i++){
	//first i will get the array of the corresponding crystal
	makeLine(i,0,i,height);
	tmpProfArray = getProfile();
	index1[i] = findSlopeChange(tmpProfArray, thrsArray[i],1,-1,10);
	index2[i] = findSlopeChange(tmpProfArray, (index1[i]-30),-1,-1,10);

	//error check
	if (((thrsArray[i] - index2[i]) > 0) && (index2[i]>0) ){
		tmpArrayY = newArray(thrsArray[i]- index2[i]);
		tmpArrayX = newArray(thrsArray[i]- index2[i]);
		
		//copy only the 511KeV peak to a new array
		for (j = 0; j< (thrsArray[i]-index2[i]); j++){
			tmpArrayY[j] = tmpProfArray[index2[i]+j];
			tmpArrayX[j] = j;
		}
	       //fit a Guassian curve to it
	       Fit.doFit("GAUSSIAN",tmpArrayX,tmpArrayY);
	       tmpArray = newArray(thrsArray[i]-index2[i]);	      

	      	for (j = 0; j< (thrsArray[i]- index2[i]); j++){
	      		tmpArray[j] = Fit.f(j);
			//print(" Curva "+i+ "valores "+tmpArray[j]);
		}
		//now I can find the values that I want
		minVals[i] = tmpArray[0];
		Array.getStatistics(tmpArray, minTmp, maxVals[i], meanTmp, stdTmp);	
		FWHMValues[i] = 2.355*Fit.p(3);  //FWHM = 2.355+sigma
		//this is done because imageJ curveFitter fails sometimes
		if (FWHMValues[i] > 150){
			FWHMValues[i]  = findFWHM(tmpArray, maxVals[i], (thrsArray[i]-index2[i]));
		}
		
		
		//find the position of maximum value in the profile/energy spectrum
		j = 0; 
		while( tmpArray[j] != maxVals[i]){j++;}
		maxPos[i] = index2[i]+j;
		
		
	} 

	
	//print("Detector "+i+", Máximo "+maxVals[i]+" Pos: "+maxPos[i]+" Mínimo: "+minVals[i]+" FWHM :"+FWHMValues[i]);
	//now i save the values in one array
	results[i] = maxPos[i];
	results[(i+width)] = FWHMValues[i];
}
	return results;
	
}


//MAIN PROGRAM

//fisrt of all I will create the minimap images

//newImage(FWHMminimap,"8-bit white",13,13,288);
//newImage(photoMinimap,"8-bit white",13,13,288);
newImage(FWHMminimap,"8-bit white",336,168,1);
newImage(photoMinimap,"8-bit white",336,168,1);


currImg = "lyso.raw";
selectImage(currImg);
height = getHeight();
width = getWidth();
totSlices = 144;
vals = newArray(width*2);

//now I create two images for the FWHM and for the maxPos
imgFWHM = currImg+"FWHM_graph";
imgMaxPos = currImg+"photopeak_graph";
newImage(imgFWHM,"8-bit white",totSlices,width,1);
newImage(imgMaxPos,"8-bit white",totSlices,width,1);

//used to improve the macro execution speed
// when several operations are realized on the images on screen
setBatchMode(true);

for (i = 0; i< totSlices; i++) {  // totSlices; i++){
	vals = findMaxPos_FWHM(currImg,i+1,20,10);
	for(j = 0; j<width; j++){
		selectImage(imgMaxPos);
		setPixel(i,j,vals[j]);
		selectImage(imgFWHM);
		setPixel(i,j,vals[j+width]);		
	}
}

//create the minimaps
profValues1 = newArray(width);
profValues2 = newArray(width);

indYimg =0;
indXimg =0;
for( i = 0; i< totSlices; i++){
	selectImage(imgMaxPos);
	makeLine(i,0,i,width);
	profValues1 = getProfile();
	selectImage(imgFWHM);
	makeLine(i,0,i,width);
	profValues2 = getProfile();
	currIndex = 0;

        //plotting the pixels directly to reorder the image as the minimap...
	indYimg = i%6;
	if(indYimg == 0 && i > 0){
		indXimg++;
	}
	
	for(j = 0; j< 13; j++){
		for(k = 0; k<13; k++){		
			selectImage(photoMinimap);
			setPixel((k+(indXimg*14)),(j+(indYimg*14)),profValues1[currIndex]);
			//setSlice(i+145);
			//setPixel(j,k,profValues1[currIndex]);

			selectImage(FWHMminimap);
			setPixel((k+(indXimg*14)),(j+(indYimg*14)),profValues2[currIndex]);
			//setSlice(i+145);
			//setPixel(j,k,profValues2[currIndex]);
			currIndex++;			
		}
	}
	
}



setBatchMode(false);


currImg = "gso.raw";
selectImage(currImg);
height = getHeight();
width = getWidth();
totSlices = 144;
vals = newArray(width*2);

//now I create two images for the FWHM and for the maxPos
imgFWHM = currImg+"FWHM_graph";
imgMaxPos = currImg+"photopeak_graph";
newImage(imgFWHM,"8-bit white",totSlices,width,1);
newImage(imgMaxPos,"8-bit white",totSlices,width,1);

//used to improve the macro execution speed
// when several operations are realized on the images on screen
setBatchMode(true);

for (i = 0; i< totSlices; i++) {  // totSlices; i++){
	vals = findMaxPos_FWHM(currImg,i+1,20,10);
	for(j = 0; j<width; j++){
		selectImage(imgMaxPos);
		setPixel(i,j,vals[j]);
		selectImage(imgFWHM);
		setPixel(i,j,vals[j+width]);		
	}
}


//create the minimaps
profValues1 = newArray(width);
profValues2 = newArray(width);

indYimg =0;
indXimg =0;
for( i = 0; i< totSlices; i++){
	selectImage(imgMaxPos);
	makeLine(i,0,i,width);
	profValues1 = getProfile();
	selectImage(imgFWHM);
	makeLine(i,0,i,width);
	profValues2 = getProfile();
	currIndex = 0;

        //plotting the pixels directly to reorder the image as the minimap...
	indYimg = (i%6)+6;
	if(indYimg == 6 && i > 0){
		indXimg++;
	}
	
	for(j = 0; j< 13; j++){
		for(k = 0; k<13; k++){		
			selectImage(photoMinimap);
			setPixel((k+(indXimg*14)),(j+(indYimg*14)),profValues1[currIndex]);
			//setSlice(i+145);
			//setPixel(j,k,profValues1[currIndex]);

			selectImage(FWHMminimap);
			setPixel((k+(indXimg*14)),(j+(indYimg*14)),profValues2[currIndex]);
			//setSlice(i+145);
			//setPixel(j,k,profValues2[currIndex]);
			currIndex++;			
		}
	}
	
}

//desactivate the batch  mode in order to be able
// to work with the images on screen
setBatchMode(false);

//now I create the montages
//selectImage(photoMinimap);
//run("Make Montage...", "columns=24 rows=12 scale=1 first=1 last=288 increment=1 border=1 font=12");
//selectImage(FWHMminimap);
//run("Make Montage...", "columns=24 rows=12 scale=1 first=1 last=288 increment=1 border=1 font=12");


//merge the channels to obtain an RGB image
//first we improve the brightness/contrast of the FWHM image
run("Multiply...", "value=3 slice");
run("Merge Channels...", "c1=FWHM_mini c2=photo_mini keep");
//selectWindow("minimapa.raw");


//Fit.plot();
//imgFWHM = "FWHM_graph";
//imgMaxPos = "gso.rawphotopeak_graph";
selectImage(imgMaxPos);
//makeLine(10,0,10,169);

//print("valor sigma es "+Fit.p(3));
//makeLine(128,0,128,256);










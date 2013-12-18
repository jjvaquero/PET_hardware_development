// Detector measurements macro.
// Run with image already open.

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
 * 
 */
function findSlopeChange(dataArray,startIndex,dir,moveDir){
	currIndex = startIndex; // -5 to adjust for the while loop
	currMean = 1; 
	prevMean = 0; 
	numMean = 10; //number of values used to calculate the next mean
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
		while( (getPixel(i,j) < threshold) && (j > 10)){j--;}
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

//MAIN PROGRAM

//code to be modified
imgName = getTitle();
numSlices=144;
thresholdValue = 20.0;
localMaxPixels = newArray(nSlices);


localMaxPixels = findMaxGainPixels(imgName,thresholdValue,numSlices);

for( i = 0; i<numSlices; i++){
 print("Valor max detector "+(i+1)+" es "+localMaxPixels[i]); 
}

//maxGain Pixels have already been found
//get the profiles for each of the lines
selectImage(imgName);
height = getHeight();
width = getWidth();

tmpArray = newArray(height);
profilesArray  = newArray(height*numSlices);
//ImageJ macro language does not support 2D array so an image
//is used instead
for (i = 0 ; i <numSlices; i++){
	setSlice(i+1);
	makeLine(localMaxPixels[i],0,localMaxPixels[i],height);
	tmpArray = getProfile();
	for(j = 0; j<height; j++) {
		profilesArray[j+i*height] = tmpArray[j];
	}	
	
}

imgPixels = "maxGainPixels";
newImage(imgPixels,"8-bit white",numSlices,height,1);
selectImage(imgPixels);
index = 0; 
for ( i = 0; i< numSlices ; i ++){
	for(j = 0; j< height; j++){
		setPixel(i,j,profilesArray[index]); //profilesArray[index]);
		index++;
	}
}

//encuentro los saltos del threshold
width = getWidth();
height = getHeight();
thrsArray = newArray(width);
thrsArray =  findThresholsdIndex(imgPixels,thresholdValue);

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

for (i = 0; i< width; i++){
	//first i will get the array of the corresponding crystal
	makeLine(i,0,i,height);
	tmpProfArray = getProfile();
	index1[i] = findSlopeChange(tmpProfArray, thrsArray[i],1,-1);
	index2[i] = findSlopeChange(tmpProfArray, (index1[i]-30),-1,-1);

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
		FWHMValues[i] = findFWHM(tmpArray, maxVals[i], (thrsArray[i]-index2[i]));
		//find the position of maximum value in the profile/energy spectrum
		j = 0; 
		while( tmpArray[j] != maxVals[i]){j++;}
		maxPos[i] = index2[i]+j;
		
		
	}

	print("Detector "+i+", Máximo "+maxVals[i]+" Pos: "+maxPos[i]+" Mínimo: "+minVals[i]+" FWHM :"+FWHMValues[i]);
}

Fit.plot();

makeLine(128,0,128,256);










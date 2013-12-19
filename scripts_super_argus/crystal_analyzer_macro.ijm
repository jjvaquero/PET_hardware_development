// Detector measurements macro.
// Run with image already open.

//name of the image that should be open
// it should be a 336*168 16-bit unsigned 
//imgName = "minimapa.raw";
//to work with an already opened image
imgName=getTitle();

//variables used in the classification
lysoMeanFactor = 2;
lysoStdFactor = 2;
gsoMeanFactor = 2;
gsoStdFactor = 2;


// FUNCTIONS

// Returns row y as a pixel array
function getRow(y, width) {
    row = newArray(width);
    for (i = 0; i < width; i++) {
        row[i] = getPixel(i, y);
    }
    return row;
}

// Returns row x as a pixel array
function getColumn(x, height) {
    column = newArray(height);
    for (i = 0; i < height; i++) {
        column[i] = getPixel(x, i);
    }
    return column ;
}

// Returns whether the given array is a black line
function isLine(data) {
    reference = data[0];
    for (i = 0; i < data.length; i++) {
        if (data[i] != reference) return false        
    }
    return true;
}

// Set column x black
function setColumnBlack(x, height) {
    for (i = 0; i < height; i++) {
        setPixel(x, i, 0);
    }
}

// Set row y black
function setRowBlack(y, width) {
    for (i = 0; i < width; i++) {
        setPixel(i, y, 0);
    }
}

/*
 * function to generate the ROIs that we are going to use
 * 
 * modify this to make 13x13 squares
 */
function generateROIs(imageName){
	selectImage(imageName);
	height = getHeight();
	width = getWidth();
	gridName = "Grid"; // Name for the grid image

	//used to make the system faster
	//setBatchMode(true);
	// Create grid image and fill it with white
	newImage(gridName, "8-bit white", width, height, 1);

	// Iterate the original image, detect column lines
	// and set them to black in the grid image
	selectImage(imageName);
	for (i = 0; i < width; i++) {
    		column = getColumn(i, height);
    		if (isLine(column)) {
        		// Blank column in grid image
        		selectWindow(gridName);
       	 		setColumnBlack(i, height);
        		selectWindow(imageName);
    		}
	}

	// Same for rows
	for (i = 0; i < height; i++) {
    		row = getRow(i, width);
    			if (isLine(row)) {
        			selectWindow(gridName);
        			setRowBlack(i, width);
        			selectWindow(imageName);
    		}
	}

	// Redirect the measurements to the original image
	run("Set Measurements...", "area mean standard redirect=&imageName decimal=3");

	// Select the grid and run the particle analyzer
	selectImage(gridName);
	setThreshold(129, 255);
	setOption("BlackBackground", false);
	run("Convert to Mask");
	run("Analyze Particles...", "size=0-Infinity circularity=0.00-1.00 show=Nothing add");

	selectImage(gridName);
	close();
	selectWindow(imageName);

	
}
/* 
fin del codigo de chema
*/

/*
 * 
 * 
 */
function crsystalClassification(imgName){
	// Select all ROIs and measure
	n = roiManager("count");
	rois = newArray(n);
	for (i = 0; i < n; i++) rois[i] = i;

	roiManager("select", rois);
	roiManager("Measure");
	
	lysoMeansArray = newArray(n/2);
	lysoStdArray = newArray(n/2);
	gsoMeansArray = newArray(n/2);
	gsoStdArray = newArray(n/2);
	//Now I save the means and the std values
	for ( i = 0; i < n/2; i ++){
		lysoMeansArray[i] = getResult("Mean",i);
		lysoStdArray[i] = getResult("StdDev",i);
		gsoMeansArray[i] = getResult("Mean",n/2+i);
        	gsoStdArray[i] = getResult("StdDev",n/2+i);
	}

	//get the mean of all the means for the two crystals
	Array.getStatistics(lysoMeansArray, minLyso, maxLyso, meanLyso, stdDevLyso) ;
	Array.getStatistics(gsoMeansArray, minGso, maxGso, meanGso, stdDevGso);
	Array.getStatistics(lysoStdArray, minLyso, maxLyso, meanLysoStd, stdDevLyso) ;
	Array.getStatistics(gsoStdArray, minGso, maxGso, meanGsoStd, stdDevGso);

	//print("Media LYSO = "+meanLyso);
	//print("Media GSO = "+meanGso); 


	wrongCrystal = newArray(n);
	nWrong = 0;

	for ( i = 0; i < n/2; i ++){
    		wrongCrystal[i] = 0;
		wrongCrystal[n/2+i] = 0;
		if (lysoMeansArray[i] < (meanLyso-meanLyso/lysoMeanFactor)){
			wrongCrystal[i] = 1;
			nWrong++;
		}
		else if (lysoStdArray[i] > (meanLysoStd*lysoStdFactor)){
			wrongCrystal[i] = 1;
			nWrong++;
		}
	
		if (gsoMeansArray[i] < (meanGso-meanGso/gsoMeanFactor) || gsoMeansArray[i] > (meanGso+meanGso/gsoMeanFactor)){
			wrongCrystal[n/2+i] = 1;
			nWrong++;
		}
		else if (gsoStdArray[i] > (meanGsoStd*gsoStdFactor)){
			wrongCrystal[n/2+i] = 1;
			nWrong++;
		}
	}

	print("Cristales Mal "+nWrong); 
	//now I will show only the wrong crystals
	roiManager("deselect");
	wrongCrystalsArray = newArray(nWrong);
	index = 0;
	for(i = 0; i <n; i++){
		if(wrongCrystal[i]){
			wrongCrystalsArray[index] = i;
			index++;
			print("Mal "+(i+1));
		}
	}
	roiManager("select", wrongCrystalsArray);
	roiManager("OR");	
}



// MAIN PROGRAM
//run("Raw...", "open=/tmp/minimapa.raw image=[16-bit Signed] width=336 height=168 offset=0 number=1 gap=0 little-endian");
//run("In [+]");
//run("In [+]");

generateROIs(imgName);
crsystalClassification(imgName);








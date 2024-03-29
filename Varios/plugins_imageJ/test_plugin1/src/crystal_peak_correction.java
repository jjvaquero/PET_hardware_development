import ij.IJ;
import ij.gui.Roi;
//import ij.plugin.frame.RoiManager;
import ij.ImagePlus;
import ij.process.ImageProcessor;
import ij.io.*;
import ij.plugin.*;
import ij.process.ImageStatistics;
import ij.measure.Calibration;
import ij.measure.Measurements;
import ij.util.ArrayUtil;
import ij.measure.CurveFitter;
import ij.gui.NewImage;
import ij.plugin.RGBStackMerge;



public class crystal_peak_correction implements PlugIn {
	ImagePlus LYSOimgPlus;
	ImagePlus img;
	ImagePlus GSOimgPlus;
	
	ImagePlus lysoMaxPos;
	ImagePlus lysoFWHM;
	ImagePlus gsoMaxPos;
	ImagePlus gsoFWHM;
	
	ImagePlus FWHMMiniMap;
	ImagePlus photoMiniMap;
	
	ImageProcessor myProc;
	ImageProcessor LYSOproc;
	ImageProcessor GSOproc;
	
	ImageProcessor MaxProc;
	ImageProcessor FWHMProc;

	
	ImageProcessor FWHMMiniProc; 
	ImageProcessor photoMiniProc;
	
	miniMap_Detector myAnalyzer;
	
	//values used on the algorithms
	//values used to detect the thresholds and the slopes
	int thrsVal = 20;
	int meanSize = 10;
	
	//variables used for the miniMaps generation
	//FWHMminimap = "FWHM_mini";
	//photoMinimap = "photo_mini";
	int miniMapWidth = 336; 
	int miniMapHeight = 168;
	int miniSquareSize = 13;
	
		
    public void run(String arg) {
		//first I will open the new LYSO image
		ImportDialog impDiag = new ImportDialog("lyso.raw","C:/Users/rchil/Desktop/Detect_SuperArgus");
		FileInfo fInf = impDiag.getFileInfo();
		OpenDialog myDiag= new OpenDialog("Load LYSO crystal");
		fInf.fileName = myDiag.getFileName();		
		fInf.directory = myDiag.getDirectory();
		FileOpener fOpen = new FileOpener(fInf);		
		LYSOimgPlus = fOpen.open(false);
		//now i do the same for the GSOimg
	    myDiag= new OpenDialog("Load GSO crystal");
		fInf.fileName = myDiag.getFileName();		
		fInf.directory = myDiag.getDirectory();
		fOpen = new FileOpener(fInf);		
		GSOimgPlus = fOpen.open(false);
		
		
		//img = fOpen.open(true);
		// work will be done on this image processor object
		//myProc = img.getProcessor();
		LYSOproc = LYSOimgPlus.getProcessor();
		GSOproc = GSOimgPlus.getProcessor();
		
		//now I need to create the new images....

		/*
		double[]  means = new double[sizeX*sizeY];
		double[] stdDevs = new double[sizeX*sizeY];
		*/
		
		
		/*crystal peak correction alg
		 * 
		 */
		/*
		//name of the images that should be open to execute this script
		// they should both be 169*256*144 16-bit Signed values
		lysoImg = "lyso.raw";
		gsoImg = "gso.raw";
		//names fot the map images that will be generated
		lysoMaxPos = "lyso_MaxPos_Map";
		lysoFWHM = "lyso_FWHM_Map";
		gsoMaxPos = "gso_MaxPos_Map";
		gsoFWHM = "gso_FWHM_Map";
		*/
		
		
		int tmpWidth = LYSOimgPlus.getWidth();
    	int totSlices = LYSOimgPlus.getNSlices();
		//create the maps containing the photopeaks and the FWHM for each crystal
    	lysoMaxPos = NewImage.createByteImage("maxPosMap", totSlices, tmpWidth, 1, 0);
    	lysoFWHM = NewImage.createByteImage("FHWMMaps", totSlices, tmpWidth, 1, 0);
    	
    	ImageProcessor lysoMaxPosProc = lysoMaxPos.getProcessor();
    	ImageProcessor lysoFWHMProc = lysoFWHM.getProcessor();
		
		generateMaxPosFWHM(LYSOimgPlus,lysoMaxPosProc,lysoFWHMProc);
		
		//lysoMaxPos.show(); lysoMaxPos.updateAndDraw();
		//lysoFWHM.show();   lysoFWHM.updateAndDraw();
		
    	gsoMaxPos = NewImage.createByteImage("maxPosMap", totSlices, tmpWidth, 1, 0);
    	gsoFWHM = NewImage.createByteImage("FHWMMaps", totSlices, tmpWidth, 1, 0);
    	
    	ImageProcessor gsoMaxPosProc = gsoMaxPos.getProcessor();
    	ImageProcessor gsoFWHMProc = gsoFWHM.getProcessor();
		generateMaxPosFWHM(GSOimgPlus,gsoMaxPosProc,gsoFWHMProc);
		
		
		//create the minimaps
		//fisrt of all I will create the minimap images
		//FWHMminimap = "FWHM_mini";
		//photoMinimap = "photo_mini";
		FWHMMiniMap = NewImage.createByteImage("FWHM_mini", miniMapWidth, miniMapHeight, 1, 0);
		photoMiniMap = NewImage.createByteImage("photo_mini", miniMapWidth, miniMapHeight, 1, 0);
		
		
		FWHMMiniProc = FWHMMiniMap.getProcessor(); 
		photoMiniProc = photoMiniMap.getProcessor();
		
		//now i will populate with the results from the previous functions
		
		MaxProc = lysoMaxPos.getProcessor();
		FWHMProc = lysoFWHM.getProcessor();
		createMiniMap(photoMiniProc,FWHMMiniProc,0,MaxProc,FWHMProc);
		
		MaxProc = gsoMaxPos.getProcessor();
		FWHMProc = gsoFWHM.getProcessor();
		createMiniMap(photoMiniProc,FWHMMiniProc,6,MaxProc,FWHMProc);

		IJ.log("miniMaps created");
		
		FWHMMiniMap.show();
		photoMiniMap.show();
		
		//now I can generate the RGBMap
		ImagePlus[] imgRGBstack = new ImagePlus[3];
		ImageProcessor tmpProc = FWHMMiniMap.getProcessor();
		tmpProc.multiply(3);
		
		imgRGBstack[0] = FWHMMiniMap;
		imgRGBstack[1] = photoMiniMap;
		imgRGBstack[2] =  NewImage.createByteImage("blank_channel", miniMapWidth, miniMapHeight, 1, 0);
		ImagePlus finalRGB = RGBStackMerge.mergeChannels(imgRGBstack, true);
		finalRGB.show();
		
		int nCrystals = miniMap_Detector.sizeX*miniMap_Detector.sizeY;
		myAnalyzer = new miniMap_Detector();
		int[] wrongFWHM = new int[nCrystals];
		int[] wrongPeaks = new int[nCrystals];
		wrongFWHM = myAnalyzer.Analyze(FWHMMiniMap);
		wrongPeaks = myAnalyzer.Analyze(photoMiniMap);
		
		Roi[] tmpRois= myAnalyzer.getRois();
	    tmpProc = finalRGB.getProcessor();
	    tmpProc.setColor(0x000000FF);
		for (int i = 0; i < nCrystals ; i++){
			if (wrongFWHM[i] > 0 || wrongPeaks[i] > 0){
				tmpProc.draw(tmpRois[i]);
			}
		}
	    finalRGB.updateAndDraw();
		/*int imgID1 = FWHMMiniMap.getID();
		int imgID2 = photoMiniMap.getID();		
		IJ.runPlugIn("minimap_Analyzer", String.valueOf(imgID1));
		IJ.runPlugIn("minimap_Analyzer", String.valueOf(imgID2));
		*/
		
		
	}

    
    //extra functions used by the other members of the class
  //function to work with the image that contains all the max pixels
    private int[] findThresholsdIndex(ImageProcessor imgProc,int threshold){
    	//selectImage(imgName);  	
    	int height = imgProc.getHeight();
    	int width = imgProc.getWidth();
    	int[] thrsIndexs = new int[width];

    	int j = height - 10;
    	for (int i = 0; i < width; i++){
    		while( ((imgProc.getPixel(i,j) - 32768)< threshold) && (j > 10)){j--;}
    		thrsIndexs[i] = j;
    		j = height - 10;	
    	}

    	return thrsIndexs;
    }

    private int findFWHM(double[] dataArray, int maxValue, int length){
    	double midValue = maxValue/2;
    	int indMid1 = 0;
    	int indMid2 = 0;
    	//find the first index 
    	int i = 0;
    	while( dataArray[i] < midValue){
    		i++;
    	}
    	indMid1 = i;
    	i = length-1;
    	while( dataArray[i] < midValue){
    		i--;
    	}
    	indMid2 = i; 
    	int FWHM = indMid2 - indMid1;
    	return FWHM;
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
    private int findSlopeChange(int[] dataArray,int startIndex,int dir,int moveDir,int numMean){
    	int currIndex = startIndex; // -5 to adjust for the while loop
    	int currMean = dir; 
    	int prevMean = 0; 
    	//numMean = 10; //number of values used to calculate the next mean
    	while ( (currMean - prevMean)*dir > 0 ){
    		currIndex+=moveDir;
    		prevMean = currMean;
    		currMean = 0;
     		for (int i = 0; i< numMean; i++){
     			//check that i dont get out of the array
     			if ( (currIndex+(i*moveDir) < 256) && (currIndex+(i*moveDir)>0)){
     				currMean += dataArray[currIndex+(i*moveDir)];
     			}
    		}
    		currMean/= numMean;	
    	
    	}
    	return currIndex;
    	
    	
    }
    
    /*
     * function that returns the position of the photopeak and the FWHM for each column in an image
     * data is returned in a single array because imageJ macros does not support multi dimension arrays
     * imgName --> name of the image that will be used
     * slcie --> slice to use, this is added to be able to work with multiSlice images
     * threshold --> thresold from wich to start looking for the maximum
     * numMean --> number of values used to compute the mean on the slope detection algorithm
     */
    private  int[] findMaxPos_FWHM(ImageProcessor imgProc,int nSlice,int threshold,int numMean){

    	//selectImage(imgName);
    	imgProc.setSliceNumber(nSlice);

    	//find the indexes where the values reach the given threshold
    	int width =imgProc.getWidth();
    	int height = imgProc.getHeight();
    	int[] thrsArray = new int[width];
    	thrsArray =  findThresholsdIndex(imgProc,threshold);

    	int[] index1 = new int[width];
    	int[] index2 = new int[width];
    	int[]tmpProfArray = new int[height];

    	//values that I will save
    	int[] minVals = new int[width];
    	int[] maxVals = new int[width];
    	int[] FWHMValues = new int[width];
    	int[] maxPos = new int [width];
    	int minTmp = 0; 
    	int meanTmp = 0;
    	int stdTmp = 0;

    	//array to store the results
    	int[]results = new int[width*2];

    	for (int i = 0; i< width; i++){
    		//first i will get the array of the corresponding crystal
    		
    		//makeLine(i,0,i,height);   		
    		//tmpProfArray = getProfile();
    		imgProc.getColumn(i, 0, tmpProfArray, height);
 
    		index1[i] = findSlopeChange(tmpProfArray, thrsArray[i],1,-1,10);
    		index2[i] = findSlopeChange(tmpProfArray, (index1[i]-30),-1,-1,10);

    		//error check
    		if (((thrsArray[i] - index2[i]) > 0) && (index2[i]>0) ){
    			double[] tmpArrayY = new double[thrsArray[i]- index2[i]];
    			double[] tmpArrayX = new double[thrsArray[i]- index2[i]];
    		
    			//copy only the 511KeV peak to a new array
    			for (int j = 0; j< (thrsArray[i]-index2[i]); j++){
    				tmpArrayY[j] = tmpProfArray[index2[i]+j];
    				tmpArrayX[j] = j;
    			}
    	       		//fit a Guassian curve to it
    	       		//Fit.doFit("GAUSSIAN",tmpArrayX,tmpArrayY);
    	       		CurveFitter cFit = new CurveFitter(tmpArrayX,tmpArrayY);
    	       		cFit.doFit(CurveFitter.GAUSSIAN);
    	       		
    	       		double[] tmpArray = new double[thrsArray[i]-index2[i]];	
    	       		//TODO fix this, using another variable because
    	       		//array util constructor only takes floats....
    	       		float[] tmpsasa = new float[thrsArray[i]-index2[i]];	

    	      		//for (int j = 0; j< (thrsArray[i]- index2[i]); j++){
    	      			//tmpArray[j] = Fit.f(j);
    	     
    			   //}
    	       		//TODO can't type cast to float[]....
    	       		tmpArray = cFit.getYPoints();
    	       		for (int j = 0; j< (thrsArray[i]- index2[i]); j++){
    	       			tmpsasa[j] = (float) tmpArray[j];
    	       		}
    			//now I can find the values that I want
    			minVals[i] =(int) tmpArray[0];
    			//Array.getStatistics(tmpArray, minTmp, maxVals[i], meanTmp, stdTmp);	
    			ArrayUtil aUtil = new ArrayUtil(tmpsasa);
    		    maxVals[i] = (int)aUtil.getMaximum();
    		    meanTmp = (int) aUtil.getMean();
    		    stdTmp = (int) aUtil.getVariance();    		    
    			
    			//FWHMValues[i] = 2.355*Fit.p(3);  //FWHM = 2.355+sigma
    		    double[] fitParams = new double[cFit.getNumParams()];
    		    fitParams = cFit.getParams();
    		    FWHMValues[i] =(int)(2.355*fitParams[3]);
    			//this is done because imageJ curveFitter fails sometimes
    			if (FWHMValues[i] > 150){
    				FWHMValues[i]  = findFWHM(tmpArray, maxVals[i], (thrsArray[i]-index2[i]));
    			}
    		
    		
    			//find the position of maximum value in the profile/energy spectrum
    			int j = 0; 
    			while( tmpArray[j] != maxVals[i]){j++;}
    			maxPos[i] = index2[i]+j;
    		
    		
    		} 

    	
    		//print("Detector "+i+", M�ximo "+maxVals[i]+" Pos: "+maxPos[i]+" M�nimo: "+minVals[i]+" FWHM :"+FWHMValues[i]);
    		//now i save the values in one array
    		results[i] = maxPos[i];
    		results[(i+width)] = FWHMValues[i];
    	}
    	
    	return results;
    	
    }
    
    /*
     *  function used to create the minimaps
     *  maxPosMiniMap --> name of the maxPos miniMap image
     *  FWHMMiniMap --> name of the FWHM mini map image
     *  type --> 0 = lyso, 6 = gso
     *  maxPosMap -->maxPos
     */
    private void createMiniMap(ImageProcessor maxPosMiniMap,ImageProcessor FWHMMiniMap,int type,ImageProcessor maxPosMap,ImageProcessor FWHMMap){

    	//selectImage(maxPosMap);
    	int height = maxPosMap.getHeight();
    	int width = maxPosMap.getWidth();
    	
    	int[] profValues1 = new int[height];
    	int[] profValues2 = new int[height];

    	int indYimg =0;
    	int indXimg =0;
    	//
    	//setBatchMode(true);
    	for(int  i = 0; i< width; i++){
    		//selectImage(maxPosMap);
    		//makeLine(i,0,i,height);
    		//profValues1 = getProfile();
    		maxPosMap.getColumn(i, 0, profValues1, height);
    		//selectImage(FWHMMap);
    		//makeLine(i,0,i,height);
    		//profValues2 = getProfile();
    		FWHMMap.getColumn(i, 0, profValues2, height);
    		int currIndex = 0;

            	//plotting the pixels directly to reorder the image as the minimap...
    		indYimg = i%6+type;
    		if(indYimg == type && i > 0){
    			indXimg++;
    		}
    	
    		for(int j = 0; j< 13; j++){
    			for(int k = 0; k<13; k++){		
    				//selectImage(maxPosMiniMap);    				
    				//setPixel((k+(indXimg*14)),(j+(indYimg*14)),profValues1[currIndex]);
    				maxPosMiniMap.putPixel((k+(indXimg*14)),(j+(indYimg*14)),profValues1[currIndex]);

    				//selectImage(FHWMMiniMap);
    				//setPixel((k+(indXimg*14)),(j+(indYimg*14)),profValues2[currIndex]);
    				FWHMMiniMap.putPixel((k+(indXimg*14)),(j+(indYimg*14)),profValues2[currIndex]);
    				currIndex++;			
    			}
    		}
    	
    	}
    	//setBatchMode(false);	
    }
    
    private void generateMaxPosFWHM(ImagePlus inputImg, ImageProcessor maxPosMap, ImageProcessor FWHMMap){
    	
    	//selectImage(inputImg);
    	ImageProcessor inputImgProc = inputImg.getProcessor();
        //int height = inputImg.getHeight();
    	int width = inputImg.getWidth();
    	int totSlices = inputImg.getNSlices();
    	int[] vals = new int[width*2];

    	//now I create two images for the FWHM and for the maxPos
    	//newImage(maxPosMap,"8-bit white",totSlices,width,1);
    	//newImage(FWHMMap,"8-bit white",totSlices,width,1);
    	//maxPosMap = NewImage.createByteImage("maxPosMap", totSlices, width, 1, 0);
    	//FWHMMap = NewImage.createByteImage("FHWMMaps", totSlices, width, 1, 0);
    	
    	
    	//used to improve the macro execution speed
    	// when several operations are realized on the images on screen
    	//setBatchMode(true);
    	for (int i = 0; i< totSlices; i++) {  // totSlices; i++){
    		inputImg.setZ(i+1);
    		inputImgProc = inputImg.getProcessor();
    		vals = findMaxPos_FWHM(inputImgProc,i+1,thrsVal,meanSize);
    		for(int j = 0; j<width; j++){
    			//selectImage(maxPosMap);
    			//setPixel(i,j,vals[j]);
    			//selectImage(FWHMMap);
    			//setPixel(i,j,vals[j+width]);	
    			maxPosMap.putPixel(i, j, vals[j]);
    			FWHMMap.putPixel(i, j, vals[j+width]);
    		}
    	}
    	//setBatchMode(false);
    }
    
}
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
import ij.WindowManager;


public class minimap_Analyzer implements PlugIn {
	ImagePlus img;
	ImageProcessor myProc;

		
    public void run(String arg) {
		//arg will contain the string with the image ID
    	
    	//first I have to convert arg to an int
    	int imgID = Integer.parseInt(arg);
    	img = WindowManager.getImage(imgID);
    	
    	
//		ImportDialog impDiag = new ImportDialog("minimap.raw","C:/Users/rchil/Desktop/Detect_SuperArgus");
//		FileInfo fInf = impDiag.getFileInfo();
//		OpenDialog myDiag= new OpenDialog("Load Minimapa");
//		fInf.fileName = myDiag.getFileName();		
//		fInf.directory = myDiag.getDirectory();
//		FileOpener fOpen = new FileOpener(fInf);
//		
//		img = fOpen.open(true);
		// work will be done on this image processor object
		myProc = img.getProcessor();

		int sizeX = 24; 
		int sizeY = 12;
		ImageProcessor tmpProc;  // extra image processor needed to work with the cropped versions
		ImageStatistics nStats = new ImageStatistics(); //
		Calibration nCal = img.getCalibration(); //calibration data needed by the getStatistics
		// I will need different arrays for the LYSO and the GSO 
		float[] LYSOmeans = new float[sizeX*sizeY/2];
		float[] LYSOstds = new float[sizeX*sizeY/2];
		float[] GSOmeans = new float[sizeX*sizeY/2];
		float[] GSOstds = new float[sizeX*sizeY/2];
		/*
		double[]  means = new double[sizeX*sizeY];
		double[] stdDevs = new double[sizeX*sizeY];
		*/
		
		Roi [] rois = new Roi[sizeX*sizeY];
		int index = 0;
		
		img.updateAndDraw();
		
		
		//Divide the image in different ROIs and measure the mean and the std 
		//of the ROIs, ROIs will be stored in an array in case they are needed afterwards
		for (int y = 0; y <sizeY; y++){
			for ( int x = 0; x < sizeX; x++){
				// each ROI is a 12x12 square
				rois[index] = new Roi(x*14,y*14,12,12);
				myProc.setRoi(rois[index]);
				// obtain a new image processor to get it's statistics
				tmpProc = myProc.crop();
				//get the data needed
				nStats = ImageStatistics.getStatistics(tmpProc, Measurements.MEAN+Measurements.STD_DEV,nCal); //6 = MEAN + STD_DEV
				if (y < sizeY/2){
					LYSOmeans[index] = (float) nStats.mean;
					LYSOstds[index] = (float) nStats.stdDev;
				}else{
					GSOmeans[index-(sizeX*sizeY/2)] = (float) nStats.mean;
					GSOstds[index-(sizeX*sizeY/2)] = (float) nStats.stdDev;
				}
				//means[index] = nStats.mean;
				//stdDevs[index] = nStats.stdDev;
				//myProc.draw(rois[index]);
				index++;	
				//used only to check that it works, can be commented later on
				//IJ.log("Cristal "+ String.valueOf(index-1)+ " media "+ String.valueOf(nStats.mean) + "desv "+String.valueOf(nStats.stdDev));
				//to make sure that ROIs are not added one to the other
				myProc.resetRoi();
				}			

		}
		
		//Now I try the same implementation as before...to see how it works...
		
		//to get the means from the 4 arrays, I will need an ArrayUtil object
		ArrayUtil aUtil = new ArrayUtil(LYSOmeans);
		float LYSOmeanVal = (float)aUtil.getMean();
		aUtil = new ArrayUtil(LYSOstds);
		float LYSOstdMean = (float) aUtil.getMean();
		aUtil = new ArrayUtil(GSOmeans);
		float GSOmeanVal = (float) aUtil.getMean();
		aUtil = new ArrayUtil(GSOstds);
		float GSOstdMean = (float) aUtil.getMean();

		//variables used in the classification
		int lysoMeanFactor = 2;
		int lysoStdFactor = 2;
		int gsoMeanFactor = 2;
		int gsoStdFactor = 2;
		
		int[] wrongCrystal = new int[sizeX*sizeY];
	    int nWrong = 0;
	    int n = sizeX*sizeY;

		for (int i = 0; i < n/2; i ++){
	    		wrongCrystal[i] = 0;
			    wrongCrystal[n/2+i] = 0;
			if (LYSOmeans[i] < (LYSOmeanVal-LYSOmeanVal/lysoMeanFactor)){
				wrongCrystal[i] = 1;
				nWrong++;
			}
			else if (LYSOstds[i] > (LYSOstdMean*lysoStdFactor)){
				wrongCrystal[i] = 1;
				nWrong++;
			}
		
			if (GSOmeans[i] < (GSOmeanVal-GSOmeanVal/gsoMeanFactor) || GSOmeans[i] > (GSOmeanVal+GSOmeanVal/gsoMeanFactor)){
				wrongCrystal[n/2+i] = 1;
				nWrong++;
			}
			else if (GSOstds[i] > (GSOstdMean*gsoStdFactor)){
				wrongCrystal[n/2+i] = 1;
				nWrong++;
			}
		}
		
		//Now I can plot the wrong crystals;
		myProc.setColor(0xFFFFFF);
		for(int i = 0; i < n; i++){
			if(wrongCrystal[i]>0) myProc.draw(rois[i]);
		}
		IJ.log("Cristales mal "+String.valueOf(nWrong));
		
		//function needs to be called in order to see the modifications 
		// done to the original image
		img.updateAndDraw();
		
		//annado todas las roi a un roi manager
		//not needed can be taken out later
		/*RoiManager roiM = new RoiManager();
		for(int i = 0 ; i < sizeX*sizeY ; i++){
			roiM.addRoi(rois[i]);
		}*/
	}
    
}
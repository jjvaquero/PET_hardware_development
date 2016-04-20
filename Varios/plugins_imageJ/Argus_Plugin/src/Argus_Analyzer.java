/*
 *  ImageJ plugin developed to be used with the SuperArgus detector raw images 
 *  provided by UCM
 *   For it to work properly we should first select the minimap.raw file in the file selection window
 *   that will open, also the lyso.raw and gso.raw files should be stored in the same folder
 *   The expected file format is the following
 *   minimap.raw => 16 bit signed, 336x168x1
 *   lyso.raw => 16 bit signed, 169x256x144
 *   gso.raw => 16 bit signed, 169x256x144
 *   
 *   The output will be
 *   - RGB image showing in red square the faulty detectors
 *   - fwhm.csv file stored on the same folder that the minimap.raw 
 *   containing the fwhm for each detector, each column is a crystal is row a detector
 *   - photopeaks.csv same as the previous file, but containing the photopeaks
 *   - wrongDetectors.csv file containing the faulty detectors, a one means that it is faulty
 *   first row the ones detected from the original minimap
 *   second row the ones detected from the photopeaks generated minimap
 *   third row the ones detected from the FWHM generated minimap
 * 
 *  @author Rigoberto Chil, rchil@hggm.es, Lab. Imagen Médica
 *  @version $Revision: 1.1 
 *  @Date:14/01/2014   
 * 
 * 
 */
import ij.gui.NewImage;
import ij.gui.Roi;
import ij.io.FileInfo;
import ij.io.FileOpener;
import ij.io.OpenDialog;
import ij.plugin.PlugIn;
import ij.plugin.RGBStackMerge;
import ij.process.*;

import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.util.Arrays;

import ij.*;



public class Argus_Analyzer implements PlugIn {
    //here we will store the original images
	ImagePlus imgLYSO; 
	ImagePlus miniMapa;
	ImagePlus imgGSO;
	
	ImagePlus miniMapFWHM; 
	ImagePlus miniMapPeaks;
	
	ImagePlus finalRGB;
	
	crystalAnalyzer crystalAnalyzer;
	miniMapAnalyzer mapAnalyzer;
	
	//value used to modify the FWHM minimap when creating the RGB composite image
	int FWHMmultfactor = 3;
	
	
	
	@Override
	public void run(String arg0) {
		FileInfo fInf = new FileInfo(); 
		FileOpener fOpen = new FileOpener(fInf);	
		//dialog used to select the miniMap image
		OpenDialog myDiag= new OpenDialog("Select minimap.raw");
		fInf.directory = myDiag.getDirectory();	
		
		//Now I will try to open the minimap image
		fInf.width = 336;
		fInf.height = 168; 
		fInf.intelByteOrder = true;
		fInf.fileType = FileInfo.GRAY16_SIGNED;
		//fInf.fileType = FileInfo.GRAY32_INT;
		fInf.nImages = 1;
		fInf.whiteIsZero = false;
		fInf.compression = 1;
		fInf.fileName = "minimapa.raw";
		fOpen = new FileOpener(fInf);
		miniMapa = fOpen.open(true);
		
		//now the lyso image
		fInf.width = 169;
		fInf.height = 256; 
		fInf.intelByteOrder = true;
		fInf.fileType = FileInfo.GRAY16_SIGNED;
		fInf.nImages = 144;
		fInf.whiteIsZero = false;
		fInf.compression = 1;
		fInf.fileName = "lyso.raw";
		fOpen = new FileOpener(fInf);
		imgLYSO = fOpen.open(false);
		
		//now the GSO image
		fInf.fileName = "gso.raw";
		fOpen = new FileOpener(fInf);
		imgGSO = fOpen.open(false);
		
		
		IJ.showStatus("Leidas las imágenes");
		
		IJ.showStatus("Obteniendo minimapas");
		
		//Now I can start the analysis
		crystalAnalyzer = new crystalAnalyzer(imgLYSO,imgGSO);
		ImagePlus[] tmpImgs = new ImagePlus[2];
		tmpImgs = crystalAnalyzer.getMiniMaps();
		miniMapPeaks = tmpImgs[0];
		miniMapFWHM = tmpImgs[1];
		miniMapPeaks.show();
		miniMapFWHM.show();
		
		IJ.showStatus("Analizando minimapas");
		
		//now I can analyze each of the miniMaps using the mapAnalyzer
		int nCrystals = miniMapAnalyzer.sizeX*miniMapAnalyzer.sizeY;
		mapAnalyzer = new miniMapAnalyzer();
		int[] wrongFWHM = new int[nCrystals];
		int[] wrongPeaks = new int[nCrystals];
		int[] wrongOrg = new int[nCrystals];
		//this is done in order to adjust to level values of the FWHM 
		//so that we can compare it with the peak values
		ImageProcessor tmpProc = miniMapFWHM.getProcessor();
		tmpProc.multiply(FWHMmultfactor);
		wrongFWHM = mapAnalyzer.Analyze(miniMapFWHM);
		wrongPeaks = mapAnalyzer.Analyze(miniMapPeaks);
		wrongOrg = mapAnalyzer.Analyze(miniMapa);
		
		IJ.showStatus("Generando imagen final en RGB");
		
		//Now I generate the final RGB image that will be the final result
		ImagePlus[] imgRGBstack = new ImagePlus[3];
		
		imgRGBstack[0] = miniMapFWHM;
		imgRGBstack[1] = miniMapPeaks;
		imgRGBstack[2] = NewImage.createByteImage("blank_channel", miniMapFWHM.getWidth(), miniMapFWHM.getHeight(), 1, NewImage.FILL_BLACK);
		finalRGB = RGBStackMerge.mergeChannels(imgRGBstack, true);
		finalRGB.show();
		
		//Now I draw the wrong crystals onto the finalRGB image
		Roi[] tmpRois= mapAnalyzer.getRois();
	    tmpProc = finalRGB.getProcessor();
	    tmpProc.setColor(0x000000FF);
		for (int i = 0; i < nCrystals ; i++){
			if (wrongFWHM[i] > 0 || wrongPeaks[i] > 0 || wrongOrg[i] > 0){
				tmpProc.draw(tmpRois[i]);
			}
		}
		
	    finalRGB.updateAndDraw();
		
	    try{
	    crystalAnalyzer.exportTXT2(fInf.directory);
	    //now we will store the wrong detector data
	    this.printWrongDetectors(wrongOrg, wrongPeaks, wrongFWHM, fInf);
	    
	   /*
	  //first I will print the peaks
    	PrintWriter mPrinter =   new PrintWriter(fInf.directory+"/wrongDetectors.csv");
    	String tmpStr; 
    	//first I will print the original minimap
    	tmpStr = Arrays.toString(wrongOrg);
    	tmpStr = tmpStr.replace('[', ' ');
    	tmpStr = tmpStr.replace(']', ' ');
	    mPrinter.println(tmpStr);
    	//photopeaks minimap
    	tmpStr = Arrays.toString(wrongPeaks);
    	tmpStr = tmpStr.replace('[', ' ');
    	tmpStr = tmpStr.replace(']', ' ');
	    mPrinter.println(tmpStr);	
    	//fwhm minimap
    	tmpStr = Arrays.toString(wrongFWHM);
    	tmpStr = tmpStr.replace('[', ' ');
    	tmpStr = tmpStr.replace(']', ' ');
	    mPrinter.println(tmpStr);	
	    
	    mPrinter.close();
	    */
	    }catch(Exception e){
	    	IJ.log(e.getMessage());
	    }
		
	    //now I 
		

		
	}
	
	
	private void printWrongDetectors(int[] wrong1, int[] wrong2, int[] wrong3, FileInfo localInf) throws FileNotFoundException{
		PrintWriter mPrinter =   new PrintWriter(localInf.directory+"/wrongDetectors.csv");
    	String tmpStr; 
    	
    	int nCrystals = miniMapAnalyzer.sizeX*miniMapAnalyzer.sizeY;
    	
    	for (int i = 0; i< nCrystals ; i++){
    		if(wrong1[i]> 0){
    			tmpStr = "1,";
    		}else{
    			tmpStr = "0,";
    		}
    		if(wrong2[i]> 0){
    			tmpStr = tmpStr+"1,";
    		}else{
    			tmpStr = tmpStr+"0,";
    		}
    		if(wrong3[i]> 0){
    			tmpStr = tmpStr+"1,";
    		}else{
    			tmpStr = tmpStr+"0,";
    		}	
    	   mPrinter.println(tmpStr);
    	   tmpStr = "";
    	}	
	    
	    mPrinter.close();
	}
	


}

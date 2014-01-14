import java.io.PrintWriter;
import java.util.Arrays;

import ij.*;
import ij.process.*;
import ij.plugin.filter.*;

public class test_eclipse implements PlugInFilter {
	ImagePlus imp;

	public int setup(String arg, ImagePlus imp) {

		boolean wrong_version = IJ.versionLessThan("1.46r");
		if (wrong_version)
			return DONE;
		this.imp = imp;
		return DOES_8G;
	}
	
	public void run(ImageProcessor ip) {
		IJ.showStatus("Start processing...");
		IJ.wait(200);
		int height = ip.getHeight();
		int width = ip.getWidth();
		for (int x = 0; x < width; x++) {
			for(int y = 0; y < height; y++) {
				int val = ip.getPixel(x, y);
				if (val > 100)
					ip.putPixel(x, y, val/10);
			}
		}
		try{
			PrintWriter mPrint = new PrintWriter("C:/Users/rchil/Desktop/Detect_SuperArgus/datos.txt");
			mPrint.println(42000);
			int[] datos = {1,3,4,2,54,2,1};
			mPrint.println(Arrays.toString(datos).replace('[', ' '));	
			
			mPrint.close();
		}
		catch(Exception e){
			IJ.log(e.getMessage());
		}
		
	}
}

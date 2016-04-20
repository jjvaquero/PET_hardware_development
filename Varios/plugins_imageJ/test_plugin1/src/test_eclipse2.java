import ij.plugin.PlugIn;
import ij.process.*;
import java.awt.*;
import ij.*;


public class test_eclipse2 implements PlugIn {

	@Override
	public void run(String arg0) {
		// TODO Auto-generated method stub
		int width = 300;
		int height = 300;
		ImageProcessor ip = new ByteProcessor(width, height);
		ip.setColor(Color.black);
		ip.fill();
		for(int x = 0; x < width; x++) {
		for(int y = 0; y < height; y++) {
		if (x == y || (width - x) == y)
		ip.putPixel(x, y, 255);
		}
		}
		ImagePlus imp = new ImagePlus("Result image", ip);
		imp.show();
		}


}

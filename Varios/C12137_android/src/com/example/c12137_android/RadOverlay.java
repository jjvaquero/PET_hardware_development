package com.example.c12137_android;

import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.List;

import android.app.AlertDialog;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.widget.TextView;

import com.google.android.maps.GeoPoint;
import com.google.android.maps.ItemizedOverlay;
import com.google.android.maps.Overlay;
import com.google.android.maps.OverlayItem;

public class RadOverlay extends ItemizedOverlay{
	
	private ArrayList<OverlayItem> mOverlays = new ArrayList<OverlayItem>();
	private Drawable drawRed, drawGreen, drawYellow;
	private Context mContext;
	private MapDisplay mapAct;

	
	public RadOverlay(Drawable defaultMarker) {
		  super(boundCenterBottom(defaultMarker));
		}
	
	public RadOverlay(Drawable defaultMarker, Context context,String radFile,MapDisplay mapActivity) {
		  super(boundCenterBottom(defaultMarker));
		  mContext = context;
		  mapAct = mapActivity;
		  
		  drawRed = context.getResources().getDrawable(R.drawable.rad_red);
		  drawGreen = context.getResources().getDrawable(R.drawable.rad_green);
		  drawYellow = context.getResources().getDrawable(R.drawable.rad_yellow);
		  //set the bounds...
		  drawRed.setBounds(0,0,drawRed.getIntrinsicWidth(),drawRed.getIntrinsicHeight());
		  drawGreen.setBounds(0,0,drawGreen.getIntrinsicWidth(),drawGreen.getIntrinsicHeight());
		  drawYellow.setBounds(0,0,drawYellow.getIntrinsicWidth(),drawYellow.getIntrinsicHeight());
		 		  
		  //Open and read the radFile
		  System.out.println("VoY1");
		  String radData = readFile(radFile);
		  if (radData == null) return;

		  
		  //data Processing
		  radData = radData.replaceAll("\r", ""); // por los windorssss
		  String[] dataLines = radData.split("\n");
		 
		  int strIndex = 0;
		  int lineCount= 0;
		  //to count the number of lines in the file
		  while ((strIndex!= -1) & lineCount<30){
			  strIndex = radData.indexOf("\n", strIndex+1);
			  lineCount++;
		  }
		  //decrement one for the last execution time
		  lineCount--;
		  
		  double[][] data = new double[lineCount][3];
		  String[] tmpData = new String[3];
		  for(int i =0 ; i <lineCount; i++){
			  tmpData = dataLines[i].split(",");
			  for (int k = 0; k<3; k++){
				  data[i][k] = Double.parseDouble(tmpData[k]);
			  }
		  }
		  
		  //Overlays creation
		  GeoPoint tmpPos;
		  OverlayItem tmpOverlay;
		  for (int i = 0; i< lineCount; i++){
			  tmpPos = new GeoPoint((int) (data[i][0]*1e6), (int) (data[i][1]*1e6)); 
			  tmpOverlay = new OverlayItem(tmpPos, "Radiation", String.valueOf(data[i][2])+" uSv/h");
			  if (data[i][2] < 8.00){
				  tmpOverlay.setMarker(drawGreen);
				  
			  }else if(data[i][2] < 15.00){
				  tmpOverlay.setMarker(drawYellow);
			  }else{
			  tmpOverlay.setMarker(drawRed);
			  }
			  this.addOverlay(tmpOverlay);       
			  //
		  }
		  
		}
	
	public void addOverlay(OverlayItem overlay) {
	    mOverlays.add(overlay);
	    populate();
	}
	
	@Override
	protected OverlayItem createItem(int i) {
	  return mOverlays.get(i);
	}
	
	@Override
	public int size() {
	  return mOverlays.size();
	}
	
	
	@Override
	protected boolean onTap(int index) {
	  OverlayItem item = mOverlays.get(index);
	  /*AlertDialog.Builder dialog = new AlertDialog.Builder(mContext);
	  dialog.setTitle(item.getTitle());
	  dialog.setMessage(item.getSnippet());
	  dialog.show();*/
	  String strLat, strLong, strRad;
	  GeoPoint tmpGeo;
	  tmpGeo = item.getPoint();	  
	  strLat = String.valueOf(((double)tmpGeo.getLatitudeE6())/1e6);
	  strLong = String.valueOf(((double)tmpGeo.getLongitudeE6())/1e6);
	  strRad = item.getSnippet();  
	  mapAct.updateCoordinates(strLat, strLong, strRad);	  
	  
	  return true;
	}
	
	private String readFile(String fileName){
		String s = null; 
		
		try {
			File f = new File(fileName);
			byte[] b = new byte[(int) f.length()];
			FileInputStream fInput = new FileInputStream(f);
			//read the whole file
			fInput.read(b);
			s = new String(b);
			fInput.close();
		} catch (Exception e) {
			return null;
		}
		return s;
		
	}
	

}

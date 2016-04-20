package com.example.c12137_android;

import java.util.List;

import com.google.android.maps.GeoPoint;
import com.google.android.maps.MapActivity;
import com.google.android.maps.MapController;
import com.google.android.maps.MapView;
import com.google.android.maps.Overlay;
import com.google.android.maps.OverlayItem;

import android.os.Bundle;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.view.Menu;
import android.widget.TextView;

public class MapDisplay extends MapActivity {	
	public final static String INIT_COORD = "hggm.lim.prueba_detect.MESSAGE";
	public final static String RAD_FILE = "hggm.lim.prueba_detect.RADMESSAGE";
	private GeoPoint actualPose;
	private MapView mapView;
	private MapController mapController;
	
	@Override
	protected boolean isRouteDisplayed() {
	    return false;
	}

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_map_display);
        
        //needed to have zooming in the computer
        mapView = (MapView) findViewById(R.id.mapview);
        mapView.setBuiltInZoomControls(true);
        
        //used to center map in the current location
        double[] coords = new double[2];
        Intent intent = getIntent();
        coords = intent.getDoubleArrayExtra(INIT_COORD);
        String radFileName = intent.getStringExtra(RAD_FILE);
        actualPose = new GeoPoint((int) (coords[0]*1e6), (int) (coords[1]*1e6));
        
        // adding overlays
        List<Overlay> mapOverlays = mapView.getOverlays();   
        Drawable drawable = this.getResources().getDrawable(R.drawable.rad_yellow);
        RadOverlay itemizedoverlay = new RadOverlay(drawable, this,radFileName,this);
        //Overlay Items are created in the constructor of RadOverlay
        //OverlayItem overlayitem = new OverlayItem(actualPose, "Radiation", "XXXX uSv/h");
        //itemizedoverlay.addOverlay(overlayitem);
        mapOverlays.add(itemizedoverlay);
        
        //Center the map in the current position
        mapController = mapView.getController();
        mapController.setZoom(16);
        mapController.animateTo(actualPose);
        
        // update textviews
        TextView textLat = (TextView) findViewById(R.id.latitude);
        textLat.setText(String.valueOf(coords[0]));
              
        TextView textLong = (TextView) findViewById(R.id.longitude);
        textLong.setText(String.valueOf(coords[1]));
        
    }
    
    public void onStart(){
    	super.onStart();
    	
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.activity_map_display, menu);
        return true;
    }
    
    public void updateCoordinates(double[] coords){    	
    	this.actualPose = new GeoPoint((int) (coords[0]*1e6), (int) (coords[1]*1e6));
    	mapController.animateTo(actualPose);	
    }
    
    public void updateCoordinates(String strLat, String strLong, String radLevel){
    	TextView textLat = (TextView) findViewById(R.id.latitude);
    	TextView textLong = (TextView) findViewById(R.id.longitude);
    	TextView textRad = (TextView) findViewById(R.id.rad_level_map);
    	
    	textLat.setText(strLat);
    	textLong.setText(strLong);
    	textRad.setText(radLevel);
    	
    }
       
}

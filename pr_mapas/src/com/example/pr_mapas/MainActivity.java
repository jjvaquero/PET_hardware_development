package com.example.pr_mapas;

import java.util.List;


import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.os.Bundle;

import com.google.android.maps.GeoPoint;
import com.google.android.maps.MapActivity;
import com.google.android.maps.MapView;
import com.google.android.maps.Overlay;
import com.google.android.maps.OverlayItem;
import com.google.android.maps.MapController;

import android.view.Menu;
import android.widget.TextView;

public class MainActivity extends MapActivity {
	
	private GeoPoint point;
	
	@Override
	protected boolean isRouteDisplayed() {
	    return false;
	}

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        
        //para annadir zoom 
        MapView mapView = (MapView) findViewById(R.id.mapview);
        mapView.setBuiltInZoomControls(true);

        // adding overlays
        List<Overlay> mapOverlays = mapView.getOverlays();
        Drawable drawable = this.getResources().getDrawable(R.drawable.ic_launcher);
        HelloItemizedOverlay itemizedoverlay = new HelloItemizedOverlay(drawable, this);
        
        point = new GeoPoint(19240000,-99120000);
        OverlayItem overlayitem = new OverlayItem(point, "Hola, Mundo!", "I'm in Mexico City!");
        
        itemizedoverlay.addOverlay(overlayitem);
        mapOverlays.add(itemizedoverlay);
        
        Overlay mOverlay = new Overlay(){
        	@Override
            public boolean draw(Canvas canvas, MapView mapView, boolean shadow, long when) 
            {
                super.draw(canvas, mapView, shadow);       


                    //---translate the GeoPoint to screen pixels---
                        Point screenPts = new Point();
                        mapView.getProjection().toPixels(point, screenPts);

                       //---add the marker--
                       Bitmap bmp = BitmapFactory.decodeResource(getResources(),  R.drawable.ic_launcher);
                       canvas.drawBitmap(bmp, screenPts.x, screenPts.y-50, null);
                       return true;



             }

        };
        mapOverlays.add(mOverlay);
        
        
        MapController myController = mapView.getController();
        myController.setZoom(10);
        myController.animateTo(point);
        
        
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.activity_main, menu);
        return true;
    }
}

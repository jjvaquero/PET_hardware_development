package com.example.pr_mapas;

import java.util.ArrayList;

import android.app.AlertDialog;
import android.content.ClipData.Item;
import android.content.Context;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.drawable.Drawable;

import com.google.android.maps.GeoPoint;
import com.google.android.maps.ItemizedOverlay;
import com.google.android.maps.MapView;
import com.google.android.maps.OverlayItem;

public class HelloItemizedOverlay extends ItemizedOverlay {
	
	private ArrayList<OverlayItem> mOverlays = new ArrayList<OverlayItem>();
	Context mContext;
	
	public HelloItemizedOverlay(Drawable defaultMarker) {
		  super(boundCenterBottom(defaultMarker));
		}
	
	public HelloItemizedOverlay(Drawable defaultMarker, Context context) {
		  super(boundCenterBottom(defaultMarker));
		  mContext = context;
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
	  AlertDialog.Builder dialog = new AlertDialog.Builder(mContext);
	  dialog.setTitle(item.getTitle());
	  dialog.setMessage(item.getSnippet());
	  dialog.show();
	  return true;
	}
	
	 @Override
	    public void draw(android.graphics.Canvas canvas, MapView mapView, boolean shadow)
	    {
	        super.draw(canvas, mapView, shadow);

	        if (shadow == false)
	        {
	            //cycle through all overlays
	            for (int index = 0; index < mOverlays.size(); index++)
	            {
	                OverlayItem item = mOverlays.get(index);

	                // Converts lat/lng-Point to coordinates on the screen
	                GeoPoint point = item.getPoint();
	                Point ptScreenCoord = new Point() ;
	                mapView.getProjection().toPixels(point, ptScreenCoord);

	                //Paint
	                Paint paint = new Paint();
	                paint.setTextAlign(Paint.Align.CENTER);
	                paint.setTextSize(10);
	                paint.setARGB(255, 255, 0, 0); // alpha, r, g, b (Black, semi see-through)

	                //show text to the right of the icon
	                canvas.drawText(item.getTitle(), ptScreenCoord.x, ptScreenCoord.y+10, paint);
	            }
	        }
	    }

	

}

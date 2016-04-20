package hggm.lim.prueba_detect;

import com.google.android.maps.GeoPoint;
import com.google.android.maps.MapActivity;
import com.google.android.maps.MapController;
import com.google.android.maps.MapView;
import android.os.Bundle;
import android.content.Intent;
import android.view.Menu;
import android.widget.TextView;

public class MapDisplay extends MapActivity {	
	public final static String INIT_COORD = "hggm.lim.prueba_detect.MESSAGE";
	private GeoPoint actualPose;
	
	@Override
	protected boolean isRouteDisplayed() {
	    return false;
	}

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_map_display);
        
        //para annadir zoom 
        MapView mapView = (MapView) findViewById(R.id.mapview);
        mapView.setBuiltInZoomControls(true);
        
       /* TextView textView = (TextView) findViewById(R.id.texto2);
        textView.setTextSize(15);
        textView.setText("Mapa");*/
        
        //used to update map coordinates
        double[] coords = new double[2];
        Intent intent = getIntent();
        coords = intent.getDoubleArrayExtra(INIT_COORD);
        actualPose = new GeoPoint((int) (coords[0]*1e6), (int) (coords[1]*1e6));
        
        MapController myController = mapView.getController();
        myController.setZoom(18);
        myController.animateTo(actualPose);
        
        // update textviews
        TextView textLat = (TextView) findViewById(R.id.latitude);
        String aux = (String) textLat.getText();
        aux = aux + " " + String.valueOf(coords[0]);
        textLat.setText(aux);
              
        TextView textLong = (TextView) findViewById(R.id.longitude);
        aux = (String) textLong.getText();
        aux = aux + " " + String.valueOf(coords[1]);
        textLong.setText(aux);
        
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
    	
    }
    
    
}

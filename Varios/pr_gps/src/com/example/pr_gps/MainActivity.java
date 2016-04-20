package com.example.pr_gps;

import android.os.Bundle;
import android.app.Activity;
import android.view.Menu;
import android.location.*;
import android.content.*;
import android.widget.TextView;
import android.app.AlertDialog;
import android.provider.Settings;



public class MainActivity extends Activity {
	
	LocationManager locationManager;

    // Define a listener that responds to location updates
    LocationListener locationListener;
    
    AlertDialog.Builder builder;

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);        
    }
    
    public void onStart(){
    	super.onStart();
    	
        System.out.println("a ver esto donde sale");
    	 locationManager = (LocationManager) this.getSystemService(Context.LOCATION_SERVICE);
    	 // check that the gps sensor is enabled
    	 final boolean gpsEnabled = locationManager.isProviderEnabled(LocationManager.GPS_PROVIDER);
    	 if (!gpsEnabled){
    		 //creation of the gps alert dialog
    		 builder = new AlertDialog.Builder(this);
    		 builder.setMessage("GPS desactivado, desea activarlo")
    		        .setCancelable(false)
    		        .setPositiveButton("Yes", new DialogInterface.OnClickListener() {
    		            public void onClick(DialogInterface dialog, int id) {
    		            	enableLocationSettings();
    		            }
    		        })
    		        .setNegativeButton("No", new DialogInterface.OnClickListener() {
    		            public void onClick(DialogInterface dialog, int id) {
    		                 dialog.cancel();
    		            }
    		        });
    		 AlertDialog alert = builder.create();
    		 alert.show();
    		 
    	 }


         // Define a listener that responds to location updates
         locationListener = new LocationListener() {
             public void onLocationChanged(Location location) {
               // Called when a new location is found by the network location provider.
               //makeUseOfNewLocation(location);
              TextView tempTextView = (TextView) findViewById(R.id.hello_world);
              tempTextView.setText(Double.toString(location.getLatitude()));
               
             }

             public void onStatusChanged(String provider, int status, Bundle extras) {}

             public void onProviderEnabled(String provider) {}

             public void onProviderDisabled(String provider) {}
           };

         // Register the listener with the Location Manager to receive location updates
         locationManager.requestLocationUpdates(LocationManager.GPS_PROVIDER, 100, 0, locationListener);
        // locationManager.requestLocationUpdates(LocationManager.NETWORK_PROVIDER, 60000, 0, locationListener);
    	
    	
    }
    
    
    public void onStop(){
    	super.onStop();
    	// free some memory
    	locationManager.removeUpdates(locationListener);
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.activity_main, menu);
        return true;
    }
    
    // Intent call to activate the gps sensor
    public void enableLocationSettings() {
        Intent settingsIntent = new Intent(Settings.ACTION_LOCATION_SOURCE_SETTINGS);
        startActivity(settingsIntent);
    }
}

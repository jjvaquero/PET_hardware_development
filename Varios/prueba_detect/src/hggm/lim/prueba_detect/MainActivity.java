package hggm.lim.prueba_detect;


import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Timer;

import com.google.android.maps.GeoPoint;

import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Environment;
import android.provider.Settings;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.view.Menu;
import android.view.View;
import android.widget.TextView;


public class MainActivity extends Activity {
	
	//variable used to send coordinates to the map activity
	 public final static String INIT_COORD = "hggm.lim.prueba_detect.MESSAGE";
     private int[] my_Hist = new int[4096];
     private GeoPoint posActual;
     
     //GPS variables
 	private LocationManager locationManager;
    // Defines a listener that responds to location updates
    private LocationListener locationListener,locationListener5m;
    
     private AlertDialog.Builder builder;
	 
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        
        //update histogram values..porque si
        my_Hist = histogram.histograma;
        //inicializo la posicion actual con la pos del hospital
        posActual =  new GeoPoint( (int)( 40.41932*1e6), (int)(-3.670937*1e6));
    }
    
    @Override
    public void onStart(){
    	super.onStart();
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
     // Defines a listener that responds to location updates
     locationListener = new LocationListener() {
         public void onLocationChanged(Location location) {
           // Called when a new location is found by the network location provider.
           //makeUseOfNewLocation(location);
            posActual = new GeoPoint((int) (location.getLatitude()*1e6), (int) (location.getLongitude()*1e6));
           
         }

         public void onStatusChanged(String provider, int status, Bundle extras) {}

         public void onProviderEnabled(String provider) {}

         public void onProviderDisabled(String provider) {}
       };
       //uses two different listeners one triggers with every position update
       //the others triggers whenever the position changes more than 5m
       locationListener5m = new LocationListener() {
           public void onLocationChanged(Location location) {
             // Called when a new location is found by the network location provider.
             //used to save the position and radiation levels
        	 //TODO aqui tendria que guardar tb el valor de la radiacion
        	    
        	   
           	//save location will always be the same
               //TODO annadir algo para que coja mejor....
       		//se podria pasar al constructor una cadena con la fecha
       		//y que fuese este el nombre a usar
       		String dirLocation = "/mnt/sdcard/LIM";
       		String fileName = "/mnt/sdcard/LIM/pos_rad.csv";
       		
       		File outDir = new File(dirLocation);
       		if (!outDir.exists()){
       			//if there is no dir, create it
       			if(!outDir.mkdir()) return; 
       			//in case dir creation fails
       		}
       		//file writing 
       		try {
       			//opens the file and appends the integrated histogram
       			BufferedWriter bw = new BufferedWriter(new FileWriter(fileName, true)); 
       		    
       			//saving the integrated histogram
       			double coords[] = new double[2];
       	        //coords[0]= 40.41932; coords[1]= -3.670937;
       	        coords[0] = ((double)(posActual.getLatitudeE6())/1e6);
       	        coords[1] = ((double)(posActual.getLongitudeE6())/1e6);
       	
       		    bw.write(String.valueOf(coords[0]) + ",");
       		    bw.write(String.valueOf(coords[1]) + ",");
       		    // bw.write(String.valueOf(Rad));
       		
       			bw.newLine();
       			bw.flush();
       			bw.close();
       		} catch (FileNotFoundException e) {
                   //TODO meter ventanitas de errores y esas cosas to monas
       			System.out.println("Archivo no encontrado");
       			e.printStackTrace();
       		} catch (IOException e) {
       			// BufferedWriterオブジェクトのクローズ時の例外捕捉
       			e.printStackTrace();
       		}

             
           }

           public void onStatusChanged(String provider, int status, Bundle extras) {}

           public void onProviderEnabled(String provider) {}

           public void onProviderDisabled(String provider) {}
         };

     // Register the listener with the Location Manager to receive location updates
     locationManager.requestLocationUpdates(LocationManager.GPS_PROVIDER, 100, 0, locationListener);
     locationManager.requestLocationUpdates(LocationManager.GPS_PROVIDER, 100, 5, locationListener5m);
     //TODO descomentar la siguiente linea en la version para movil
     //es necesario comentarla por un fallo del emulador
     //locationManager.requestLocationUpdates(LocationManager.NETWORK_PROVIDER, 0, 0, locationListener);
	

    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.activity_main, menu);
        return true;
    }
    
    public void carga_mapa(View view){
        TextView textView = (TextView) findViewById(R.id.texto1);
        textView.setTextSize(40);
        textView.setText(R.string.button_text);
        
        
        
        Intent intent = new Intent(this, MapDisplay.class);
        double coords[] = new double[2];
        //coords[0]= 40.41932; coords[1]= -3.670937;
        coords[0] = ((double)(posActual.getLatitudeE6())/1e6);
        coords[1] = ((double)(posActual.getLongitudeE6())/1e6);
        //para asegurarme de que no este vacion
        intent.putExtra(INIT_COORD, coords);
        startActivity(intent);
        
       
    }
    
    public void guardarHistograma(View view){
    	//aqui arrancare el hilo periodico que se encargara de guardar los datos 
    	//leerlos y toda la pelicula
    	timerLectura hiloLectura = new timerLectura(1, this);
    	Timer lectPeriodica = new Timer();
    	lectPeriodica.schedule(hiloLectura, 100,100);
    }
    
    public void cambiaTexto(String cad){
    	TextView textView = (TextView) findViewById(R.id.texto1);
        textView.setText(cad);
    }
    
    // Intent call to activate the gps sensor
    public void enableLocationSettings() {
        Intent settingsIntent = new Intent(Settings.ACTION_LOCATION_SOURCE_SETTINGS);
        startActivity(settingsIntent);
    }
    
    public GeoPoint getCurrentLocation(){
    	return posActual;
    }
    
    	
}

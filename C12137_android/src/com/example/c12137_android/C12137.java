package com.example.c12137_android;

import com.example.c12137_android.MapDisplay;
import com.example.c12137_android.R;
import com.example.c12137_android.timerLectura;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Timer;


import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.opengl.GLSurfaceView;
import android.os.Bundle;
import android.provider.Settings;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.view.Menu;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;

public class C12137 extends Activity {


	//variable used to send coordinates to the map activity
	 public final static String INIT_COORD = "hggm.lim.prueba_detect.MESSAGE";
	 public final static String RAD_FILE = "hggm.lim.prueba_detect.RADMESSAGE";
	 
	 //TODO mejorar esto 
	 private final String dirLocation = "/mnt/sdcard/LIM";
	 private final String fileName = "/mnt/sdcard/LIM/pos_rad.csv";
	 
	 //Histograms used by the system 
     private float[] HistX = new float[4096];
     private float[] HistY = new float[4096];
 
     
     //energy plot variable
    private MyRender mRenderer;
 	private GLSurfaceView mGlSurfaceView;
 	private LinearLayout mLayGL;
 	//TODO si todo va chachi, meterle el detector de gestos
 	//	private GestureDetector mGestureDetector;
     
     //GPS variables
 	private LocationManager locationManager;
    private LocationListener locationListener;
    //Dialog alerting users that GPS is not enabled
    private AlertDialog.Builder builder;
    private Location posActual;
    private Location lastLocation; //updated every 5 meters
    //tried using the listener with the distance option, but the onLocationChanged
    //was called several times every time the position was updated
    
    //used for the periodic reading
    private timerLectura hiloLectura;
	private Timer lectPeriodica;
	 
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_c12137);
        
        //First Location = Hospital location
        posActual = new Location(LocationManager.GPS_PROVIDER);
        //HGUGM coordinates
        //TODO hacer que esto se lea de un archivo de texto
        // de todas formas al lanzar el mapa se tomaran las ultimas coordenadas
        //adquiridas
        posActual.setLatitude(40.41932);
        posActual.setLongitude(-3.670937);
        lastLocation = new Location(posActual);
        
        
        //in the HistX i would load the values from the calibration data
        //TODO comprobar que este sea el archvio de calibracion correcto
        //la funcion para ello es la siguiente
        /*
         * if (strData[0]
				.equals(getString(R.string.EEPROM_PRODUCT_NAME_C12137_01))) {
			mCoeffX = Gf_C12137_01.KeV;
			mCoeffY = Gf_C12137_01.raw;
		} else {
			if (data[0] == 1) {
				mCoeffX = Gf_C12137_1.KeV;
				mCoeffY = Gf_C12137_1.raw;
			} else {
				mCoeffX = Gf_C12137.KeV;
				mCoeffY = Gf_C12137.raw;
			}
		}
         */
        
        //calibration data
        for (int i = 0; i<4096; i ++)
        {
     	    HistX[i] = (float)Gf_C12137.KeV[i];
     	    HistY[i] = 0.1f;
     	}
        
        //data plot initialization
        mRenderer = new MyRender();
        mRenderer.setPlotMode(MyRender.PLOT_MODE_ENERGY);
        mGlSurfaceView = new GLSurfaceView(this);
        mGlSurfaceView.setRenderer(mRenderer);
        mLayGL = (LinearLayout) findViewById(R.id.layout1);
        mLayGL.addView(mGlSurfaceView);
        
       //graph initialization       
       mRenderer.setEnergyXVertices(HistX);
 	   mRenderer.setEnergyYVertices(HistY);
 	   mRenderer.ChangeScale();
        
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
     
            posActual = location;
            //check the distance to the last saved location
            if (lastLocation.distanceTo(posActual)> 15.00){
            	//update the current location
            	lastLocation = location;
            	//save it 
           		
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
           		    
           			//save the current coordinates           	
           		    bw.write(String.valueOf(posActual.getLatitude()) + ",");
           		    bw.write(String.valueOf(posActual.getLongitude()) + ",");
           		    bw.write(String.valueOf(hiloLectura.getRadiationLevel()));
           		    //TODO integrate the radiation levels
           		    // bw.write(String.valueOf(Rad));       		
           			bw.newLine();
           			bw.flush();
           			bw.close();
           		} catch (FileNotFoundException e) {
                       //TODO meter ventanitas de errores y esas cosas to monas
           			System.out.println("Archivo no encontrado");
           			e.printStackTrace();
           		} catch (IOException e) {
           			// BufferedWriter
           			e.printStackTrace();
           		}

            	
            }
           
         }

         public void onStatusChanged(String provider, int status, Bundle extras) {}

         public void onProviderEnabled(String provider) {}

         public void onProviderDisabled(String provider) {}
       };
       //uses two different listeners one triggers with every position update
       //the others triggers whenever the position changes more than 5m


     // Register the listener with the Location Manager to receive location updates
     //locationManager.requestLocationUpdates(LocationManager.GPS_PROVIDER, 1000, 0, locationListener);
     //TODO descomentar la siguiente linea en la version para movil
     //es necesario comentarla por un fallo del emulador
     //locationManager.requestLocationUpdates(LocationManager.NETWORK_PROVIDER, 0, 0, locationListener);
     
     //none of the above are used, the location listener will be started once the data reading begins
       
	

    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.activity_c12137, menu);
        return true;
    }
    
    public void cargaMapa(View view){
               
        Intent intent = new Intent(this, MapDisplay.class);
        double coords[] = new double[2];
        coords[0] = posActual.getLatitude();
        coords[1] = posActual.getLongitude();
        //Values used in the next intent
        intent.putExtra(INIT_COORD, coords);
        intent.putExtra(RAD_FILE, fileName);
        startActivity(intent);       
    }
    
    public void guardarHistograma(View view){
    	//aqui arrancare el hilo periodico que se encargara de guardar los datos 
    	//leerlos y toda la pelicula
    	hiloLectura = new timerLectura(1, this);
    	lectPeriodica = new Timer();
    	lectPeriodica.schedule(hiloLectura, 100,100);
    	//allows me to get GPS updates
    	locationManager.requestLocationUpdates(LocationManager.GPS_PROVIDER, 1000, 0, locationListener);
    	EditText edit1 = (EditText)findViewById(R.id.editText1);
    	edit1.setText("1");
    	Button button = (Button) findViewById(R.id.Button01);
    	button.setEnabled(true);
    }
    
    public void change_period(View view){
    	EditText edit1 = (EditText)findViewById(R.id.editText1);
    	int value = (int)(Double.parseDouble(edit1.getText().toString()));
        hiloLectura.setSavePeriod(value);
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
    
    public Location getCurrentLocation(){
    	return posActual;
    }
    
    // Graph would be updated by the periodic task that handles the reading
    // so it must be public
    public void energyPlotUpdate(int dataIn[]){
        for (int i = 0; i<4096; i ++)
        {
     	    HistY[i] = (float)dataIn[i];
     	}
        //update energy plot
 	   mRenderer.setEnergyYVertices(HistY);   	
    }
    
    @Override
    public void onDestroy(){
    	super.onDestroy();
    	
    	//kill the reading task
        lectPeriodica.cancel();
    	//release the usb connection
        hiloLectura.releaseUsbConnection();
  	
    }
}

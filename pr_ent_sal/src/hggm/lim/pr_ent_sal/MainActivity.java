package hggm.lim.pr_ent_sal;

import android.os.Bundle;
import android.os.Environment;
import android.app.Activity;
import android.view.Menu;
import android.view.MotionEvent;
import android.view.View;
import android.widget.TextView;
import java.io.File;
import android.view.View.OnClickListener;


public class MainActivity extends Activity implements OnClickListener{

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }
    
    @Override
    public void onStart(){
    	super.onStart();
    	//check external if I can use the sd card
    	boolean mExternalStorageAvailable = false;
    	boolean mExternalStorageWriteable = false;
    	
    	//textView para poder mostrar lo que hay
    	TextView mText = (TextView) findViewById(R.id.text1);
    	
    	String state = Environment.getExternalStorageState();

    	if (Environment.MEDIA_MOUNTED.equals(state)) {
    	    // We can read and write the media
    	    mExternalStorageAvailable = mExternalStorageWriteable = true;
    	    mText.setText("Sd Montada");
    	} else if (Environment.MEDIA_MOUNTED_READ_ONLY.equals(state)) {
    	    // We can only read the media
    	    mExternalStorageAvailable = true;
    	    mExternalStorageWriteable = false;
    	    mText.setText("SD Montada pero solo lectura");
    	} else {
    	    // Something else is wrong. It may be one of many other states, but all we need
    	    //  to know is we can neither read nor write
    		mText.setText("No hay SD");
    	    mExternalStorageAvailable = mExternalStorageWriteable = false;
    	}
    	this.onClick(mText);
    	
    	
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.activity_main, menu);
        return true;
    }
    
    public void onClick(View view){
    	File arx = new File("/mnt/sdcard/LIM0");
    	TextView mText = (TextView) findViewById(R.id.text1);
    	mText.setText("LIM Pulsado");
    	
    	if (arx.exists()){
    		mText.setText("LIM dir ya creado");
    	}else{
    	   if( arx.mkdir()){
    		   mText.setText("LIM creado");
    	   }else{
    		   mText.setText("LIM ni existe ni lo crea...");
    	   }
    	   
    	}
    	//ahora escribo el archivo de datos propiamente dicho
    	
    }
}

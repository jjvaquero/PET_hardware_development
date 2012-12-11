package hggm.lim.usb_detect;



import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.Iterator;

import android.opengl.GLSurfaceView;
import android.os.Bundle;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.view.GestureDetector;
import android.view.Menu;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;

//usb imports
import android.hardware.usb.UsbConstants;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbEndpoint;
import android.hardware.usb.UsbInterface;
import android.hardware.usb.UsbManager;
import android.hardware.usb.UsbRequest;


public class MainActivity extends Activity {
	
	//vendor ID and product ID constants
	static final int VENDOR_ID = 1633;
	static final int PRODUCT_ID = 10519;
	static final int VENDOR_READ_EEPROM = (0x04); 
	
	//USB variables
	private UsbManager usbManager;
	private UsbDevice usbDevice;
	private UsbDeviceConnection usbDeviceConnection;
	private UsbEndpoint usbBulkEpIn, usbBulkEpOut; 
	private float localHistogram[] = new float[4096];
	
	//para la grafica
    private MyRender mRenderer;
	private GLSurfaceView mGlSurfaceView;
	private LinearLayout mLayGL;
	private float[] ListX, ListY;
	private GestureDetector mGestureDetector;
	
	

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        
        //USB initialization
        usbManager = (UsbManager) getSystemService(Context.USB_SERVICE);          
            
            //creo la grafica como los japos
          // mGestureDetector = new GestureDetector(this, this);
         // GL Graph
           mRenderer = new MyRender();
           mRenderer.setPlotMode(MyRender.PLOT_MODE_ENERGY);
           mGlSurfaceView = new GLSurfaceView(this);
           mGlSurfaceView.setRenderer(mRenderer);
           mLayGL = (LinearLayout) findViewById(R.id.layout1);
           mLayGL.addView(mGlSurfaceView);
           //mLayGL.setOnTouchListener(this);
           ListX = new float[4096];
           ListY = new float[4096];
           
           for (int i = 0; i<4096; i ++)
           {
        	    ListX[i] = i;
        	    ListY[i] = (float)histogram.histograma[i]*100;
        	    localHistogram[i] = 0;
        	}
           
          
           
           
           mRenderer.setEnergyXVertices(ListX);
    	   mRenderer.setEnergyYVertices(ListY);
    	   mRenderer.ChangeScale();
               
    }
    
    @Override
    public void onResume(){
    	super.onResume();
    	
    	Intent intent = getIntent();
    	String action = intent.getAction();
    	UsbDevice device = (UsbDevice) intent.getParcelableExtra(UsbManager.EXTRA_DEVICE);
    	if (UsbManager.ACTION_USB_DEVICE_ATTACHED.equals(action)){
    		setDevice(device);
    	} else if (UsbManager.ACTION_USB_DEVICE_DETACHED.equals(action)){
    		if (usbDevice != null & usbDevice.equals(device)){
    			setDevice(null);
    		}
    	}else{
    		HashMap<String, UsbDevice> deviceList = usbManager.getDeviceList();
    		Iterator <UsbDevice> deviceIterator = deviceList.values().iterator();
    		while (deviceIterator.hasNext()){
    			device = deviceIterator.next();
    			if (device.getVendorId() == VENDOR_ID && device.getProductId() == PRODUCT_ID){
    				setDevice(device);
    			}
    		}
    	}
    	TextView textTmp = (TextView) findViewById(R.id.texto2);
	    textTmp.setText("Conf Terminada");
    	
    	//ahora viene la comprobacion...en caso de tal...paso y au
    	if (usbDeviceConnection == null){
    		System.out.println(" USB No conectado");
    		return;
  
    	}
    	//si por el contrario se ha realizado la conexion...leo un par de valores
    	LoadModuleInfo();
    	
    	textTmp.setText("Lectura Terminada");
    	
    	
    }
    
    
    

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.activity_main, menu);
        return true;
    }
    
    private void setDevice( UsbDevice device){
    	// si el dispositivo no tiene interfaces...no lo puedo utilizar...ergo..paso
    	if (device.getInterfaceCount()<1 ){
    		return; 
    	}
    	
    	//el C12137 solo dispone de la interfaz por defecto...es decir la 0
    	UsbInterface intf = device.getInterface(0);
    	//compruebo que tenga al menos un endpoint 
    	if (intf.getEndpointCount()<1) return; 
        
    	//todo esto no es necesario puesto que el hardware ya es conocido
    	// y por lo tanto los endpoints no varian...pero bueno...
    	for (int i = 0; i <intf.getEndpointCount(); i++){
    		UsbEndpoint ep = intf.getEndpoint(i);
    		switch (ep.getType()){
    		case  UsbConstants.USB_ENDPOINT_XFER_CONTROL:
    		case  UsbConstants.USB_ENDPOINT_XFER_INT:
    		case  UsbConstants.USB_ENDPOINT_XFER_ISOC:
    			break;
    		case UsbConstants.USB_ENDPOINT_XFER_BULK:
    			if (ep.getDirection() == UsbConstants.USB_DIR_OUT){
    				usbBulkEpOut = ep;
    			} else{
    			    usbBulkEpIn= ep;
    			} 
    			break;
    		 default: 
    			break;   			  	   
    		    		
    		}
    	}
    	
    	//realizo la conexion propiamente dicha si todo va bien
    	usbDevice = device;
    	if (device != null){
    		UsbDeviceConnection connection = usbManager.openDevice(device);
    		if (connection != null && connection.claimInterface(intf, true)){
    			usbDeviceConnection = connection;
    		}else{
    			usbDeviceConnection = null; 
    		}
    	}	
    }
    
    private void LoadModuleInfo(){
    	int[] data = new int[1];
    	String[] strData = new String[1];
    	
    	
    	//READEEPROM STRING 32, strData
    	//READEEPROM 28, data;
    	
    	int result;
    	byte[] dataBuffer = new byte[16];
    	
    	//check if the connection is valid
		if (usbDeviceConnection == null) {
			return;
		}
		

		result = usbDeviceConnection.controlTransfer(0xC3, VENDOR_READ_EEPROM , 32, 0,
				dataBuffer, 16, 0);
		// compruebo que todo haya ido bien
		if ( result == -1 || result != 16) return;
	    //sino...todo va xaxi, meto los valores en una cadena
	    strData[0] = new String(dataBuffer);
		
		//repito el proceso pero para leer el numero...
		result = usbDeviceConnection.controlTransfer(0xC3, VENDOR_READ_EEPROM , 28, 0,
				dataBuffer, 2, 0);
		// compruebo que todo haya ido bien
		if ( result == -1 || result != 2) return;
	    //sino...todo va xaxi, meto los valores en una cadena
		data[0] = (dataBuffer[1] & 0xFF) + ((dataBuffer[0] & 0xFF) << 8);
		
		System.out.println(strData[0]);
		System.out.println(data[0]); 	
		
		TextView miTexto = (TextView) findViewById(R.id.texto1);		
		miTexto.setText(strData[0]);
		
    	  	
    }
    
   public int leeUsb(View view){
	   	TextView textTmp = (TextView) findViewById(R.id.texto2);
	    textTmp.setText("Leyendo datos");
		int size = (8+1048);
	    int Data[] = new int[size];
	    
		UsbRequest request = new UsbRequest();
		int returnValue = -1;
        // thread_read_mppc_data
		ByteBuffer transferBuffer = ByteBuffer.allocate(size * 2);
		request.initialize(usbDeviceConnection, usbBulkEpIn);
		request.queue(transferBuffer, transferBuffer.remaining());
		if (usbDeviceConnection.requestWait() != request) {
				returnValue = -1;
			} else {
				for (int i = 0; i < size; i += 2) {
					if (i < 16 ){
						//First 8 values MSB, LSB
						Data[i/2] = Data[i / 2] = ((transferBuffer.get(i + 0) & 0xFF)<<8)
								+ ((transferBuffer.get(i + 1) & 0xFF));
					}else{
						//rest of the values  LSB,MSB
						Data[i / 2] = ((transferBuffer.get(i + 0) & 0xFF))
								+ ((transferBuffer.get(i + 1) & 0xFF) << 8);
					}
				}
				if (Data[0] == 0x5A5A) {
					returnValue = 0;
				} else {
					returnValue = -2;
				}
			}
		
		
		float t1 = 0.0f;
		float v1 = 1034.0f;
		float t2 = 50.0f;
		float v2 = 760.0f;
		float range = 1250.0f; // 1250mV
		

		float temperature;
		temperature = (float) Data[5] * range / 65535.0f;
		temperature = t1 + ((temperature - v1) * (t2 - t1)) / (v2 - v1);

		int index = Data[6];

		int dataLen = Data[2] + Data[3];
		/*for (i = 0; i < value; i++) {
			Data[i] = pd[i + 8];
		}
		Size[0] = value;*/

	    textTmp.setText(String.valueOf(temperature));
	    TextView textTmp1 = (TextView) findViewById(R.id.texto1);
	    textTmp1.setText(String.valueOf(dataLen));
	    
	    int auxVal;
	    for (int i = 0; i<dataLen; i ++)
        {
     	    auxVal = Data[i]>>4;
     	    localHistogram[auxVal]++;
     	}
        
 	   mRenderer.setEnergyYVertices(localHistogram);
	    
	    

		return returnValue;
	    	    	   
   }
   
	@Override
	protected void onStop() {
		super.onStop();

		 usbManager = null;
		 usbDevice = null;
		 usbDeviceConnection.close();
		 usbDeviceConnection = null;
 
	}

	
}

package com.example.c12137_android;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Arrays;
import java.util.Properties;
import java.util.TimerTask;

import android.os.Handler;
import android.widget.TextView;


public class timerLectura extends TimerTask {
	
	//para la base de datos
	private static final String dbClassName = "com.mysql.jdbc.Driver";
	
	public static int HIST_SIZE = 4096;
	
	private int[] dataBuffer = new int[HIST_SIZE];
	private int[] lastHist = new int[HIST_SIZE];
	private int[] intHist = new int[HIST_SIZE];
	private int saveTime, minCounter, saveTimeCounter; //how often should data be saved
	private int dataLen,countsPerSec;
	private float temperature;
	private C12137 ventanita;
	private C12137USB detectUsb;
	
	//values used to calculate the radiation levels
	private float[] LogCorrection = new float[HIST_SIZE];
	private int[][] LogData = new int[513][HIST_SIZE];
	private int LogSize,LogIndex;
	private float radLevel;
	
	// Handler used to update the main activity
	private Handler mHnd = new Handler();


	public timerLectura(int savePer, C12137 vent) {
		// TODO Auto-generated constructor stub
		saveTime = savePer;// * 600; //assuming reads would be every 100ms
		//and that savePer is given in minutes
		
		//variables initialization
		ventanita = vent;
		detectUsb = new C12137USB(ventanita);
		
		//radiation level variables initialization
		LogSize = 0;
		LogIndex = 0;
		for(int i = 0; i < HIST_SIZE; i++){
			LogCorrection[i] = (float)Gf_C12137.raw[i];
		}
		for (int i = 0; i< 512 ; i++){
			for (int j = 0; j <HIST_SIZE; j++){
				LogData[i][j] = 0;
			}
		}
		radLevel = 0.0f;
		
	}

	@Override
	public void run() {
		// TODO Auto-generated method stub
		
		//clear the last read buffer
		for (int i = 0; i<HIST_SIZE; i++){
			lastHist[i] = 0;
		}
		
		//timeCounter is used to control saving data
		minCounter++;
		detectUsb.readMPPCData(dataBuffer);
		
		//usb data processing		
		float t1 = 0.0f;
		float v1 = 1034.0f;
		float t2 = 50.0f;
		float v2 = 760.0f;
		float range = 1250.0f; // 1250mV
		

		temperature = (float) dataBuffer[5] * range / 65535.0f;
		temperature = t1 + ((temperature - v1) * (t2 - t1)) / (v2 - v1);
		
		//currently this value is not being used
		//int index = dataBuffer[6];

		dataLen = dataBuffer[2] + dataBuffer[3];
		//increment the number of counts per minute
		countsPerSec+=dataLen;
		
	    int auxVal;
	    for (int i = 8; i<dataLen; i ++)
        {
     	    auxVal = dataBuffer[i]>>4;
	    	lastHist[auxVal]++;
     	}
		
		
		for (int i = 0; i < HIST_SIZE ; i++){
			intHist[i] += lastHist[i];		
			LogData[512][i] += lastHist[i];
		}
		//update the energy plot in the main activity
		ventanita.energyPlotUpdate(intHist);
		if (minCounter >= 10){ //every second
			saveTimeCounter++;			
			
			//radiation level
			for (int i =0; i< HIST_SIZE; i++){
				LogData[LogIndex][i] = LogData[512][i];
				LogData[LogIndex+256][i] = LogData[512][i];
				LogData[512][i] = 0;
			}
			LogIndex++;
			LogIndex = LogIndex & 0xFF;
			LogSize++; //...TODO podria desbordar, mirar si en java hay
			//algo como los unsigned que si desborda vuelve a 0 y au...
			radLevel = CountToSievert4();
			
			
			//check if it is time to save the data 
			if (saveTimeCounter >= saveTime*60){ //saveTime in mins
				this.saveData();
				try{
				this.saveDataDB();} catch (Exception ex){
					System.out.println(ex.getMessage());
				}
				for (int i = 0; i< HIST_SIZE; i++){
					intHist[i] = 0;
				}
				saveTimeCounter=0;				
			}
			
			//Update TextViews in the main activity
			mHnd.post(new Runnable(){
				TextView text1 = (TextView) ventanita.findViewById(R.id.texto1);
				TextView text2 = (TextView) ventanita.findViewById(R.id.texto2);
				TextView text3 = (TextView) ventanita.findViewById(R.id.textRad);
				//used to avoid possible concurrency issues
				String countsStr = String.valueOf(countsPerSec);
				public void run(){
					text1.setText(countsStr);
					text2.setText(String.valueOf(temperature));
					text3.setText(String.valueOf(radLevel) + " uSv/h");					
				}
			});
			
			// zero all the counters
			minCounter= 0;
			countsPerSec = 0;			
		}
	}
	

	private void saveData(){
		//save location will always be the same
        //TODO annadir algo para que coja mejor....
		//se podria pasar al constructor una cadena con la fecha
		//y que fuese este el nombre a usar
		String dirLocation = "/mnt/sdcard/LIM";
		String fileName = "/mnt/sdcard/LIM/energy_1.csv";
		
		File outDir = new File(dirLocation);
		if (!outDir.exists()){
			//if there is no directory, create it
			if(!outDir.mkdir()) return; 
			//in case directory creation fails
		}
		//file writing 
		try {
			//opens the file and appends the integrated histogram
			BufferedWriter bw = new BufferedWriter(new FileWriter(fileName, true)); 
		    
			//saving the integrated histogram
			for (int i = 0; i < HIST_SIZE; i++) {
				bw.write(String.valueOf(intHist[i]) + ",");
			}
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
	
	public void setSavePeriod(int savePer){
		//If my timing requirements where to strict
		//i could stop the execution from outside, canceling the timer
		//and restarting it again
		saveTime = savePer;
	}
	
	
	
	
	// Used so that other apps can use the usb once this one is done
	public void releaseUsbConnection(){
		detectUsb.usbRelease();
	}
	
	
	//funcion copiada a tope de los japos por eso se queda con sus comments
	private float CountToSievert4() {
		// 評価範囲の指定
		// 取得したカウント値からシーベルト単位へ変換する
		// 移動平均の評価サイズはAreaDataSize

		// 評価範囲の指定
		//TODO estos valores podrian cambiar en un futuro
		int sta = 30; //(int) AreaStart;
		int stp = 2000; //(int) AreaEnd;

		float num, sum;
		float pSv;
		float temp;
		float sumResult;
		int index;
		float ans;
		int areaLow, areaHigh;

		// エネルギー変換の有効範囲指定
		// インデックスを検索

		areaLow = Arrays.binarySearch(Gf_C12137.KeV, sta);
		if (areaLow < 0) {
			areaLow = ~areaLow;
		}

		areaHigh = Arrays.binarySearch(Gf_C12137.KeV, stp);
		if (areaHigh < 0) {
			areaHigh = ~areaHigh;
		}
		if (areaHigh > 4095) { 
			areaHigh = 4095;
		}

		if (LogSize <= 30 ) { //AreaDataSize) {
			sum = 0;
			for (int i = 0; i < LogSize; i++) {
				num = 0;
				for (int k = areaLow; k < areaHigh + 1; k++) {
					temp = LogData[i][k];
					pSv = temp * LogCorrection[k];
					num += pSv;
				}
				sum += num;
			}
			sumResult = sum / LogSize;
		} else {
			index = LogSize - 29; //AreaDataSize - 1;
			sum = 0;
			for (int i = 0; i < 30; i++){ //AreaDataSize; i++) {
				num = 0;
				index += 1;
				index = index & 0xFF;
				for (int k = areaLow; k < areaHigh + 1; k++) {
					temp = LogData[index][k];
					pSv = temp * LogCorrection[k];
					num += pSv;
				}
				sum += num;
			}
			sumResult = sum / 30.0f; //AreaDataSize;
		}

		// pSv/s -> uSv/h
		// ans = sumResult * 60 * 60 * (float) Math.pow(10, -3);
		ans = sumResult * 3.6f;
		
		//TODO this value is read from the EEPROM
		double BaseSievert = 1000;
		
		if (BaseSievert != 0) {
			ans /= BaseSievert;
		}
		

		return ans;
	}
	
	public float getRadiationLevel(){
		return radLevel;
	}
	
	private void saveDataDB() throws Exception{
		//para escribir en la base de datos de URJC
		
		//primero convierto mi histograma a una cadena gigantesca....
		String buffer_salida = "";
		
		
		
		for (int i = 0; i < HIST_SIZE; i++) {
			buffer_salida=buffer_salida+String.valueOf(intHist[i])+",";
		}
		
		try{
			
			
		
		//file writing 
		//opens the file and appends the integrated histogram
		String dbClassName = "com.mysql.jdbc.Driver";
		String CONNECTION ="jdbc:mysql://192.168.1.128:3306/baseCSN";
		
		// creates a drivermanager class factory
	    Class.forName(dbClassName);

	    // Properties for user and password. Here the user and password are both 'paulr'
	    Properties p = new Properties();
	    p.put("user","CSN_droid");
	    p.put("password","csn");

	    // Now try to connect
	    Connection con = DriverManager.getConnection(CONNECTION,p);
			
		 /*Connection con = DriverManager.getConnection(
	                "jdbc:mysql://192.168.1.128:3306/baseCSN",
	                "CSN_droid",
	                "csn"); */

		    Statement stmt = con.createStatement();
		    //primero meto unos datos
		    stmt.execute("INSERT INTO datos_leidos VALUES ('"+buffer_salida+"',1567)");
		}
		catch (Exception ex){
		    //para poder ver el error
			  String fileName = "/mnt/sdcard/LIM/error.csv";
			   BufferedWriter bw = new BufferedWriter(new FileWriter(fileName, true)); 
					    
				//saving the integrated histogram
				//for (int i = 0; i < HIST_SIZE; i++) {
					bw.write(ex.getMessage()+"\n");
				//}
				bw.newLine();
				bw.flush();
				bw.close();
			}
		}
		  /*  ResultSet rs = stmt.executeQuery("SELECT histograma, tiempoEvt FROM datos_leidos ");
		    
		 

		    while (rs.next()) {
		    	int x = rs.getInt("tiempoEvt"); System.out.print(x+" ");
		    	String s = rs.getString("histograma"); System.out.println(s);
		    	//float f = rs.getFloat("c");
		    }*/
		   
}

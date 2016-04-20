package hggm.lim.prueba_detect;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.util.TimerTask;

import android.os.Environment;
import android.os.Handler;
import android.widget.TextView;


public class timerLectura extends TimerTask {
	
	public static int HIST_SIZE = 4096;
	
	private int[] lastHist = new int[HIST_SIZE];
	private int[] intHist = new int[HIST_SIZE];
	private int saveTime, timeCounter; //how often should data be saved
	private MainActivity ventanita;
	// a ver si con esto no se me cuelga la ventanita...
	private Handler mHnd = new Handler();

	public timerLectura(int savePer, MainActivity vent) {
		// TODO Auto-generated constructor stub
		saveTime = savePer * 600; //asuming reads would be every 100ms
		//and that savePer is given in minutes
		
		//vent es para poder cambiar la ventana que lo llama
		ventanita = vent;
	}

	@Override
	public void run() {
		// TODO Auto-generated method stub
		//timeCounter is used to control saving data
		timeCounter++;
		lastHist = histogram.histograma;
		for (int i = 0; i < HIST_SIZE ; i++){
			intHist[i] = intHist[i] + lastHist[i];			
		}
		if (timeCounter > saveTime){
			timeCounter = 0;
			this.saveData();
			for (int i = 0; i< HIST_SIZE; i++){
				intHist[i] = 0;
			}
			//para saber que he guardardo
			mHnd.post(new Runnable(){
				TextView texto = (TextView) ventanita.findViewById(R.id.texto1);
				public void run(){
					texto.setText("guardado");
				}
			});
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
			//if there is no dir, create it
			if(!outDir.mkdir()) return; 
			//in case dir creation fails
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
		//TODO ...no se si se podra hacer algo para detener el hilo 
		//y rearrancar la ejecucion periodica
		saveTime = savePer;
	}

}

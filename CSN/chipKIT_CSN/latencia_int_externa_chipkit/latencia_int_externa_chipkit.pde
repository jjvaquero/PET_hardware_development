/*
 16/11/12 
 
 Programa para comprobar el tiempo de respuesta del arduino a las 
 interrupciones
 
 se obtiene un tiempo de respuesta de 7.8uS
 
 por lo que no podremos utilizarlo para el detector del CSN
 donde los tiempos son proximos a los 2uS
*/




void setup() {

  pinMode(52, OUTPUT);  
  pinMode(5,INPUT);

  //comienzo el puerto serie...para ver si sale algo..
   attachInterrupt(0,actConv,FALLING);  //Comp
   attachInterrupt(1,lectDat,FALLING); //NBusy
}

void loop(){
  //reseteo la sennal usada para el biestable
  
}

//activo la conversion
void actConv(){
     digitalWrite(52, LOW); 

    digitalWrite(52, HIGH);
}
//activo la lectura
void lectDat(){
     digitalWrite(52, LOW); 

    digitalWrite(52, HIGH);
}


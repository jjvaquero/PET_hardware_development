/*
Programa para probar la placa CSN_v2 -- 06/06/12
 */
int aux = 0; 
 //primero defino los pines que voy a usar
 const int ConvSt = 34;
 const int DesInt = 35; 
 const int Comp = 2;
 const int NBusy = 3;

void setup() {                
  // initialize the digital pin as an output.
  // Pin 13 has an LED connected on most Arduino boards:
  

  
    
  //configuro los puertos A y C como entradas
  DDRC = B00000000;
  DDRA = B00000000;
  

  
  pinMode(DesInt, OUTPUT);
  pinMode(ConvSt, OUTPUT);
//para la interrupciones de Comp 
  pinMode(2, INPUT);    
  attachInterrupt(0,compDetect,FALLING);  //Comp  
  
//para la interrupcion de NBusy
  pinMode(3,INPUT);
  attachInterrupt(1,nbusyDetect,RISING);
  
  digitalWrite(ConvSt, HIGH);
  digitalWrite(DesInt, HIGH);  
  
}
  
  
  
void loop() {
  
  //aqui podria meter una funcion para ir enviando al puerto serie
  //cada XX datos
  
  //para que no se interrupan las cosas, cuando tenga los XX datos
  //desactivo las interrupciones....
  //mmm dado que seguro que el puerto serie usa interrupciones
  //no las puedo desactivar a saco...asi que me cargo 
  //solo las de los pines que uso con
  //detachInterrupt(0);
  //detachInterrupt(1);
  
  //luego las vuelvo a activar con
  //attachInterrupt(0,compDetect,FALLING);  //Comp  
  //attachInterrupt(1,nbusyDetect,RISING);
  

}


void compDetect(){
   //tras detectar la sennal de comparacion primero 
   //espero el tiempo de integracion
  // delayMicroseconds(1); // esta espera a lo mejor no hace falta
   //porque el arduino tarde en ejecutar esto mas que dicho tiempo...
   
   //activo la conversion
   digitalWrite(ConvSt, LOW); aux=0;
   
}

void nbusyDetect(){
  //deberia leer los datos y demas...
  
  //termino la conversion  y activo la sennal de desintegracion
  digitalWrite(ConvSt, HIGH);
  digitalWrite(DesInt, LOW);  
  //en lugar de esta espera podria hacer aqui la lectura y a pastar
  delayMicroseconds(1); //espero un tiempo
  //para esperar menos puedo usar un for
  digitalWrite(DesInt,HIGH);
 
}

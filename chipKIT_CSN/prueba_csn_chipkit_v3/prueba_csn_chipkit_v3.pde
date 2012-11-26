/*
  Lectura Circuito CSN 13/4/12
  
  Programa para probar si funciona la lectura del circuito del csn
 */

//Declaro los puertos que contendran sennales
const int ConvSt = 34;
const int DesInt = 35; 
const int Comp = 36;
const int NBusy = 37;

//int NBusyState = 0;   //variable con el valor de NBUSY
volatile int CompState = 0;  //variable con el valor de Comp
volatile int NBusyState = 0;
int indice = 0;
byte lecturas[200];
int LastConv = 1;
short evento; //valor del evento
short event_aux;
short MSB = 0;
short MSB_aux = 0;
short LSB = 0;

void setup() {

  //configuro los puertos A y C como entradas
    TRISB = 0x0C00;
  //esta configurado ojete style asi que...
   pinMode(28,INPUT);
   pinMode(29,INPUT);
   pinMode(30,INPUT);
   pinMode(31,INPUT);   
   
  //ahora configuro los pines de DesInt y ConvSt 
  //como salidas
  pinMode(DesInt, OUTPUT);      
  pinMode(ConvSt, OUTPUT);  

  //comienzo el puerto serie...para ver si sale algo..
   Serial.begin(115200);
 
   attachInterrupt(0,actConv,FALLING);  //Comp
   attachInterrupt(1,lectDat,RISING); //NBusy
}

void loop(){
  //reseteo la sennal usada para el biestable
  
  if (indice == 100){
    Serial.write('n');
    Serial.write(lecturas,200);
    indice = 0;  
  }
  
  

}

//activo la conversion
void actConv(){
  //activo la conversion
  digitalWrite(ConvSt, LOW); 
  // por el tiempo que tarda el micro con esto me basta
  digitalWrite(ConvSt, HIGH);
  
  /*
    LSB = PORTB; MSB_aux = PORTB;
    MSB_aux = (MSB_aux >>4) & 0x000F;
    MSB = ((MSB_aux & 0x0001)*8) | ((MSB_aux & 0x0002)*4)
     | ((MSB_aux & 0x0004)*2)|((MSB_aux & 0x0008)*1);
    if (indice < 100){
    lecturas[indice] = highByte(LSB); 
    lecturas[indice+1]= highByte(MSB);
    indice+=2;
    }
   // digitalWrite(ConvSt, HIGH);
    digitalWrite(DesInt, LOW); 
  //  LastConv = 1;
    
    digitalWrite(DesInt, HIGH);
    
    */
}
//activo la lectura
void lectDat(){ //NBusy = 1
//leo todo los pines de uno en uno
 evento = 0;
 for (int i = 0; i++ ; i<12 ){
   evento = digitalRead(i+22)? evento + pow(2,i):evento;
 }
 //almaceno el valor para enviarlo
 if (indice < 100){
    lecturas[indice] = highByte(evento); 
    lecturas[indice+1]= highByte(evento);
    indice+=2;
 }
 //desactivo la puerta del integrador
  digitalWrite(DesInt, LOW); 
  digitalWrite(DesInt, HIGH);
}

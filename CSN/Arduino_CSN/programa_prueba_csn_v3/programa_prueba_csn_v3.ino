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
int index = 0;
byte lecturas[200];
int LastConv = 1;
byte MSB = 0;
byte MSB_aux = 0;
byte LSB = 0;

void setup() {

  //configuro los puertos A y C como entradas
  DDRC = B00000000;
  DDRA = B00000000;
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
  
  if (index == 100){
    Serial.write('n');
    Serial.write(lecturas,200);
    index = 0;  
  }
  
  

}

//activo la conversion
void actConv(){
  digitalWrite(ConvSt, LOW); 
  //no se si da tiempo a convertir...
  //puedo meter la espera mas ruin que hay...un for...
    LSB = PINA; MSB_aux = PINC;
    MSB_aux = (MSB_aux >>4) & 0x0F;
    MSB = ((MSB_aux & 0x01)*8) | ((MSB_aux & 0x02)*4)
     | ((MSB_aux & 0x04)*2)|((MSB_aux & 0x08)*1);
    if (index < 100){
    lecturas[index] = LSB; 
    lecturas[index+1]= MSB;
    index+=2;
    }
    digitalWrite(ConvSt, HIGH);
    digitalWrite(DesInt, LOW); 
  //  LastConv = 1;
    
    digitalWrite(DesInt, HIGH);
}
//activo la lectura
void lectDat(){
 // NBusyState = 1;
}

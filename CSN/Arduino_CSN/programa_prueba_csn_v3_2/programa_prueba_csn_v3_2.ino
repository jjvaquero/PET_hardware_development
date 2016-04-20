/*
  Lectura Circuito CSN 13/4/12
  
  Programa para probar si funciona la lectura del circuito del csn
 */

//Declaro los puertos que contendran sennales
const int ConvSt = 34;
const int DesInt = 35;  //NGate
const int Comp = 36;
const int NBusy = 37;

//int NBusyState = 0;   //variable con el valor de NBUSY
volatile int CompState = 0;  //variable con el valor de Comp
volatile int NBusyState = 0;
int index = 0;
int dataIndex = 0;
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

  //Comentado porque para el disparo usare el retardo
  pinMode(ConvSt, INPUT);  

  //comienzo el puerto serie...para ver si sale algo..
   Serial.begin(115200);
 
   //attachInterrupt(1,actConv,FALLING);  //Comp
   //attachInterrupt(1,lectDat,RISING); //NBusy
   attachInterrupt(0,actConv,RISING); //NBusy

}

void loop(){
  //reseteo la sennal usada para el biestable
  
  if (index == 100){
    Serial.write('n');
    Serial.write(lecturas,200);
    index = 0;  
    dataIndex = 0;
  }
  
  

}

//activo la conversion
void actConv(){
  //Comentaddas todas las cosas de Convst
  //digitalWrite(ConvSt, LOW); 
  //no se si da tiempo a convertir...
  //puedo meter la espera mas ruin que hay...un for...
  if (dataIndex < 200){
    LSB = PINA; MSB_aux = PINC;
    MSB_aux = (MSB_aux >>4) & 0x0F;
    MSB = ((MSB_aux & 0x01)*8) | ((MSB_aux & 0x02)*4)| 
    ((MSB_aux & 0x04)*2)|((MSB_aux & 0x08)*1);
    lecturas[dataIndex] = LSB; 
    lecturas[dataIndex+1]= MSB;
    dataIndex+=2;
    index+=1;
    }
    //lo mismo con ConvSt
    //digitalWrite(ConvSt, HIGH);
    
  //  LastConv = 1;
    digitalWrite(DesInt, LOW); 
    
    digitalWrite(DesInt, HIGH);
}
//activo la lectura
void lectDat(){
 // NBusyState = 1;
}

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
byte lecturas[205];
int LastConv = 1;
word evento; //valor del evento
unsigned short event_aux;


void setup() {
  
  /* todo esto no me hace falta porque
  por defecto todo son entradas
  //configuro los puertos A y C como entradas
    TRISB = 0xF3FF;
  //esta configurado ojete style asi que...
   pinMode(28,INPUT);
   pinMode(29,INPUT);
   pinMode(30,INPUT);
   pinMode(31,INPUT); 
 */  
   
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
  
  if (indice > 200){
    //desactivo las interrupciones mientras envio datos
   // detachInterrupt(0);
    //detachInterrupt(1);
    //Serial.write('n');
    Serial.write(lecturas,200);
    indice = 0;  
    //vuelvo a activarlas
   //attachInterrupt(0,actConv,FALLING);  //Comp
   //attachInterrupt(1,lectDat,RISING); //NBusy
  }
  
  

}

//activo la conversion
void actConv(){
  //espera para aumentar el tiempo de integracion
  for (int i = 0; i < 80; i++){
    asm("NOP");
  }
  //activo la conversion
  digitalWrite(ConvSt, LOW); 
  // por el tiempo que tarda el micro con esto me basta
  digitalWrite(ConvSt, HIGH);
  
    //espera para aumentar el tiempo de integracion
 /* for (int i = 0; i < 100; i++){
    asm("NOP");
  }*/

  
  //la activo al terminar
  //attachInterrupt(1,lectDat,RISING); //NBusy
  
  
  
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
 //desactivo la interrupcion del comparador
 //detachInterrupt(0);
 //desactivo la puerta del integrador
 digitalWrite(DesInt, LOW); 
 
 //calculo el valor
 evento = 0;
 //por movidas del compilador y tipo de datos y demas
 //solo lo puedo hacer...a lo cutre...
 //leer y de bit en bit y sumar
 evento+=digitalRead(22)*1; //bit 0 
 evento+=digitalRead(23)*2; //bit 1 
 evento+=digitalRead(24)*4; 
 evento+=digitalRead(25)*8;
 evento+=digitalRead(26)*16;
 evento+=digitalRead(27)*32;
 evento+=digitalRead(28)*64;
 evento+=digitalRead(29)*128;
 evento+=digitalRead(30)*256;
 evento+=digitalRead(31)*512;
 evento+=digitalRead(32)*1024;
 evento+=digitalRead(33)*2048;   //bit 11

 /*for (int i = 0; i++ ; i<12 ){
   event_aux = digitalRead(i+22);
   if (event_aux){
     evento+=word(pow(2,i));
   }
 }
 //evento = 100;*/
 //almaceno el valor para enviarlo
 if (indice < 201){
    lecturas[indice] = lowByte(evento); 
    lecturas[indice+1]= highByte(evento);
    indice+=2;
 }
  
  
   digitalWrite(DesInt, HIGH);
  //aqui se puede meter una espera de las de ..
  // for...asm nop
  //ahora activo la interrupcion del comparador
   for (int i = 0; i < 50; i++){
    asm("NOP");
  }
   //attachInterrupt(0,actConv,FALLING);  //Comp

}

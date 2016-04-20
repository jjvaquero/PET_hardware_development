/*
  Blink
  Turns on an LED on for one second, then off for one second, repeatedly.
 
  This example code is in the public domain.
 */
int aux = 0; 

void setup() {                
  // initialize the digital pin as an output.
  // Pin 13 has an LED connected on most Arduino boards:
  
  //primero defino los pines que voy a usar
  const int ConvSt = 34;
  const int DesInt = 35; 
  const int Comp = 2;
  const int NBusy = 3;
  
    
  //configuro los puertos A y C como entradas
  DDRC = B00000000;
  DDRA = B00000000;
  

  
  pinMode(35, OUTPUT);
//para la interrupciones de Comp 
  pinMode(2, INPUT);    
  attachInterrupt(0,actConv,FALLING);  //Comp  
  
//para la interrupcion de NBusy
  pinMode(3,INPUT);
  attachInterrupt(1,actConv2,RISING);
  
}
  
  
  
void loop() {

}


void actConv(){
 for (int i =0; i<100; i++){
    digitalWrite(35, HIGH); aux=0;
   delayMicroseconds(10000);
   digitalWrite(35, LOW); aux=0;
   delayMicroseconds(10000);
   }  // set the LED on

  //digitalWrite(35, HIGH); 
 
}

void actConv2(){

  if (aux)
  { digitalWrite(35, HIGH); aux=0;}  // set the LED on
  else
  {digitalWrite(35, LOW); aux=1;}  // set the LED on
 
}

/*
Probando el inclinometro de Eu
*/
// inslude the SPI library:
#include <SPI.h>


// set pin 10 as the slave select forthe digital pot:
const int slaveSelectPin = 53;
byte MSB, LSB;
byte dir = 0x06;
int valor;
int signo_aux;

void setup() {
  // set the slaveSelectPin as an output:
  // initialize SPI:
  SPI.begin(); 
  SPI.setDataMode(SPI_MODE3);
  SPI.setBitOrder(MSBFIRST);
  SPI.setClockDivider(SPI_CLOCK_DIV16); 
  Serial.begin(9600);
}

void loop() {
  //pido el registro de AccOut
  digitalWrite(slaveSelectPin,LOW);
  
  MSB = SPI.transfer(dir);
  LSB = SPI.transfer(dir);
  
  digitalWrite(slaveSelectPin,HIGH);
  
  //hago ahora el procesado del valor
  //deberia comprobar los flags...
  //15 -- new_data
  //14 -- Error/Alarm
  //como es complemento a 2 
  //13 es el signo
  //signo_aux = MSB & 0x20;
  //me cargo los flags y el signo
  MSB = MSB & 0x3F;
  valor = int(word(MSB,LSB));
  //if (signo_aux) valor = valor*(-1);
  
  
  delay(200);
  
  Serial.print(MSB,HEX);Serial.print(" ");
  Serial.print(LSB,HEX);Serial.print(" ");
 Serial.print(valor); Serial.print("\n");
}

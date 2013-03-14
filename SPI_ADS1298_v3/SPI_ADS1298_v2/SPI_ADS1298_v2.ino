/*
Probando el inclinometro de Eu
*/
// inslude the SPI library:
#include <SPI.h>
#include <TimerOne.h>



// set pin 10 as the slave select forthe digital pot:
const int SS_pin = 10;
const int MOSI_pin = 11; 
const int MISO_pin = 12; 
const int SCK_pin = 13;
const int ADSReset_pin = 8;

//24 bytes de datos(3bytes*8canales)
//3 bytes de cabecera
const int buffSize = 9;  //9 enteros en total
//los int de arduino son de 16 por lo que despreciare
//el byte menos significante
int datos[buffSize];

void setup() {
  // set the slaveSelectPin as an output:
  // initialize SPI:
  pinMode(SS_pin, OUTPUT);  
  pinMode(MOSI_pin, OUTPUT);  
  pinMode(MISO_pin, INPUT);  
  pinMode(SCK_pin, OUTPUT);  
  pinMode(ADSReset_pin,OUTPUT);

  SPI.begin(); 
  SPI.setDataMode(SPI_MODE1);
  SPI.setBitOrder(MSBFIRST);
  SPI.setClockDivider(SPI_CLOCK_DIV8); 
  Serial.begin(115200);
  
  //delays needed by the device
  delay(1);
  digitalWrite(ADSReset_pin, LOW); 
  digitalWrite(SS_pin,LOW);
  delay(2);
  digitalWrite(ADSReset_pin,HIGH); 
  delay(10);
  
  ADS1298_init_conf();
  
}

void loop() {
 
  //siempre low porque solo uso este periferico
  //desactivo el reset
 // digitalWrite(13,HIGH); 
 // digitalWrite(11,HIGH);
  
  delay(10);
  
  
  leer_SPI_conf(); 
  
  for (int i = 0; i<buffSize-1; i++){
      Serial.print(datos[i]);Serial.print(",");
  }
  Serial.print(datos[buffSize-1]);Serial.print("\n");
}

//initializes the 
void  ADS1298_init_conf(){
  
  byte opCode1, opCode2; 
  byte data1, data2;
  
  //send SDATAC
  opCode1 = 0x11;
  data1 = SPI.transfer(opCode1);
  
  // Set device in HR Mode and DR = fmd/1024
  //Wreg CONFIG1 0x86
  opCode1 = 0x41; 
  opCode2 = 0x01; //two register would be written
  //WREG CONFIG2 0x00
  data1 = SPI.transfer(opCode1);
  data2 = SPI.transfer(opCode2);
  //register values
  opCode1 = 0x86; 
  opCode2 = 0x00;
  data1 = SPI.transfer(opCode1);
  data2 = SPI.transfer(opCode2);

  //Set all channels to Input Shorts
  //Wreg CHnSet 0x01
  opCode1 = 0x45;
  opCode2 = 0x07;
  data1 = SPI.transfer(opCode1);
  data2 = SPI.transfer(opCode2);
  opCode1 = 0x01;
  for (int i = 0; i<8; i++){
      data1 = SPI.transfer(opCode1);
  }  
  
  //send Start
  //Activate Conversion, DRDY should toggle
  opCode1 = 0x08;
  data1 = SPI.transfer(opCode1);
  delay(1);
  
  
  //Put device in RDATAC mode
  opCode2 = SPI.transfer(0x10);
  data2 = SPI.transfer(opCode2); 
}


void leer_SPI_conf(){
  byte opCode1;
  byte data[3];
  
  //pido los dos primeros registros
  opCode1 = 0x00;
  //leo todos los datos
  for (int i = 0; i<buffSize; i++){
    for (int j = 0; j<3; j++){
     data[j] = SPI.transfer(opCode1); 
    }
    //se desprecia siempre el byte menos significativo
    datos[i] = int(word(data[0],data[1]));
  }
  
  
}

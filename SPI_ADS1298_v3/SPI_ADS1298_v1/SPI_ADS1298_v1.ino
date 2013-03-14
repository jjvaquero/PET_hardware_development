/*
Probando el ADS1298
12_3_13 version comprobada que funciona correctamente
*/
// inslude the SPI library:
#include <SPI.h>


// set pin 10 as the slave select forthe digital pot:
const int slaveSelectPin = 10;
//24 bytes de datos(3bytes*8canales)
//3 bytes de cabecera
const int buff_size = 9;  //9 enteros en total
//los int de arduino son de 16 por lo que despreciare
//el byte menos significante
int datos[buff_size];

void setup() {
  // set the slaveSelectPin as an output:
  // initialize SPI:
  pinMode(slaveSelectPin, OUTPUT);  
  pinMode(11, OUTPUT);  
  pinMode(12, INPUT);  
  pinMode(13, OUTPUT);  
  pinMode(8,OUTPUT);

  SPI.begin(); 
  SPI.setDataMode(SPI_MODE1);
  SPI.setBitOrder(MSBFIRST);
  SPI.setClockDivider(SPI_CLOCK_DIV8); 
  Serial.begin(9600);
  
  delay(1);
  digitalWrite(8, LOW); 
  digitalWrite(slaveSelectPin,LOW);
  delay(1);
  digitalWrite(8,HIGH); 
  
  delay(1);
  init_SPI_conf();
}

void loop() {
 
  //siempre low porque solo uso este periferico
  //desactivo el reset
 // digitalWrite(13,HIGH); 
 // digitalWrite(11,HIGH);
  
  delay(10);
  
  
  leer_SPI_conf(); 
  
  for (int i = 0; i<buff_size-1; i++){
      Serial.print(datos[i]);Serial.print(",");
  }
  Serial.print(datos[buff_size-1]);Serial.print("\n");
}

void init_SPI_conf(){
  byte opCode1, opCode2; 
  byte data1, data2;
  
  //send SDATAC
  opCode1 = 0x11;
  data1 = SPI.transfer(opCode1);
  
  // Set device in HR Mode and DR = fmd/1024
  //Wreg CONFIG1 0x86
  opCode1 = 0x41; 
  opCode2 = 0x01; //escribo dos registros...los dos Config 
  //WREG CONFIG2 0x00
  data1 = SPI.transfer(opCode1);
  data2 = SPI.transfer(opCode2);
  //ahora escribo los valores
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
  for (int i = 0; i<buff_size; i++){
    for (int j = 0; j<3; j++){
     data[j] = SPI.transfer(opCode1); 
    }
    //se desprecia siempre el byte menos significativo
    datos[i] = int(word(data[0],data[1]));
  }
  
  
}

/*
Probando el inclinometro de Eu
*/
// inslude the SPI library:
#include <SPI.h>


// set pin 10 as the slave select forthe digital pot:
const int SS_pin = 10;
const int MOSI_pin = 11; 
const int MISO_pin = 12; 
const int SCK_pin = 13;
const int ADSReset_pin = 8;
const int DRDY_pin = 3;
const int dataSize = 850; //maximum data arduino can store
//max value = 850 ints, but it freezes when you create new variables


union ADSdata{
  //ADS packet used to communicate with Matlab
  struct {
    int header; 
    int nChan; 
    int nData;
    int data[dataSize]; //arduino freezes with higher values
  }packet;
  byte dataBytes[dataSize*2+6];
} adsData;

  byte dataAux[3];
  

void setup() {
  // set the slaveSelectPin as an output:
  // initialize SPI:
  pinMode(SS_pin, OUTPUT);  
  pinMode(MOSI_pin, OUTPUT);  
  pinMode(MISO_pin, INPUT);  
  pinMode(SCK_pin, OUTPUT);  
  pinMode(ADSReset_pin,OUTPUT);
  pinMode(DRDY_pin, INPUT);

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
  
  Packet_init();
  
  ADS1298_init_conf();
  
  //reads with an Interrupt from the DRDY pin
  attachInterrupt(1,ADS1298_read_data,FALLING);
   
}

void loop() {

  send_data();
  delay(500);
  
}


//initializes the 
void  ADS1298_init_conf(){
  byte data1, data2;
  
  //send SDATAC
  SPI.transfer(0x11);
  
  // Set device in HR Mode and DR = fmd/1024
  //WR Reg 0x01 RegN = 0x02
  SPI.transfer(0x41);
  SPI.transfer(0x02);
  //Config1 0x86
  SPI.transfer(0x86);
  //Config2 0x00
  SPI.transfer(0x00);
  // Config3 0xC1
  SPI.transfer(0xC1);
 
  //Set all channels to Input Shorts and Power Down
  //Except for Ch2 and Ch3
  //Wreg CHnSet 0x07
  SPI.transfer(0x45);
  SPI.transfer(0x07);
  //Ch1
  SPI.transfer(0x91);
  //Ch2
  SPI.transfer(0x00);
  //Ch3
  SPI.transfer(0x00);
  for (int i = 0; i<8; i++){
      SPI.transfer(0x91);
  }  
  
  //send Start
  //Activate Conversion, DRDY should toggle
  SPI.transfer(0x08);
  delay(1);
  
  //Send RDataC
  SPI.transfer(0x10); 
}


void Packet_init(){
 adsData.packet.header = 0xC0;
 //adsData.packet.header[1] = 0xC0;
  adsData.packet.nChan  = 0x02; 
  adsData.packet.nData = 0;
  for (int i = 0; i<dataSize; i++){
    adsData.packet.data[i] = 0;
  }
}


void ADS1298_read_data(){
  
  //read data from the ADS1298
  //check the header
  for (int j = 0; j<3; j++){
     dataAux[j] = SPI.transfer(0x00); 
  }
  //check the heeader before reading
  if (dataAux[0] != 0xC0)
    return;
    
  //read the channel values and save only channels 2 and 3   
  for (int i = 0; i<8; i++){
    for (int j = 0; j<3; j++){
     dataAux[j] = SPI.transfer(0x00); 
    }
   //save only the needed values and avoid overflow
   if (i == 1 || i == 2 && adsData.packet.nData < dataSize-2 )
     adsData.packet.data[adsData.packet.nData++] = 
               int(word(dataAux[0],dataAux[1]));

  }
  
}

void send_data(){
  
  //desactivate reading interrupt
  detachInterrupt(1);
  
  //Send all the stored data using the serial port 
  Serial.write(adsData.dataBytes,adsData.packet.nData*2+6);
  /*for (int i = 0 ; i< 100; i++){
    Serial.print(adsData.packet.data[i]); Serial.print(",");
  }
  Serial.print("\n"); */
  //clear stored data
   Packet_init();
  //restore interrupt
  // Serial.write(adsData.dataBytes,20);
  attachInterrupt(1,ADS1298_read_data,FALLING);
  
}

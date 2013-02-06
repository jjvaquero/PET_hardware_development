/* 
 Título: CSN ADC 16 bits 
 */

#include <avr/interrupt.h>
#include <avr/io.h>
#include <pins_arduino.h>
//#include <SD.h>
#include <SPI.h>


#define INIT_TIMER_COUNT 34285
#define RESET_TIMER5 TCNT5 = INIT_TIMER_COUNT
#define BUFFER_LENGTH 5000


int buff_index = 0;

//variable para el envio de datos
union hist{
  unsigned int data[BUFFER_LENGTH];  //int 16 bits
  byte data_buffer[BUFFER_LENGTH*2]; 
}hist_data;

//flag empleado para controlar la escritura en el buffer
boolean enviando = false;


void init_digitalIO(){
    
  pinMode(3, INPUT);
  pinMode(2, INPUT); 

  //ahora configuro los pines de DesInt y ConvSt 
  //como salidas
  pinMode(24, OUTPUT); //convst
  pinMode(28,OUTPUT);  //CS
  pinMode(34, OUTPUT); // gate
  
  digitalWrite(24, HIGH);
  digitalWrite(28, HIGH);
  digitalWrite(34, HIGH);
}

void clear_histograms(){
  for(int i = 0; i < BUFFER_LENGTH; i++){
    hist_data.data[i] = 0;
  }
}


void init_interrupt_P3(){ // Interrupcion externa a traves del pin 3
  EICRB = (EICRB & ~((1 << ISC50) | (1 << ISC51))) | (FALLING << ISC50);
  EIMSK |= (1 << INT5);
}

void init_interrupt_P2(){ // Interrupcion externa a traves del pin 2
  EICRB = (EICRB & ~((1 << ISC40) | (1 << ISC41))) | (RISING << ISC40);
      EIMSK |= (1 << INT4);
}

void init_interrupt_TIMER5(){
  cli();
  //Timer5 Settings: Timer Prescaler /1024,
  TCCR5B |= (1<<CS52);
  TCCR5B &= ~(1<<CS51);
  TCCR5B |= (1<<CS50);
  // Use normal mode
  TCCR5A &= ~((1<<WGM51) | (1<<WGM50));
  // Use internal clock – external clock not used in Arduino
  ASSR &= ~(1<<AS2);
  //Timer5 Overflow Interrupt Enable
  TIMSK5 |= (1<<TOIE5);
  TIMSK5 &= ~(0<<OCIE5A);  
  RESET_TIMER5;
  sei();

}


ISR(INT5_vect) // Comp
{
  //espera el tiempo de integracion
  //de lo contrario salta a 1us
  for (int i = 0; i < 20; i++){
    asm("NOP");
  }
  PORTA &= ~(1 << 2);   
  //la matengo por un tiempo >40ns
   for (int i = 0; i < 2; i++){
    asm("NOP");
  }  
  PORTA |= (1 << 2);
  
}

ISR(INT4_vect) // NBusy
{
  unsigned int event_val;
  //variables para la lectura
  byte MSB = 0;
  byte LSB = 0;
  
  
  PORTA &= ~(1 << 6);  //activo CS Low...debe estar asi hasta que lea
  
  //leo del puerto SPI
  
   MSB = SPI.transfer(0xD0);
   LSB = SPI.transfer(0xD0); 
  //en teoria 0x00 no hace nada...el comando de lectura es 0xD000 
  
  //una vez termina la lectura desactivo CS
  PORTA |= (1 << 6);
  
  // Desplazamos bits
  event_val = word(MSB,LSB); // >>2; 
  //event_val = event_val >> 6;
  //limita el tamanno maximo del buffer
  //TODO
  //probar si quitar lo de !enviando
  if(buff_index < BUFFER_LENGTH  && !enviando){
    hist_data.data[buff_index] = event_val;
    buff_index++;
  }
 
  
  //activo Ngate
  PORTC &= ~(1 << 3);   
  PORTC |= (1 << 3);

  
}

// Aruino runs at 16 Mhz, 
ISR(TIMER5_OVF_vect) {
  RESET_TIMER5;

  
  sei(); // Habilitamos las interrupciones globales
  //garantiza que se atiende a las interrupciones externas 
  //durante la escritura
  
  enviando = true;
  /*
  for(int i = 0; i < 1024; i++){
      sprintf(dat_hist, "%u ", hist_tx[i]);
      Serial1.write(dat_hist);
      hist_tx[i] = 0;
  }*/
  //envio los datos en crudo y en una sola instruccion
  //se puede modificar el buffer para meter cabeceras o lo que 
  //sea necesario
  Serial.write(hist_data.data_buffer,BUFFER_LENGTH*2);
  //fin de linea...porque...tampoco esta de mas
  //Serial.println();
  //Serial1.println();
  // Inicializamos los histogramas
  clear_histograms();  
  enviando=false;
}

void setup(){
  
  // Configuramos los pines digitales de entrada/salida
  init_digitalIO();
  
  //para que le sea mas comodo a esteban
  //que lo conecte por el usb
  //Serial1.begin(2000000);
  //Serial.begin(9600);
  Serial.begin(115200);
  
    //initalize SPI
  SPI.begin(); 
  //SPI config --clock 32 Mhz, CPOL = 0, CPHA = 1
  SPI.setBitOrder(MSBFIRST);
  //SPI.setClockDivider(SPI_CLOCK_DIV8); 
  //SPI.setDataMode(SPI_MODE1);  
  
  

  // Inicializamos los histogramas
  clear_histograms();  
  
  // Interrupts initialization
  init_interrupt_P3();
  init_interrupt_P2();
  init_interrupt_TIMER5();  
}

void loop(){
  
}





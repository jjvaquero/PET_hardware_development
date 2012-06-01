#include "daqusb.h"
#include <QDebug>
#include <QByteArray>

daqUsb::daqUsb(QString fileDir,int period, QObject *parent) :
    QObject(parent)
{
    char *namePtr, *c;
    char string_file[512];
    //unsigned short length;
    int result; //, a;
    unsigned char fpgaData[BLOCKLENGTH];
    FILE *file;
    unsigned short isConfigured;
    char data;
    data=128;
    unsigned char aux;

    //antes de empezar a liarla to parda...inicializo el histograma
    for (int i =0 ; i< HISTSIZE; i++) histogram[i] = 0;
    for (int i = 0; i<READLENGTH/2; i++) leidos.values[i] = 0;

    // Find the QuickUSB modules in the system
     QuickUsbFindModules(&devName[0], 128);

    // Check for no modules and bail if we don't find any
        if (*devName == '\0') {
            qDebug()<<"Couldn't find any modules";
          return;
        }

        // Print out the name of each module found
        namePtr = devName;
        while (*namePtr != '\0') {
            qDebug()<<"Found  "<<namePtr;
            namePtr = namePtr + strlen(namePtr);
        }

        // Open the first device
        result = QuickUsbOpen(&hDev, devName);
        if (result == FALSE) {
            qDebug()<<"Cannot open "<<devName;

            return;
        }

        //Prgram the FPGA

            /** Escribe la configuracion del puerto Input=0, Output=1,
            esta es necesario para prender la Fpga del la tarjeta de evaluacion*/
            printf("Preparing FPGA configuration....");
            qDebug()<<"Configurando FPGA";
            result = QuickUsbWritePortDir(hDev, 0, (char) 0x80);
            if (result == 0)
            {
                qDebug()<<" Fail while trying to configure Port A for write";
                return;
            }


            aux = (unsigned char)128;
            result = QuickUsbWritePort(hDev, 0, &aux , 1);
            if (result == 0)
            {
                qDebug()<<"Fail while writting port A";
                return;
            }

            result = QuickUsbWriteSetting(hDev, SETTING_FPGATYPE, 0);
            if (result == 0) {
                qDebug()<<"Fail while configuring FPGA type";
                return;
            }
            qDebug()<<"FPGA Conifgurada";
            printf("Done\n");

            result = QuickUsbStartFpgaConfiguration(hDev);
            if (result == 0) {
               qDebug()<<"QuickUsbStartFpgaConfiguration failed, RESULT="<<result;
                return;
            }

            //Abrimos el archivo de configuración

                //magias para poder usar strcpy...algo me dice que esto me lo podria ahorrar
                //todo incluido el strcpy
                //QString      string = "this is string";
                QByteArray   bytes  = fileDir.toAscii();
                const char * ptr    = bytes.data();
            // do what you want with ptr

                c=strcpy(string_file,ptr);
                //"C:/Documents and Settings/rchil/Desktop/DAQ_USB/DAQ_GUI/Counter.rbf"); //daq_fpga.rbf");
                qDebug()<<"Programing Altera FPGA ... ";

                file = fopen( string_file , "rb");
                if(file == NULL )
                {
                    qDebug()<<"Unable to open File "<<string_file;
                    return;
                }

                result = fread(fpgaData,sizeof(unsigned char),BLOCKLENGTH,file);
                while(result > 0)
                {

                    result = QuickUsbWriteFpgaData(hDev, fpgaData, result);
                    if (result == 0)
                    {
                        QuickUsbClose(hDev);
                        qDebug()<<"FPGA configuration Failed ";
                        return;
                    }
                    result = fread(fpgaData,sizeof(unsigned char),BLOCKLENGTH,file);
                }
                fclose(file);

                //Confirmamos que la FPGA está configurada
                result = QuickUsbIsFpgaConfigured(hDev, &isConfigured);
                if (isConfigured== 0)
                {
                    qDebug()<<"FPGA not configured properly";
                   // qDebug()<<"FPGA xunga";
                    return;
                }
                else
                {
                    qDebug()<<" done ";
                    //qDebug()<<"FPGA Lista";
                }

                //Arranco el timer para realizar la lectura periodica
                timer1 = new QTimer(this);
                //ajusto el time out de mi timer en ms
                timer1->setInterval(period);
                //conecto el timer a su respectivo slot
                QObject::connect(timer1, SIGNAL(timeout()),this,SLOT(periodicReading()));
                //arranco el timer
                timer1->start();
                //a pastar


                //nada de lectura, esto va en el otro bloque

                /*

                count = READLENGTH; //con este ejemplo no puedo leer mas..luego pongo mis 10.000
                //ahora toca la lectura de los datos a saco
                result = QuickUsbReadData(hDev, leidos.data, &count );
                if (result== 0)
                {
                    qDebug()<<"Lectura xunga";
                    return;
                }
                else
                {
                    qDebug()<<"Leido ";
                    emit this->dataUpdated(leidos.values, READLENGTH/2 );
                    //para probar si ha funcionado
                    for (int i= 0; i< 256; i++){
                        qDebug()<<"Valor "<<i<<" = "<<leidos.values[i];
                    }
                    //funciona xaxi...ahora a hacer la grafica....
                }



                QVBoxLayout *layout = new QVBoxLayout;
                layout->addWidget( (mi_plot = new plot(leidos.values, 255)));
                ui->frame->setLayout(layout);

                 QString cad = devName;
                 ui->label->setText(cad);*/

}

daqUsb::~daqUsb()
{
   timer1->stop();
}


//slot encargado de realizar la lectura periodica de los datos
//emitira tambien la sennal indicando que se han recibido nuevos datos
void daqUsb::periodicReading(){

     unsigned long count;
     int result; //, a;

    count = READLENGTH; //con este ejemplo no puedo leer mas..luego pongo mis 10.000
    //ahora toca la lectura de los datos a saco
    result = QuickUsbReadData(hDev, leidos.data, &count );
    if (result== 0)
    {
        qDebug()<<"Lectura xunga";
        return;
    }
    else
    {
        qDebug()<<"Leido ";
        //calculo ahora el histograma
        this->calc_histogram();
        //emit this->dataUpdated(leidos.values, READLENGTH/2 );
        emit this->dataUpdated(histogram, HISTSIZE );

        //para probar si ha funcionado
        /*for (int i= 0; i< 256; i++){
            qDebug()<<"Valor "<<i<<" = "<<leidos.values[i];
        }*/
        //funciona xaxi...ahora a hacer la grafica....
    }

}

void daqUsb::calc_histogram(){
    //meto los datos leidos en el histograma
    for (int i = 0; i< READLENGTH/2; i++){
        //compruebo que el valor este en el rango permitido
        if (leidos.values[i]< HISTSIZE){ //unsigned, no hace falta mirar negativos
            histogram[(int)leidos.values[i]]++; //incremento el valor
            qDebug()<<"Histograma "<<histogram[(int)leidos.values[i]];
        }else{
            //aviso que el valor no vale
            qDebug()<<"Valor no permitido "<<leidos.values[i];
        }
    }
}

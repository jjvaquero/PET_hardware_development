#ifndef DAQUSB_H
#define DAQUSB_H

#include <QObject>
#include "CQuickUsb.h"
#include <QTimer>

//Constantes de ususario
#define BLOCKLENGTH 64 //Para la carga de datos en la FPGA
#define READLENGTH 10000 //defino el numero de bytes a leer en cada caso
#define HISTSIZE 4096

//empleado para la conversion de datos
union guarda{ unsigned char data[READLENGTH]; unsigned short values[READLENGTH/2];};

class daqUsb : public QObject
{
    Q_OBJECT
public:
    explicit daqUsb(QString fileDir,int period, QObject *parent = 0);
     ~daqUsb();
    
signals:
    void dataUpdated(unsigned short *, int);
    
private slots:
    //slot para la lectura de datos, emitira tambien la sennal de dataUpdated
    void periodicReading();

private:
    void calc_histogram();

    char devName[128];
    guarda leidos;
    unsigned short histogram[HISTSIZE];
    HANDLE hDev;
    QTimer *timer1;
    
};

#endif // DAQUSB_H

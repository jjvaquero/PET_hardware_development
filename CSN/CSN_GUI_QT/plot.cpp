#include "plot.h"
#include <QPainter>
#include <QDebug>
#include <QPen>

plot::plot(int *dataIn, int dataLength,QWidget *parent) :
    QWidget(parent)
{
    //this->data = dataIn;
    this->dataLength = dataLength;
    //ajusto un tamanno base para calcular las dimensiones en funcion de el
    //this->setBaseSize(550,550); //dejo 25 arriba y abajo para los margenes
    int *dataTmp = dataIn; //tengo que usar esto o sino luego habre desplazado mi puntero
    for (int i = 0; i< this->dataLength; i++){
        //qDebug()<<*dataTmp;
        data[i] = *dataTmp;
        dataTmp++;
    }
}

plot::plot(unsigned short *dataIn, int dataLength,QWidget *parent) :
    QWidget(parent){
    //this->data = dataIn;
    this->dataLength = dataLength;
    //ajusto un tamanno base para calcular las dimensiones en funcion de el
    //this->setBaseSize(550,550); //dejo 25 arriba y abajo para los margenes
    unsigned short *dataTmp = dataIn; //tengo que usar esto o sino luego habre desplazado mi puntero
    for (int i = 0; i< this->dataLength; i++){
       // qDebug()<<*dataTmp;
        data[i] =(int) *dataTmp;
        dataTmp++;
    }

}



void plot::paintEvent(QPaintEvent *)
{
    QPainter painter(this);
    //esto mirarlo para poner luego valores
    painter.setPen(Qt::blue);
    painter.setFont(QFont("Arial", 30));
    painter.drawText(rect(), Qt::AlignCenter, "Qt");


    //primero...pinto unos ejes to monos...
    int height,width;
    int posx, posy;

    posx = this->pos().x()+5;
    posy = this->pos().y()+5;
    height = this->size().height()- 5;
    width = this->size().width() - 5;


    painter.setPen(Qt::blue);

    painter.drawLine(posx,height,width,height);
    painter.drawLine(posx,posy,posx,height);

    //obtengo el maximo valor de mis datos
    int maxVal = 0;
    for (int i = 0; i<dataLength; i++){
        if (data[i] > maxVal){

            maxVal = data[i];
        }
    }
     //qDebug()<<" max "<<maxVal;
    //calculo cada cuanto se dibuja un eje
    int dist_eje_x = width /5;
    int dist_eje_y = height/5;

    //pongo los ejes
    for(int i = 0; i<4; i++){
        painter.drawLine(dist_eje_x*(i+1),height+2,dist_eje_x*(i+1),height-2);
        painter.drawLine(posx+2,height-dist_eje_y*(i+1),posx-2,height-dist_eje_y*(i+1));
    }

    //finalmente dibujo los datos

    //lo primero es escalarlos, en funcion de mi resolucion
    float yres = float(maxVal)/height;
    float dist_x = float(width)/dataLength;


    //puedo mirar luego si puedo elegir el tamanno de pen
    QPen pen(Qt::red, (int)dist_x); //, Qt::DashDotLine, Qt::RoundCap, Qt::RoundJoin);
    painter.setPen(pen);
    for (int i = 0; i<dataLength; i++){
        painter.drawPoint((int)(posx + i*dist_x),height - (int)(data[i]/yres) );
    }


}

void plot::updateData(int *dataIn,int dataLength){
    this->dataLength = dataLength;
    //ajusto un tamanno base para calcular las dimensiones en funcion de el
    int *dataTmp = dataIn; //tengo que usar esto o sino luego habre desplazado mi puntero
    for (int i = 0; i< this->dataLength; i++){
        //qDebug()<<*dataTmp;
        data[i] = *dataTmp;
        dataTmp++;
    }
    this->repaint();
}

void plot::updateData(unsigned short *dataIn, int dataLength){
    //this->data = dataIn;
    this->dataLength = dataLength;
    //ajusto un tamanno base para calcular las dimensiones en funcion de el
    //this->setBaseSize(550,550); //dejo 25 arriba y abajo para los margenes
    unsigned short *dataTmp = dataIn; //tengo que usar esto o sino luego habre desplazado mi puntero
    for (int i = 0; i< this->                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           dataLength; i++){
        //qDebug()<<*dataTmp;
        data[i] = (int) *dataTmp;
        dataTmp++;
    }
    this->repaint();
}

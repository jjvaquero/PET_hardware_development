#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QVBoxLayout>

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    //creo mi daq y le digo que archivo cargar en la fpga y el periodo en ms
   /*
    mi_daq = new daqUsb(
                "C:/Documents and Settings/rchil/Desktop/DAQ_USB/DAQ_GUI/Counter.rbf", 10);
                //daq_fpga.rbf");)
    //creo ahora el plot...para empezar le puedo meter algo de basurilla
    unsigned short basu[100];
    for (int i = 0; i< 100; i++) basu[i] = i;

    QVBoxLayout *layout = new QVBoxLayout;
    layout->addWidget((mi_plot = new plot(basu,100)));
    */

    ui->setupUi(this);

    ui->lineEdit->setText("C:/Documents and Settings/rchil/Desktop/DAQ_USB/DAQ_GUI/Counter.rbf");
    ui->lineEdit_2->setText("10");

    /*
    ui->frame->setLayout(layout);

    //ahora conecto el plot con el daq
    QObject::connect(mi_daq, SIGNAL(dataUpdated(unsigned short*,int)),
                     mi_plot,SLOT(updateData(unsigned short*,int)));
    */
    QObject::connect(ui->pushButton, SIGNAL(clicked()), this, SLOT(comienza()));
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::comienza(){
    QString cad;
    int tiempo;

    cad = ui->lineEdit->text();
    //tiempo = ui->lineEdit_2->text().toInt();
    tiempo = 10;

    mi_daq = new daqUsb(cad, tiempo);

    unsigned short basu[100];
    for (int i = 0; i< 100; i++) basu[i] = i;

    QVBoxLayout *layout = new QVBoxLayout;
    layout->addWidget((mi_plot = new plot(basu,100)));

    ui->frame->setLayout(layout);

    //ahora conecto el plot con el daq
    QObject::connect(mi_daq, SIGNAL(dataUpdated(unsigned short*,int)),
                     mi_plot,SLOT(updateData(unsigned short*,int)));


}

void MainWindow::closeEvent(QCloseEvent *){

}

void MainWindow::paintEvent(QPaintEvent *){

}

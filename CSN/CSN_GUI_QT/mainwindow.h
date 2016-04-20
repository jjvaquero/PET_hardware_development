#ifndef MAINWINDOW_H
#define MAINWINDOW_H

//Constantes de ususario
#define BLOCKLENGH 64 //Para la carga de datos en la FPGA

#include <QMainWindow>
#include "daqusb.h"
#include "plot.h"
#include <QCloseEvent>

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT
    
public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();

private slots:
    void paintEvent(QPaintEvent *);
    void closeEvent(QCloseEvent *);
    void comienza();
    
private:
    Ui::MainWindow *ui;
    daqUsb *mi_daq;
    plot *mi_plot;
};

#endif // MAINWINDOW_H

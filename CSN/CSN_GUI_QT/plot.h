#ifndef PLOT_H
#define PLOT_H

#include <QWidget>
#include <QPaintEvent>

class plot : public QWidget
{
    Q_OBJECT
public:
    explicit plot(int *data, int dataLength, QWidget *parent = 0);
    explicit plot(unsigned short *data, int dataLength, QWidget *parent=0);
    
signals:
    
public slots:
    void paintEvent(QPaintEvent *);
    void updateData(int *dataIn,int dataLength);
    void updateData(unsigned short *dataIn, int dataLength);

private:
    int dataLength;
    int data[4096];
    
};

#endif // PLOT_H

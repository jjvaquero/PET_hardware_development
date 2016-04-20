#-------------------------------------------------
#
# Project created by QtCreator 2012-02-21T11:24:07
#
#-------------------------------------------------

QT       += core gui

TARGET = pr_qusb
TEMPLATE = app


SOURCES += main.cpp\
        mainwindow.cpp \
    CQuickUsb.cpp \
    plot.cpp \
    daqusb.cpp

HEADERS  += mainwindow.h \
    QuickUSB.h \
    CQuickUsb.h \
    plot.h \
    daqusb.h

FORMS    += mainwindow.ui

unix:!macx:!symbian|win32: LIBS += -L$$PWD/ -lQuickUSB

INCLUDEPATH += $$PWD/
DEPENDPATH += $$PWD/

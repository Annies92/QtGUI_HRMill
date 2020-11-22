#include "GuiApplication.h"
#include <QtWidgets/QApplication>
#include <QCoreApplication>
#include <QQmlApplicationEngine>
#include <QDebug>
#include <QtWidgets>
#include <QString>
#include <QApplication>
#include <QtSql>
#include <QtQml>
#include <QSqlDatabase>
#include <QtDebug>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv); // QApplication class is used to show widgets and UI elements in our application
    GuiApplication w; //GuiApplication class is the primary class which displays the GUI Application using Qt concepts
    w.show();         //here 'w' is the Object to show the primary class
    return a.exec();
}

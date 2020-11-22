#pragma once
#ifndef GuiApplication_h
#define GuiApplication_h
#include "customer.h"
#include "ui_GuiApplication.h"
#include <QMainWindow>
#include <QDialog>
#include <QPieSeries>
#include <QPieSlice>
#include <QGraphicsView>
#include <QSqlDatabase>
#include <QSqlQueryModel>
#include <QSqlQuery>
#include <QTableView>
#include <QStackedWidget>
#include <QWidget>
#include <QAction>
#include <QtCore>
#include <QDialog>
#include <QtGui>
#include <QObject>
#include <QGraphicsView>
#include <QGraphicsScene>
#include <QGraphicsItem>
#include <QtCharts/QChart>
#include <QtCharts/QBarSet>
#include <QtCharts/QBarSeries>
#include <QtCharts/QChartView>
#include <QSqlTableModel>


namespace Ui {
class GuiApplication;
}
class GuiApplication : public QMainWindow
{
    Q_OBJECT
public:
       int Count=1;
       int count=1;
       int count1=1;
       int count2=1;
       int count3=1;
       int count4;
       int counT=1;
       void set_animation();
       void rolling_animation();
       void rolling_animation_1();
       void rolling_animation_2();
       QSqlDatabase mydb;
       explicit GuiApplication(QWidget *parent = 0);
       ~GuiApplication();
       QWidget *centralwidget;
       QStackedWidget *stackedwidget;
       QQuickWidget *quickWidget;
       QQuickWidget *quickWidget_4;
       QWidget *contain;
       QWidget *page;
       QWidget *page_1;
       QWidget *page2;
       QWidget *page3;
       QAction *actionhome;
       QAction *actionrefresh;
       QAction *actionbackward;
       QAction *actionforward;
       QAction *actionlogout;
       QAction *actionAbout_Gui;
       QChartView *piechart;
       QChartView *barchart1;
       QChartView *barchart2;
       QChartView *barchart3;
       QChartView *barchart4;
       QGraphicsView *anim;
       QPieSlice *slice;
       QDoubleSpinBox *holesize;
       void createActions();
       void show_cust_table();
       void show_block1_2();
       void show_block3_4();
       //void show_piechart();
       void show_barchart1();
       void show_barchart2();
       void show_barchart3();
       void show_barchart4();
       void closeconn();
       void openconn();
       void on_actionNew_Window_triggered();
signals:

public slots:
       void on_actionhome_triggered();
       void on_actionforward_triggered();
       void on_actionbackward_triggered();
       void on_actionAbout_Gui_triggered();
       void on_actionlogout_triggered();
       void on_pushButton_customer_clicked();
       void on_pushButton_Login_clicked();

protected:

private slots:

private:
       Ui::GuiApplication *ui;
       Ui::GuiApplication *widget;
};
#endif // GuiApplication


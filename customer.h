#pragma once
#ifndef customer_h
#define customer_h
#include "GuiApplication.h"
#include <QMainWindow>
#include <QWidget>
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
#include <QObject>
#include <QtCharts/QChart>
#include <QtCharts/QBarSet>
#include <QtCharts/QBarSeries>
#include <QtCharts/QChartView>
#include <QSqlTableModel>

namespace Ui {
	class customer;
}

class customer : public QDialog
{
	Q_OBJECT

public:
       QSqlDatabase mydb;

       customer(QWidget *parent = Q_NULLPTR);
       ~customer();
       QSqlError lastError() const;
       bool open() const;
       QStackedWidget *stackedwidget;
       QWidget *page_1;
public slots:
       void add_customer();
       void delete_customer();
private slots:



private:
       Ui::customer *ui;
};
#endif // customer

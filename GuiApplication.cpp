//*/////////////////////////////////////////////////////////////

   //********************* GuiApplication C++ file ********//

   //******************************************************//
   //******************************************************//
   //*********                                **************//
   //******** Code written by : Sivaram Annies  ***********//
   //*******  Starting Date   : 14.09.2018        *********//
   //******   Owner of code   : Chair of Automatic  *******//
   //*****                      Control Engineering (RST)**//
   //*******                                       ********//
   //******************************************************//

//**********************************************////////////////
#pragma once
#include "GuiApplication.h"
#include "customer.h"
#include "ui_customer.h"
#include <QtCharts/QChart>
#include <QPieSeries>
#include <QPieSlice>
#include <QChartView>
#include <QSqlDatabase>
#include <QSqlQueryModel>
#include <QSqlQuery>
#include <QTableView>
#include <QtDebug>
#include <QStackedWidget>
#include <QWidget>
#include <QAction>
#include <QtCore>
#include <QDialog>
#include <QtGui>
#include <QtQml>
#include <QtQuick>
#include <QQuickView>
#include <QQuickWindow>
#include <QQmlApplicationEngine>
#include <QGraphicsView>
#include <QGraphicsScene>
#include <QGraphicsItem>
#include <QtCharts/QChart>
#include <QtCharts/QBarSet>
#include <QtCharts/QBarSeries>
#include <QtCharts/QChartView>
#include <QGraphicsScene>
#include <QtCharts/QBarCategoryAxis>
#include <QSqlTableModel>
#include <QSqlDatabase>
#include <QMessageBox>
#include <Windows.h>
#include <HtmlHelp.h>
#include <QQuickWidget>
#include <QQuickItem>
#include <QQmlError>
#include <QtWidgets>

using namespace QtCharts;

GuiApplication::GuiApplication(QWidget *parent) :QMainWindow(parent),
ui(new Ui::GuiApplication)
{
    ui->setupUi(this); // Sets up GuiApplication UI window.
    ui->stackedwidget->setCurrentIndex(0); // sets first screen of GUI application using index 0 of stacked widget

    ui->toolBar->hide(); // hides the toolbar and menubar of application screen
    ui->menuBar->hide();

    // Setting up SIGNALS and SLOTS connection to check USER Credentials through
    // on_pushButton_login_clicked C++ function and for adding/deleting Customer details
    // using on_pushButton_customer_clicked C++ function
    connect(ui->lineEdit_2, SIGNAL(returnPressed()), ui->pushButton, SIGNAL(click()));
    connect(ui->pushButton, SIGNAL(clicked()), this, SLOT(on_pushButton_Login_clicked()));
    connect(ui->pushButton_6, SIGNAL(clicked()), this, SLOT(on_pushButton_customer_clicked()));
    ui->label_3->clear();
}

// /////////////// C++ function to check USER credentials//////////////////////
void GuiApplication::on_pushButton_Login_clicked()
{
    QString label_2 = ui->lineEdit->text();   // creating QString variables to assign login credentials entered
    QString label_4 = ui->lineEdit_2->text(); // on first screen in application
    openconn(); // calling C++ function openconn to open database connection

    // creating QSqlQuery object to check user credentials using SELECT sql statement
    QSqlQuery query;
    if (query.exec("select * from user_info where username = '" + label_2 + "' and password = '" + label_4 + "'"))
    {
        if (query.next()) // if query is successful and able to get a row match with the database table user_info
        {
            // login success message pops up and then call to on_actionNew_Window_triggered C++ function
            QMessageBox::information(this, "Login success.", "You have successfully logged in!");
            GuiApplication::on_actionNew_Window_triggered();
        }
        else
        {
            // if query is not successful login failed message pops up.
            QMessageBox::information(this, "Login failed.", "Login failed.Please enter valid Username and password.");
            ui->label_3->clear();
        }
    }
}
// ///////////// C++ function to display home screen and its functionalities /////////////////
void GuiApplication::on_actionNew_Window_triggered()
{
    // Show 2nd screen(index 1) of application using stackedwidget UI object
    ui->stackedwidget->setCurrentIndex(1);
    // shows toolbar and menubar of application on the screen.
    ui->toolBar->show();
    ui->menuBar->show();
    // calls show_cust_table C++ function to execute and display Customer_info database table.
    show_cust_table();

    // Display Hot Rolling process animation of complete mill on home screen only one time
    // even after multiple times this function call is executed.
    if(count == 1 )
    {
       rolling_animation();
       count = 2;
    }

    // Backward, Home icons are disabled in Home screen and forward icon is enabled
    ui->actionbackward->setDisabled(true);
    ui->actionhome->setDisabled(true);
    ui->actionforward->setDisabled(false);
    count4 = 1;
}

// //// This function is executed after Home icon on application screen is clicked /////////////////
void GuiApplication::on_actionhome_triggered()
{
    ui->stackedwidget->setCurrentIndex(1);
    show_cust_table(); // shows the Customer information table on the home screen by executing this function.
    ui->actionbackward->setDisabled(true);
    ui->actionhome->setDisabled(true);
    count4 = 1;
}

// //// This function is executed after Forward icon on application screen is clicked /////////////////
void GuiApplication::on_actionforward_triggered()
{
    if(count4 == 1)
    {
       ui->stackedwidget->setCurrentIndex(2); // shows the 3rd screen of the application screen
       ui->actionbackward->setDisabled(false); // sets backward, home icons enabled now in this screen.
       ui->actionhome->setDisabled(false);

       show_barchart1(); // shows two bar charts displaying Electrical Current information
       show_barchart2(); // at motors of first and second rolling mill stands.
       show_block1_2();  // shows the rolling process parameters of 1st and 2nd rolling mill stands

       // Display Hot Rolling process animation of first half of mill on 3rd screen for only one time
       // even after multiple times this function call is executed.
       if(count1 == 1)
       {
          rolling_animation_1();
          count1 = 2;
       }
       count4 = 2;
    }
    else
    {
       ui->stackedwidget->setCurrentIndex(3);
       ui->actionforward->setDisabled(true);
       show_barchart3(); // shows two bar charts displaying Electrical Current information
       show_barchart4(); // at motors of third and fourth rolling mill stands.
       show_block3_4();  // shows the rolling process parameters of 3rd and 4th rolling mill stands

       // Display Hot Rolling process animation of second half of mill on 4th screen for only one time
       // even after multiple times this function call is executed.
       if(count2 == 1)
       {
          rolling_animation_2();
          count2 = 2;
       }
       count4 = 3;
    }
}

// This function is executed after backward icon on application screen is clicked /////////////////
void GuiApplication::on_actionbackward_triggered()
{
    if(count4 == 3)
    {
        ui->stackedwidget->setCurrentIndex(2);
        ui->actionforward->setDisabled(false);
        show_barchart1();
        show_barchart2();
        show_block1_2();
        if(count1 == 1)
        {
           rolling_animation_1();
           count1 = 2;
        }
        count4 = 4;
    }
    else
    {
        ui->stackedwidget->setCurrentIndex(1);
        show_cust_table();
        if(count == 1 )
        {
           rolling_animation();
           count = 2;
        }
        ui->actionbackward->setDisabled(true);
        ui->actionhome->setDisabled(true);
        count4 = 1;
    }
}
// this function displays the about GUI help window from menu bar option.
void GuiApplication::on_actionAbout_Gui_triggered()
{
    QProcess::execute("hh.exe C:/Users/SivaramKrishna/Documents/gui help/!SSL!/Microsoft_HTML_Help/gui_help.chm");
}
// this function logs out of the application from any of the 2nd,3rd and 4th screen, later login screen is shown again.
void GuiApplication::on_actionlogout_triggered()
{
    ui->toolBar->hide();
    ui->menuBar->hide();
    ui->stackedwidget->setCurrentIndex(0); // login screen shown

    // text entry fields present in login screen are cleared.
    ui->lineEdit_2->clear();
    ui->lineEdit->clear();
    ui->label_3->clear();
}

// To create menu bar and toolbar icons(home, forward, backward, logout) using QAction class
void GuiApplication::createActions()
{
    actionhome = new QAction(tr("&home"), this);
    connect(ui->actionhome, SIGNAL(triggered()), this, SLOT(on_actionhome_triggered()));
    actionforward = new QAction(tr("&Forward"), this);
    connect(ui->actionforward, SIGNAL(triggered()), this, SLOT(on_actionforward_triggered()));
    actionbackward = new QAction(tr("&Backward"), this);
    connect(ui->actionbackward, SIGNAL(triggered()), this, SLOT(on_actionbackward_triggered()));
    actionlogout = new QAction(tr("&logout"), this);
    connect(ui->actionlogout, SIGNAL(clicked()), this, SLOT(on_actionlogout_triggered()));
}
// To show customer information table on the screen.
void GuiApplication::show_cust_table()
{
    // Create 'conn' Object for GuiApplication Class
    // Create pointer Object 'model' for QSqlQueryModel Class
    // open database using openconn function and conn Object

    GuiApplication conn;
    QSqlQueryModel *model = new QSqlQueryModel();
    conn.openconn();

    // send 'mydb' database as argument to 'query' Object of QSqlQuery Class
    // prepare select SQL statement -> assign to query Object
    // execute the query
    QSqlQuery *query = new QSqlQuery(conn.mydb);
    query->prepare("select * from Customer_Info");
    query->exec();

    // set query result to model Object
    // set this model to UI view Object.
    // close database connection
    model->setQuery(*query);
    ui->view->setModel(model);
    conn.closeconn();
}
// execute Add/Delete section for Customer data.
void GuiApplication::on_pushButton_customer_clicked()
{
    customer *cust = new customer(this);
    cust->show();
    connect(cust, SIGNAL(close()), this, SLOT(on_actionNew_Window_triggered()));
}

// close database connection using remove database function of QSqlDatabase Class
void GuiApplication::closeconn()
{
    mydb:close();
    QSqlDatabase::removeDatabase(QSqlDatabase::defaultConnection);
}

// open database connection by adding SQLite database and its file path
void GuiApplication::openconn()
{
    QSqlDatabase mydb = QSqlDatabase::addDatabase("QSQLITE");
    mydb.setDatabaseName("C:/sqlite/userdb");

    // check if database is open or not
    if (!mydb.open())
    {
        ui->label_3->setText("Failed to open the database");
    }
    else
    {
        ui->label_3->setText("Database is connected");
    }
}

// GuiApplication destructor function to delete ui Object
GuiApplication::~GuiApplication()
{
    delete ui;
}

// show block 1,2 process parameters
void GuiApplication::show_block1_2()
{
    // Create 'conn' Object for GuiApplication Class
    // Create pointer Object 'model' for QSqlQueryModel Class
    // open database using openconn function and conn Object
    GuiApplication conn;
    QSqlQueryModel *model = new QSqlQueryModel();
    conn.openconn();

    // send 'mydb' database as argument to 'query' Object of QSqlQuery Class
    // prepare select SQL statement -> assign to query Object
    // execute the query
    QSqlQuery *query = new QSqlQuery(conn.mydb);
    query->prepare("select * from block1");
    query->exec();

    // set query result to model Object
    // set this model to UI tableview Object.
    model->setQuery(*query);
    ui->tableView->setModel(model);

    // Create pointer Object 'model1' for QSqlQueryModel Class
    // open database using openconn function and conn Object
    QSqlQueryModel *model1 = new QSqlQueryModel();
    conn.openconn();

    // send 'mydb' database as argument to 'query1' Object of QSqlQuery Class
    // prepare select SQL statement -> assign to query1 Object
    // execute the query1
    QSqlQuery *query1 = new QSqlQuery(conn.mydb);
    query1->prepare("select * from block2");
    query1->exec();

    // set query1 result to model1 Object
    // set this model1 to UI tableview_2 Object.
    model1->setQuery(*query1);
    ui->tableView_2->setModel(model1);
}

// show block 3,4 process parameters
void GuiApplication::show_block3_4()
{
    // Create 'conn' Object for GuiApplication Class
    // Create pointer Object 'model' for QSqlQueryModel Class
    // open database using openconn function and conn Object
    GuiApplication conn;
    QSqlQueryModel *model = new QSqlQueryModel();
    conn.openconn();

    // send 'mydb' database as argument to 'query' Object of QSqlQuery Class
    // prepare select SQL statement -> assign to query Object
    // execute the query
    QSqlQuery *query = new QSqlQuery(conn.mydb);
    query->prepare("select * from block3");
    query->exec();

    // set query result to model Object
    // set this model to UI tableview_3 Object.
    model->setQuery(*query);
    ui->tableView_3->setModel(model);

    // Create pointer Object 'model1' for QSqlQueryModel Class
    // open database using openconn function and conn Object
    QSqlQueryModel *model1 = new QSqlQueryModel();
    conn.openconn();

    // send 'mydb' database as argument to 'query1' Object of QSqlQuery Class
    // prepare select SQL statement -> assign to query1 Object
    // execute the query1
    QSqlQuery *query1 = new QSqlQuery(conn.mydb);
    query1->prepare("select * from block4");
    query1->exec();

    // set query1 result to model1 Object
    // set this model1 to UI tableview_4 Object.
    model1->setQuery(*query1);
    ui->tableView_4->setModel(model1);
}

// to show electrical current variation for first mill stand motor
void GuiApplication::show_barchart1()
{
    // create three QBarset pointer objects and assign them values
    QBarSet *set1 = new QBarSet("T1");
    QBarSet *set2 = new QBarSet("T2");
    QBarSet *set3 = new QBarSet("T3");
    *set1 << 24 ;
    *set2 << 30 ;
    *set3 << 27 ;

    //Create QBarSeries pointer object and append above Barset values
    QBarSeries *barseries1 = new QBarSeries();
    barseries1->append(set1);
    barseries1->append(set2);
    barseries1->append(set3);

    //Create QChart pointer object and assign font and set pixelsize and title font
    //add QBarseries object using addseries function of QChart, set title and animation options to QChart object
    QChart *chart1 = new QChart();
    QFont font;
    font.setPixelSize(14);
    chart1->setTitleFont(font);
    chart1->addSeries(barseries1);
    chart1->setTitle("Current Readings - 200er Block");
    chart1->setAnimationOptions(QChart::SeriesAnimations);

    //create QStringlist object and assign it a text '1st-stand'
    QStringList categories1;
    categories1 << "1st-stand";

    //create QBarCategoryAxis object and append to it QStringlist object
    QBarCategoryAxis *axis1 = new QBarCategoryAxis();
    axis1->append(categories1);

    //create default axes and set x-axis with QBarcategoryaxis object and barseries object as arguments
    chart1->createDefaultAxes();
    chart1->setAxisX(axis1, barseries1);

    //create QChartview object and send QChart object as argument
    //set renderhint and parent to QChartview object
    //set QChart object to QChartView UI object
    QChartView *barchart = new QChartView(chart1);
    barchart->setRenderHint(QPainter::Antialiasing);
    barchart->setParent(ui->barchart1);
    ui->barchart1->setChart(chart1);

    //set QChart object legend's visibility and alignment
    chart1->legend()->setVisible(true);
    chart1->legend()->setAlignment(Qt::AlignBottom);

}

// to show electrical current variation for 2nd mill stand motor
void GuiApplication::show_barchart2()
{
    // create three QBarset pointer objects and assign them values
    QBarSet *set1 = new QBarSet("T1");
    QBarSet *set2 = new QBarSet("T2");
    QBarSet *set3 = new QBarSet("T3");
    *set1 << 10 << 15 << 23;
    *set2 << 11 << 16 << 24;
    *set3 << 12 << 16 << 23;

    //Create QBarSeries pointer object and append above Barset values
    QBarSeries *barseries1 = new QBarSeries();
    barseries1->append(set1);
    barseries1->append(set2);
    barseries1->append(set3);

    //Create QChart pointer object and assign font and set pixelsize and title font
    //add QBarseries object using addseries function of QChart, set title and animation options to QChart object
    QChart *chart1 = new QChart();
    QFont font;
    font.setPixelSize(14);
    chart1->setTitleFont(font);
    chart1->addSeries(barseries1);
    chart1->setTitle("Current Readings - 420er Block");
    chart1->setAnimationOptions(QChart::SeriesAnimations);

    //create QStringlist object and assign it a text '1st-stand'
    QStringList categories1;
    categories1 << "1st-stand" << "2nd-stand" << "3rd-stand";

    //create QBarCategoryAxis object and append to it QStringlist object
    QBarCategoryAxis *axis1 = new QBarCategoryAxis();
    axis1->append(categories1);

    //create default axes and set x-axis with QBarcategoryaxis object and barseries object as arguments
    chart1->createDefaultAxes();
    chart1->setAxisX(axis1, barseries1);

    //create QChartview object and send QChart object as argument
    //set renderhint and parent to QChartview object
    //set QChart object to QChartView UI object
    QChartView *barchart = new QChartView(chart1);
    barchart->setRenderHint(QPainter::Antialiasing);
    barchart->setParent(ui->barchart2);
    ui->barchart2->setChart(chart1);

    //set QChart object legend's visibility and alignment
    chart1->legend()->setVisible(true);
    chart1->legend()->setAlignment(Qt::AlignBottom);

}

// to show electrical current variation for 3rd mill stand motor
void GuiApplication::show_barchart3()
{
    // create three QBarset pointer objects and assign them values
    QBarSet *set1 = new QBarSet("T1");
    QBarSet *set2 = new QBarSet("T2");
    QBarSet *set3 = new QBarSet("T3");
    *set1 << 17 << 27 << 36;
    *set2 << 18 << 28 << 37;
    *set3 << 18 << 28 << 38;

    //Create QBarSeries pointer object and append above Barset values
    QBarSeries *barseries1 = new QBarSeries();
    barseries1->append(set1);
    barseries1->append(set2);
    barseries1->append(set3);

    //Create QChart pointer object and assign font and set pixelsize and title font
    //add QBarseries object using addseries function of QChart, set title and animation options to QChart object
    QChart *chart1 = new QChart();
    QFont font;
    font.setPixelSize(14);
    chart1->setTitleFont(font);
    chart1->addSeries(barseries1);
    chart1->setTitle("Current Readings - 500er Block");
    chart1->setAnimationOptions(QChart::SeriesAnimations);

    //create QStringlist object and assign it a text '1st-stand'
    QStringList categories1;
    categories1 << "1st-stand" << "2nd-stand" << "3rd-stand";

    //create QBarCategoryAxis object and append to it QStringlist object
    QBarCategoryAxis *axis1 = new QBarCategoryAxis();
    axis1->append(categories1);

    //create default axes and set x-axis with QBarcategoryaxis object and barseries object as arguments
    chart1->createDefaultAxes();
    chart1->setAxisX(axis1, barseries1);

    //create QChartview object and send QChart object as argument
    //set renderhint and parent to QChartview object
    //set QChart object to QChartView UI object
    QChartView *barchart = new QChartView(chart1);
    barchart->setRenderHint(QPainter::Antialiasing);
    barchart->setParent(ui->barchart3);
    ui->barchart3->setChart(chart1);

    //set QChart object legend's visibility and alignment
    chart1->legend()->setVisible(true);
    chart1->legend()->setAlignment(Qt::AlignBottom);

}

// to show electrical current variation for 4th mill stand motor
void GuiApplication::show_barchart4()
{
    // create three QBarset pointer objects and assign them values
    QBarSet *set1 = new QBarSet("T1");
    QBarSet *set2 = new QBarSet("T2");
    QBarSet *set3 = new QBarSet("T3");
    *set1 << 24 << 31 << 38 << 44 << 48 << 54;
    *set2 << 25 << 30 << 39 << 45 << 49 << 55;
    *set3 << 23 << 30 << 39 << 45 << 47 << 55;

    //Create QBarSeries pointer object and append above Barset values
    QBarSeries *barseries1 = new QBarSeries();
    barseries1->append(set1);
    barseries1->append(set2);
    barseries1->append(set3);

    //Create QChart pointer object and assign font and set pixelsize and title font
    //add QBarseries object using addseries function of QChart, set title and animation options to QChart object
    QChart *chart1 = new QChart();
    QFont font;
    font.setPixelSize(14);
    chart1->setTitleFont(font);
    chart1->addSeries(barseries1);
    chart1->setTitle("Current Readings - FSFM Block");
    chart1->setAnimationOptions(QChart::SeriesAnimations);

    //create QStringlist object and assign it a text '1st-stand'
    QStringList categories1;
    categories1 << "1st-stand" << "2nd-stand" << "3rd-stand" << "4th-stand" << "5th-stand" << "6th-stand";

    //create QBarCategoryAxis object and append to it QStringlist object
    QBarCategoryAxis *axis1 = new QBarCategoryAxis();
    axis1->append(categories1);

    //create default axes and set x-axis with QBarcategoryaxis object and barseries object as arguments
    chart1->createDefaultAxes();
    chart1->setAxisX(axis1, barseries1);

    //create QChartview object and send QChart object as argument
    //set renderhint and parent to QChartview object
    //set QChart object to QChartView UI object
    QChartView *barchart = new QChartView(chart1);
    barchart->setRenderHint(QPainter::Antialiasing);
    barchart->setParent(ui->barchart4);
    ui->barchart4->setChart(chart1);

    //set QChart object legend's visibility and alignment
    chart1->legend()->setVisible(true);
    chart1->legend()->setAlignment(Qt::AlignBottom);
}

// create rolling mill animation in home screen
void GuiApplication::rolling_animation()
{
    //create QQuickView object
    //create QWidget object using window container create
    //function of QWidget and send QQuickView object to it
    QQuickView *quickWidget = new QQuickView();
    QWidget *contain = QWidget::createWindowContainer(quickWidget,this);

    //set maximum and minimum size to QWidget object
    //set focus policy to tabfocus
    contain->setMinimumSize(1008,349);
    contain->setMaximumSize(1008,349);
    contain->setFocusPolicy(Qt::TabFocus);

    //set main1.qml file as source to QQuickView object
    //add the QWidget object as a widget to UI's horizontal layout Object
    quickWidget->setSource(QUrl("qrc:/Resources/main1.qml"));
    ui->horizontalLayout_6->addWidget(contain);
}

// create 1st half of rolling mill animation in 3rd screen
void GuiApplication::rolling_animation_1()
{
    //create QQuickView object
    //create QWidget object using window container create
    //function of QWidget and send QQuickView object to it
    QQuickView *quickWidget_2=new QQuickView();
    QWidget *contain = QWidget::createWindowContainer(quickWidget_2,this);

    //set maximum and minimum size to QWidget object
    //set focus policy to tabfocus
    contain->setMinimumSize(512,300);
    contain->setMaximumSize(512,300);
    contain->setFocusPolicy(Qt::TabFocus);

    //set main1.qml file as source to QQuickView object
    //add the QWidget object as a widget to UI's horizontal layout Object
    quickWidget_2->setSource(QUrl("qrc:/Resources/onehalf.qml"));
    ui->horizontalLayout_7->addWidget(contain);
}

// create 2nd half of rolling mill animation in 4th screen
void GuiApplication::rolling_animation_2()
{
    //create QQuickView object
    //create QWidget object using window container create
    //function of QWidget and send QQuickView object to it
    QQuickView *quickWidget_3=new QQuickView();
    QWidget *contain = QWidget::createWindowContainer(quickWidget_3,this);

    //set maximum and minimum size to QWidget object
    //set focus policy to tabfocus
    contain->setMinimumSize(512,300);
    contain->setMaximumSize(512,300);
    contain->setFocusPolicy(Qt::TabFocus);

    //set main1.qml file as source to QQuickView object
    //add the QWidget object as a widget to UI's horizontal layout Object
    quickWidget_3->setSource(QUrl("qrc:/Resources/load.qml"));
    ui->horizontalLayout_8->addWidget(contain);
}

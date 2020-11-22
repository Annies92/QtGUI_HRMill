//************************************************************//

   //********************* Customer C++ file **************//

   //******************************************************//
   //******************************************************//
   //*********                                **************//
   //******** Code written by : Sivaram Annies  ***********//
   //*******  Starting Date   : 17.11.2018        *********//
   //******   Owner of code   : Chair of Automatic  *******//
   //*****                      Control Engineering (RST)**//
   //*******                                       ********//
   //******************************************************//

//************************************************************//

#include "ui_customer.h"
#include "customer.h"
#include "GuiApplication.h"
#include "ui_GuiApplication.h"
#include <QtCharts/QChart>
#include <QPieSeries>
#include <QPieSlice>
#include <QChartView>
#include <QSqlDatabase>
#include <QSqlQueryModel>
#include <QSqlError>
#include <QSqlQuery>
#include <QTableView>
#include <QtDebug>
#include <QStackedWidget>
#include <QWidget>
#include <QString>
#include <QAction>
#include <QGraphicsView>
#include <QtCharts/QChart>
#include <QtCharts/QBarSet>
#include <QtCharts/QBarSeries>
#include <QtCharts/QChartView>
#include <QGraphicsScene>
#include <QtCharts/QBarCategoryAxis>
#include <QSqlTableModel>
#include <QSqlDatabase>
#include <QValidator>
#include <QIntValidator> 
#include <QMessageBox>

customer::customer(QWidget *parent) :QDialog(parent),
ui(new Ui::customer)
{
    GuiApplication obj;
    // sets up UI window of the Customer.ui form file
    // connects customer.ui 'pushButton' signal with the 'add_customer' slot
    // connects 'pushButton_2' signal with the 'delete_customer' slot
    ui->setupUi(this);
    connect(ui->pushButton, SIGNAL(clicked()), this, SLOT(add_customer()));
    connect(ui->pushButton_2, SIGNAL(clicked()), this, SLOT(delete_customer()));
    connect(this, SIGNAL(destroyed()), &obj, SLOT(show_cust_table()));
}

//Destructor
customer::~customer()
{
    delete ui; //deletes the customer.ui form file
}
void customer::add_customer()
{
    // create QSqlDatabase pointer Object and GuiApplication Object
	QSqlDatabase *mydb;
    GuiApplication conn;

    //Declaration of the Customer name, Material, Area of C/S, Length, Total number variables using QString class
    //Text entries on the QlineEdit fields in Customer.ui file are assigned to the  declared QString variables
	QString Cname, mat, Area, length, Tnum;
    Cname = ui->lineEdit->text();
	mat = ui->lineEdit_2->text();
	Area = ui->lineEdit_3->text();
	length = ui->lineEdit_4->text();
	Tnum = ui->lineEdit_5->text();
	int x = 0;

    //execute openconn function to open database connection
    conn.openconn();

    //Create QValidator,QDoublevalidator,QRegExp pointer objects and set range for validating entered values
    //set these objects as validators to QLineEdit variables to validate entered new customer values in customer.ui screen
    QValidator *t = new QIntValidator(1, 200, this);
	QLineEdit *edit1 = new QLineEdit(this);
    edit1->setValidator(t);

	QDoubleValidator *l = new QDoubleValidator(1.0, 15.0, 3, this);
	QLineEdit *edit2 = new QLineEdit(this);
	edit2->setValidator(l);

    QDoubleValidator *A = new QDoubleValidator(1.0, 5000, 3, this);
	QLineEdit *edit3 = new QLineEdit(this);
	edit3->setValidator(A);

	QRegExp rx("[A-Za-z0-9_\\s]{0,255}");
	QRegExp tx("[A-Za-z0-9_\\s]{0,255}");
	QValidator *m = new QRegExpValidator(rx, this);
	QLineEdit *edit4 = new QLineEdit(this);
	edit4->setValidator(m);

	QValidator *c = new QRegExpValidator(tx, this);
	QLineEdit *edit5 = new QLineEdit(this);
	edit5->setValidator(c);

    // verify if entered values for new customer satisfy with validation check
	if (t->validate(Tnum, x) == QValidator::Acceptable && l->validate(length,x) == QDoubleValidator::Acceptable && A->validate(Area,x) == QDoubleValidator::Acceptable && m->validate(mat, x) == QRegExpValidator::Acceptable && c->validate(Cname, x) == QRegExpValidator::Acceptable)
	{

        //create QSqlQuery object and prepare insert query to add new row to customer_info table
        //if query executes successfully new row is added message pops up and database connection closed
        //if query fails to execute new row is not added message pops up
		QSqlQuery query;
		query.prepare("Insert into Customer_Info values ('" + Cname + "','" + mat + "','" + Area + "','" + length + "','" + Tnum + "')");
		if (query.exec())
		{
            QMessageBox::information(this, "Customer Update", "New Customer '" +Cname +"' is added to database");
            conn.closeconn();
            //connect.on_actionNew_Window_triggered();

		}
		else
		{
            QMessageBox::critical(this, "Customer Update Error", "Unable to add new customer");
		}
	}
	else
	{
        // if validation of text fields fails wrong input message pops up
        QMessageBox::information(this, "error", "wrong input, enter valid customer details");
    }
    // all QLineEdit text fields data are cleared.
	ui->lineEdit->clear();
	ui->lineEdit_2->clear();
	ui->lineEdit_3->clear();
	ui->lineEdit_4->clear();
	ui->lineEdit_5->clear();
}

//delete customer C++ function
void customer::delete_customer()
{
    //create QSqlDatabase object and QString variables
    QSqlDatabase *mydb;
	QString Cname;
    QString Cust_name;

    //assign UI linedit text to Cname variable
    //create GuiApplication object and open database connection using openconn
	Cname = ui->lineEdit->text();
	GuiApplication con;
	con.openconn();

    //create QSqlQuery object and pass database mydb
    //prepare select query to check if any customer available with entered name(Cname)
	QSqlQuery *qry = new QSqlQuery(con.mydb);
	qry->prepare("select Customer_name from Customer_Info where Customer_name ='" + Cname + "'");

    //if query executes successfully
	if (qry->exec())
	{
       //retrieves query first output record
       //assign records string value to Cust_name
       qry->first();
       Cust_name = qry->value(0).toString();

       //print this retrieved Cust_name
       //check if cust_name and and Cname are equal and also Cname is not empty
       qDebug() << "Customer_name" << Cust_name;
       if (Cname == Cust_name && !Cname.isEmpty())
       {
           //after successful check create QSqlQuery object and pass mydb database
           //execute delete query to delete customer row with customer name Cust_name
           QSqlQuery *query = new QSqlQuery(con.mydb);
           if (query->exec("Delete from Customer_Info where Customer_name ='" + Cust_name + "'"))
           {
               //if executes successfully customer details are deleted message pops up
               // closes database connection using closeconn function
               QMessageBox::information(this, "Customer Update", "Customer '" + Cust_name +"' details are deleted");
               con.closeconn();

           }
           //if delete query fails error message is shown
           else
           {
               qDebug() << " error";
           }
           //if Cname is empty then enter valid customer name message pops up
       }
       else if (Cname.isEmpty())
       {
           QMessageBox::critical(this, "Customer info", "Enter a valid customer name");
       }
       //entered customer name is not there in table message pops up
       else
       {
           QMessageBox::information(this, "Customer Info", "entered Customer name '"+ Cname +"' is not there in table");
       }
	}
    else// closes database connection using closeconn function.
	{
        con.closeconn();
	}

}


//void customer::on_customer_destroyed()
//{
//    GuiApplication object;
//            object.show_cust_table();
//}

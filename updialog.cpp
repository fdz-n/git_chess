#include "updialog.h"
#include "ui_updialog.h"

UpDialog::UpDialog(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::UpDialog)
{
    ui->setupUi(this);
}

UpDialog::~UpDialog()
{
    delete ui;
}

int UpDialog::getSetting(){
    this->exec();
    return ui->comboBox->currentIndex();
    ui->pushButton->setStyleSheet(
                "QPushButton{background-color: rgb(255, 255, 255);}"
                //鼠标悬停样式
                "QPushButton:hover{"
                "border-color:rgba(255,255,255,200);"
                "border:2px solid rgb(20,196,188);border-radius:15px;"//边框粗细-颜色-圆角设置
                "}");
}

void UpDialog::on_pushButton_clicked()
{
    close();
}

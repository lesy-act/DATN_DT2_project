#include"Lamp.h"
Lamp::Lamp()
{

}
void Lamp::on_machine()
{
    qDebug()<<"on Lamp";
}
void Lamp::off_machine()
{
    qDebug()<<"off Lamp";
}
void Lamp::set_pin_mode(int pin, int mode)
{
    this->pin = pin;
    this->mode = mode;
}

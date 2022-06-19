#ifndef GPIO_H
#define GPIO_H
#include<QObject>
#include<QDebug>
class GPIO:public QObject{
    Q_OBJECT
public:
    explicit GPIO();
    virtual Q_INVOKABLE void on_machine() = 0;
    virtual Q_INVOKABLE void off_machine() = 0;
    virtual Q_INVOKABLE void set_pin_mode(int pin, int mode) = 0;
public:
    int pin;
    int mode;
};
#endif // GPIO_H

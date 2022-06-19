#ifndef LAMP_H
#define LAMP_H
#include "GPIO.h"
class Lamp:public GPIO
{
public:
    Lamp();
    Q_INVOKABLE void on_machine() override;
    Q_INVOKABLE void off_machine() override;
    Q_INVOKABLE void set_pin_mode(int pin, int mode) override;
};

#endif // LAMP_H

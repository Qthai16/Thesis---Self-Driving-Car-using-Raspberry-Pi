#ifndef RASPI_UART_SEND_H
#define RASPI_UART_SEND_H


// gcc -Wall uart_send_test.c -o uart_test_2 -lwiringPi
#include <stdio.h>
#include <stdint.h>
#include <iostream>
#include <unistd.h>			
#include <fcntl.h>			
#include <termios.h>
#include <wiringPi.h>
#include <wiringSerial.h>

class PI_UART
{
public:
	PI_UART();
    ~PI_UART();

    int uart_string_send(uint8_t* data);

private:

};

#endif
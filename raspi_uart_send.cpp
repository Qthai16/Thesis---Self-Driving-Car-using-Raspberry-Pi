#include "raspi_uart_send.h"

int PI_UART::uart_string_send(uint8_t* data)
{
    int uart0_filestream = -1;

    if ((uart0_filestream = serialOpen ("/dev/serial0", 9600)) < 0 )
    {
	printf("Error - Unable to open UART.  Ensure it is not in use by another application\n");
    }
    if (uart0_filestream != -1)
    {
	while(*data != 0x00){
	    printf("%s", (char*)(data));
	    serialPuts(uart0_filestream, (char*)(data));
	    
	    //printf("%s\n", (char*)(data++));
	    serialFlush(uart0_filestream);
	    fflush(stdout);
	}
    }
    close(uart0_filestream);
    return 0;
}

PI_UART::~PI_UART() {}
PI_UART::PI_UART() {}

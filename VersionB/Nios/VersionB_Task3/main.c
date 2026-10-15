#include <system.h>
#include <altera_avalon_pio_regs.h>
#include <io.h>
#include <altera_avalon_jtag_uart_regs.h>
#include <stdio.h>
#include "sys/alt_alarm.h"
#include <sys/alt_stdio.h>
#include "Task3.h"

alt_u32 timer_isr_function(void* pointer){
	int* t_flag = (int*) pointer;
	(*t_flag) = 1;
	return 1000;
}

int jtag_read_char(void)
{
    unsigned int character =
        IORD_ALTERA_AVALON_JTAG_UART_DATA(JTAG_UART_BASE);
    if (character & ALTERA_AVALON_JTAG_UART_DATA_RVALID_MSK) {
        return character & ALTERA_AVALON_JTAG_UART_DATA_DATA_MSK;
    }

    return -1;
}

int main()
{
	FILE* lcd;
	alt_alarm timer;
	int t_flag = 0;
	int t_print = -1;
	int keys;
	char command[64];
	int index = 0;
	int t1,t2,t3,t4,t5,t6 = 10;

	TickData data;
	reset(&data);

	alt_alarm_start(&timer, 1000, timer_isr_function, &t_flag);

	lcd = fopen(LCD_NAME,"w");

	while(1){
//implement uart, update data.t1 to t6
		int c = jtag_read_char();
		if (c >= 0) {
			if (c == '\n'){
				index = 0;
				if(sscanf(command,
						"%4d,%4d,%4d,%4d,%4d,%4d",
						&t1, &t2, &t3, &t4, &t5, &t6)==6){
					data.t1 = t1;
					data.t2 = t2;
					data.t3 = t3;
					data.t4 = t4;
					data.t5 = t5;
					data.t6 = t6;
					printf("Time changed successfully!\n");
					printf("%d,%d,%d,%d,%d,%d\n",
						   t1, t2, t3, t4, t5, t6);
				}
			}
			else if (index < 64 - 1){
				command[index++] = (char)c;
			}

		}

//
		tick(&data);
		keys = IORD_ALTERA_AVALON_PIO_DATA(KEYS_BASE);
		data.NSraised = !(keys&0x1);
		data.EWraised = !(keys&0x2);
		IOWR_ALTERA_AVALON_PIO_DATA(LEDS_RED_BASE,
				(data.NS_G<<0)|(data.NS_Y<<1)|(data.NS_R<<2)|
				(data.EW_G<<3)|(data.EW_Y<<4)|(data.EW_R<<5)|
				(data.NS_P<<6)|(data.EW_P<<7));

		if(t_flag==1){
			data.t++;
			data.pNS++;
			data.pEW++;
			t_flag=0;
		}
		if(lcd != NULL){
			if(t_print != data.t){
				#define ESC 27
				#define CLEAR_LCD_STRING "[2J"
				fprintf(lcd, "%c%s", ESC, CLEAR_LCD_STRING);
				fprintf(lcd, "time: %i", data.t);
				if(data.EWrequest){
					fprintf(lcd,"EW");
				}
				if(data.NSrequest){
					fprintf(lcd,"NS");
				}
				fflush(lcd);
				t_print = data.t;
			}
		}
	}
	fclose(lcd);
	return 0;


}

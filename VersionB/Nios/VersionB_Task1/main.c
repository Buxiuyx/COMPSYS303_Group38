#include <system.h>
#include <altera_avalon_pio_regs.h>
#include <stdio.h>
#include "sys/alt_alarm.h"
#include "Task1.h"


alt_u32 timer_isr_function(void* pointer){
	int* t_flag = (int*) pointer;
	(*t_flag) = 1;
	return 1000;
}

int main()
{
	FILE* lcd;
	alt_alarm timer;
	int t_flag = 0;
	int t_print = -1;

	TickData data;
	reset(&data);

	alt_alarm_start(&timer, 1000, timer_isr_function, &t_flag);

	lcd = fopen(LCD_NAME,"w");

	while(1){
		tick(&data);
		IOWR_ALTERA_AVALON_PIO_DATA(LEDS_RED_BASE,
				(data.NS_G<<0)|(data.NS_Y<<1)|(data.NS_R<<2)|
				(data.EW_G<<3)|(data.EW_Y<<4)|(data.EW_R<<5));

		if(lcd != NULL){
			if(t_print != data.t){
				#define ESC 27
				#define CLEAR_LCD_STRING "[2J"
				fprintf(lcd, "%c%s", ESC, CLEAR_LCD_STRING);
				fprintf(lcd, "time: %i", data.t);
				fflush(lcd);
				t_print = data.t;
			}
		}
		if(t_flag==1){
			data.t++;
			t_flag=0;
		}
	}
	return 0;
}

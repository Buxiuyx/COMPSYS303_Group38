#include <system.h>
#include <altera_avalon_pio_regs.h>
#include <stdio.h>
#include "sys/alt_alarm.h"
#include "Task1.h"


alt_u32 timer_isr_function(void* pointer){
	int* t = (int*) pointer;
	t++;
	return 1000;
}

int main()
{
	alt_alarm timer;
	int t = 0;
	TickData data;
	reset(&data);
	alt_alarm_start(&timer, 1000, timer_isr_function, &t);

	while(1){
		tick(&data);
		data.t = t;
		IOWR_ALTERA_AVALON_PIO_DATA(LEDS_RED_BASE,data.NS_G);
	}
	return 0;
}

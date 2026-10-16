#include <system.h>
#include <altera_avalon_pio_regs.h>
#include <stdio.h>
#include "sys/alt_alarm.h"
#include "Task4.h"

void key_interrupts_function(void* pointer, alt_u32 id){
	int* temp = (int*) pointer;
	(*temp) = IORD_ALTERA_AVALON_PIO_EDGE_CAP(KEYS_BASE);
	IOWR_ALTERA_AVALON_PIO_EDGE_CAP(KEYS_BASE, 0);

}

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
	int key_value;

	TickData data;
	reset(&data);

	IOWR_ALTERA_AVALON_PIO_EDGE_CAP(KEYS_BASE, 0);
	IOWR_ALTERA_AVALON_PIO_IRQ_MASK(KEYS_BASE, 0x7);
	alt_irq_register(KEYS_IRQ, &key_value,key_interrupts_function);
	alt_alarm_start(&timer, 1000, timer_isr_function, &t_flag);

	lcd = fopen(LCD_NAME,"w");

	while(1){
		tick(&data);

		IOWR_ALTERA_AVALON_PIO_DATA(LEDS_RED_BASE,
				(data.NS_G<<0)|(data.NS_Y<<1)|(data.NS_R<<2)|
				(data.EW_G<<3)|(data.EW_Y<<4)|(data.EW_R<<5));

		if(t_flag==1){
			data.t++;
			data.tSnap++;
			data.pNS++;
			data.pEW++;
			t_flag=0;
		}

		if(key_value != -1){
			if(key_value == 1){
				data.NS_Vehicle = 1;
			}
			else if(key_value ==2){
				data.EW_Vehicle = 1;
			}
			key_value = -1;
		}
		if(data.Camera_activated == 1){
			printf("Camera Activated /n");
			data.Camera_activated =0;
		}
		if(data.EW_Vehicle_Snapshot ==1 | data.NS_Vehicle_Snapshot ==1){
			printf("Snapshot taken /n");
			data.EW_Vehicle_Snapshot =0;
			data.NS_Vehicle_Snapshot =0;
		}
		if(data.EW_Vehicle_Leave ==1 | data.NS_Vehicle_Leave ==1){
			printf("Vehicle leave /n");
			data.EW_Vehicle_Leave =0;
			data.NS_Vehicle_Leave =0;
		}

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
	}
	fclose(lcd);
	return 0;


}

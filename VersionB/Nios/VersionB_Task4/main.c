#include <system.h>
#include <altera_avalon_pio_regs.h>
#include <io.h>
#include <stdio.h>
#include "sys/alt_alarm.h"
#include <alt_types.h>
#include <sys/alt_irq.h>
#include <unistd.h>
#include <sys/alt_stdio.h>
#include <fcntl.h>
#include "Task4.h"
#define TASK1 1
#define TASK2 2
#define TASK3 3
#define TASK4 4

int active_mode = TASK1;
int requested_mode = TASK1;
int switch_pending = 0;

void key_interrupts_function(void* pointer, alt_u32 id){
	if(active_mode == TASK4){
		int* temp = (int*) pointer;
		(*temp) = IORD_ALTERA_AVALON_PIO_EDGE_CAP(KEYS_BASE);
	}
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
	int keys;
	int t_changed = 0;
	char command[64];
	int index = 0;
	int t1,t2,t3,t4,t5,t6 = 10;

	TickData data;
	reset(&data);

	IOWR_ALTERA_AVALON_PIO_EDGE_CAP(KEYS_BASE, 0);
	IOWR_ALTERA_AVALON_PIO_IRQ_MASK(KEYS_BASE, 0x7);
	alt_irq_register(KEYS_IRQ, &key_value,key_interrupts_function);
	alt_alarm_start(&timer, 1000, timer_isr_function, &t_flag);

	lcd = fopen(LCD_NAME,"w");
	fcntl(STDIN_FILENO, F_SETFL, O_NONBLOCK);

	while(1){
		//tick
		tick(&data);
		//Write LED
		IOWR_ALTERA_AVALON_PIO_DATA(LEDS_RED_BASE,
						(data.NS_G<<0)|(data.NS_Y<<1)|(data.NS_R<<2)|
						(data.EW_G<<3)|(data.EW_Y<<4)|(data.EW_R<<5)|
						(data.NS_P<<6)|(data.EW_P<<7));
		//Increment timer
		if(t_flag==1){
			data.t++;
			data.tSnap++;
			data.pNS++;
			data.pEW++;
			t_flag=0;
		}
		//read switches
		int switch_value = IORD_ALTERA_AVALON_PIO_DATA(SWITCHES_BASE);
		int requested_mode = (switch_value & 0x03) + 1;
		//mode switch pending, on RR the mode is switched
		if (requested_mode != active_mode) {
		    switch_pending = 1;
		}
		if (switch_pending && data.NS_R && data.EW_R) {
		    active_mode = requested_mode;
		    switch_pending = 0;
		}

		//Task2
		if(active_mode == TASK2){
			keys = IORD_ALTERA_AVALON_PIO_DATA(KEYS_BASE);
			data.NSraised = !(keys&0x2);
			data.EWraised = !(keys&0x4);
		}

		//Task3
		if(active_mode == TASK3){
			int c = -1;
			c = alt_getchar();
			if (c >= 0) {
				//if it is the end of a string, then check through the string
				if (c == '\n' || c == '\r'){
					//if the sscanf successfully write 6 values
					//and the string in this format
					//then write time value
					command[index] = '\0';
					if(sscanf(command,
							"%4d,%4d,%4d,%4d,%4d,%4d",
							&t1, &t2, &t3, &t4, &t5, &t6)==6){
						t_changed = 1;
						printf("Time passed successfully!\n");
						printf("%d,%d,%d,%d,%d,%d\n",
							   t1, t2, t3, t4, t5, t6);
						//reset index
						index = 0;
					}
					else{
						printf("invalid command");
					}
				}
				//if no the end of the string
				//and haven't reach the max size of command string
				//write this character in to the command string
				else if (index < 64 - 1){
					command[index++] = (char)c;
				}
			}
			if(data.NS_R && data.EW_R && t_changed){
				data.t1 = t1;
				data.t2 = t2;
				data.t3 = t3;
				data.t4 = t4;
				data.t5 = t5;
				data.t6 = t6;
				t_changed = 0;
				printf("Time passed successfully!\n");
			}
		}
		//Task 4
		if(active_mode == TASK4){
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
				printf("Camera Activated \n");
				data.Camera_activated =0;
			}
			if(data.EW_Vehicle_Snapshot == 1 || data.NS_Vehicle_Snapshot ==1){
				printf("Snapshot taken \n");
				data.EW_Vehicle_Snapshot =0;
				data.NS_Vehicle_Snapshot =0;
			}
			if(data.EW_Vehicle_Leave ==1 || data.NS_Vehicle_Leave ==1){
				printf("Vehicle leave \n");
				data.EW_Vehicle_Leave =0;
				data.NS_Vehicle_Leave =0;
			}
		}
		//If task 4 is not on, then clear current vehicle data
		else{
			if(data.NS_Vehicle_Leave == 0){
				data.NS_Vehicle = 1;
			}
			if(data.EW_Vehicle_Leave == 0){
				data.EW_Vehicle = 1;
			}
		}

		if(lcd != NULL){
			if(t_print != data.t){
				#define ESC 27
				#define CLEAR_LCD_STRING "[2J"
				fprintf(lcd, "%c%s", ESC, CLEAR_LCD_STRING);
				fprintf(lcd, "time: %i \n", data.t);
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

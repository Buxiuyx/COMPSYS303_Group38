#include <system.h>
#include <altera_avalon_pio_regs.h>
#include <stdio.h>

int main()
{
	TickData data;
	reset(&data);
	while(1){
		tick(&data);
	}
	return 0;
}

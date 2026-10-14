#ifndef TASK1_H
#define TASK1_H
/*
 * Automatically generated C code by
 * KIELER SCCharts - The Key to Efficient Modeling
 *
 * http://rtsys.informatik.uni-kiel.de/kieler
 */


typedef struct {
  char EW_R;
  char EW_Y;
  char EW_G;
  char NS_R;
  char NS_Y;
  char NS_G;
  int t;
  char _g1;
  char _g3;
  char _g4;
  char _g6;
  char _g7;
  char _g9;
  char _g10;
  char _g12;
  char _g13;
  char _g15;
  char _g16;
  char _g18;
  char _g19;
  char _GO;
  char _cg3;
  char _cg6;
  char _cg9;
  char _cg12;
  char _cg15;
  char _cg18;
  char _TERM;
  char _pg16;
  char _pg1;
  char _pg4;
  char _pg7;
  char _pg10;
  char _pg13;
} TickData;

void reset(TickData* d);
void logic(TickData* d);
void tick(TickData* d);

#endif /* !TASK1_H */

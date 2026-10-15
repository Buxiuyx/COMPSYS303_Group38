#ifndef TASK2_H
#define TASK2_H
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
  char EW_P;
  char NS_P;
  char EWraised;
  char NSraised;
  int t;
  int pNS;
  int pEW;
  char EWrequest;
  char NSrequest;
  char EWserve;
  char NSserve;
  char _g2;
  char _g4;
  char _g5;
  char _g7;
  char _g8;
  char _g10;
  char _g11;
  char _g13;
  char _g14;
  char _g16;
  char _g17;
  char _g19;
  char _g20;
  char _g22;
  char _g23;
  char _g25;
  char _g26;
  char _g30;
  char _g31;
  char _g33;
  char _g34;
  char _g38;
  char _g39;
  char _g41;
  char _g42;
  char _GO;
  char _cg4;
  char _cg7;
  char _cg10;
  char _cg13;
  char _cg16;
  char _cg19;
  char _cg22;
  char _cg25;
  char _cg30;
  char _cg33;
  char _cg38;
  char _cg41;
  char _TERM;
  char _pg23;
  char _pg25;
  char _pg5;
  char _pg34;
  char _pg2;
  char _pg8;
  char _pg11;
  char _pg30;
  char _pg19;
  char _pg33;
  char _pg14;
  char _pg20;
} TickData;

void reset(TickData* d);
void logic(TickData* d);
void tick(TickData* d);

#endif /* !TASK2_H */

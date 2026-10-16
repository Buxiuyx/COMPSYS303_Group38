#ifndef TASK4_H
#define TASK4_H
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
  char NS_Vehicle;
  char EW_Vehicle;
  char Camera_activated;
  char NS_Vehicle_Leave;
  char EW_Vehicle_Leave;
  char NS_Vehicle_Snapshot;
  char EW_Vehicle_Snapshot;
  int t;
  int pNS;
  int pEW;
  int t1;
  int t2;
  int t3;
  int t4;
  int t5;
  int t6;
  int tPed;
  int tSnap;
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
  char _g45;
  char _g47;
  char _g48;
  char _g50;
  char _g51;
  char _g52;
  char _g53;
  char _g55;
  char _g56;
  char _g59;
  char _g61;
  char _g62;
  char _g64;
  char _g65;
  char _g69;
  char _g70;
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
  char _cg47;
  char _cg52;
  char _cg50;
  char _cg55;
  char _cg61;
  char _cg66;
  char _cg64;
  char _cg69;
  char _TERM;
  char _pg22;
  char _pg20;
  char _pg5;
  char _pg7;
  char _pg23;
  char _pg2;
  char _pg10;
  char _pg25;
  char _pg19;
  char _pg17;
  char _pg34;
  char _pg14;
  char _pg50;
  char _pg52;
  char _pg39;
  char _pg65;
  char _pg61;
  char _pg62;
} TickData;

void reset(TickData* d);
void logic(TickData* d);
void tick(TickData* d);

#endif /* !TASK4_H */

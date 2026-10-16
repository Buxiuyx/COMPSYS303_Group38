/*
 * Automatically generated C code by
 * KIELER SCCharts - The Key to Efficient Modeling
 *
 * http://rtsys.informatik.uni-kiel.de/kieler
 */

#include "Task4.h"

void logic(TickData* d) {
  d->_g25 = d->_pg22;
  d->_cg25 = d->t >= d->t6;
  d->_g26 = d->_g25 && d->_cg25;
  if (d->_g26) {
    d->t = 0;
  }
  d->_g26 = d->_GO || d->_g26;
  if (d->_g26) {
    d->NS_R = 0;
    d->NS_G = 1;
    d->EW_R = 1;
  }
  d->_g30 = d->_pg20;
  d->_g31 = d->_g30 && d->NSraised;
  if (d->_g31) {
    d->NSrequest = 1;
  }
  d->_g7 = d->_pg5;
  d->_cg7 = d->t >= d->t1;
  d->_g8 = d->_g7 && d->_cg7;
  if (d->_g8) {
    d->NS_G = 0;
    d->t = 0;
    d->NS_Y = 1;
    d->NSserve = 1;
    d->Camera_activated = 1;
  }
  d->_g10 = d->_pg7;
  d->_cg10 = d->t >= d->t2;
  d->_g11 = d->_g10 && d->_cg10;
  if (d->_g11) {
    d->NS_Y = 0;
    d->t = 0;
    d->NSserve = 0;
    d->NS_R = 1;
    d->EW_R = 1;
  }
  d->_g33 = d->_pg23;
  d->_cg33 = d->NSserve;
  d->_g34 = d->_g33 && d->_cg33;
  if (d->_g34) {
    d->NSrequest = 0;
  }
  if (d->_g26) {
    d->NS_P = d->NSrequest;
    d->pNS = 0;
  }
  d->_g4 = d->_pg2;
  d->_cg4 = d->pNS >= d->tPed;
  d->_g2 = d->_g26 || (d->_g4 && !d->_cg4);
  d->_g4 = d->_g4 && d->_cg4;
  if (d->_g4) {
    d->NS_P = 0;
    d->NS_P = 0;
  }
  d->_g5 = d->_g4 || (d->_g7 && !d->_cg7);
  d->_g7 = d->_g8 || (d->_g10 && !d->_cg10);
  d->_g8 = d->_pg10;
  d->_cg13 = d->t >= d->t3;
  d->_g10 = d->_g11 || (d->_g8 && !d->_cg13);
  d->_g11 = d->_g8 && d->_cg13;
  if (d->_g11) {
    d->t = 0;
    d->EW_R = 0;
    d->EW_G = 1;
  }
  d->_g13 = d->_pg25;
  d->_g39 = d->_g13 && d->EWraised;
  if (d->_g39) {
    d->EWrequest = 1;
  }
  d->_g19 = d->_pg19;
  d->_cg19 = d->t >= d->t4;
  d->_g20 = d->_g19 && d->_cg19;
  if (d->_g20) {
    d->EW_G = 0;
    d->t = 0;
    d->EW_Y = 1;
    d->EWserve = 1;
    d->Camera_activated = 1;
  }
  d->_g22 = d->_pg17;
  d->_cg22 = d->t >= d->t5;
  d->_g23 = d->_g22 && d->_cg22;
  if (d->_g23) {
    d->EW_Y = 0;
    d->t = 0;
    d->EWserve = 0;
    d->NS_R = 1;
    d->EW_R = 1;
  }
  d->_g41 = d->_pg34;
  d->_cg41 = d->EWserve;
  d->_g42 = d->_g41 && d->_cg41;
  if (d->_g42) {
    d->EWrequest = 0;
  }
  if (d->_g11) {
    d->EW_P = d->EWrequest;
    d->pEW = 0;
  }
  d->_g16 = d->_pg14;
  d->_cg16 = d->pEW >= d->tPed;
  d->_g14 = d->_g11 || (d->_g16 && !d->_cg16);
  d->_g16 = d->_g16 && d->_cg16;
  if (d->_g16) {
    d->EW_P = 0;
    d->EW_P = 0;
  }
  d->_g19 = d->_g16 || (d->_g19 && !d->_cg19);
  d->_g17 = d->_g20 || (d->_g22 && !d->_cg22);
  d->_g22 = d->_g23 || (d->_g25 && !d->_cg25);
  d->_g20 = d->_GO || d->_g34 || (d->_g30 && !d->NSraised);
  d->_g23 = d->_g31 || (d->_g33 && !d->_cg33);
  d->_g25 = d->_GO || d->_g42 || (d->_g13 && !d->EWraised);
  d->_g34 = d->_g39 || (d->_g41 && !d->_cg41);
  d->_g30 = d->_pg50;
  d->_cg50 = d->NS_Vehicle;
  d->_g33 = d->_g30 && d->_cg50;
  if (d->_g33) {
    d->NS_Vehicle_Leave = 1;
  }
  d->_g31 = d->_pg52;
  d->_cg55 = d->NS_Vehicle;
  d->_g38 = d->_g31 && d->_cg55;
  if (d->_g38) {
    d->NS_Vehicle_Leave = 1;
  }
  d->_g42 = d->_GO || d->_g33 || d->_g38;
  if (d->_g42) {
    d->NS_Vehicle = 0;
  }
  d->_g41 = d->_pg39;
  d->_cg47 = d->NS_Vehicle;
  d->_g39 = d->_g42 || (d->_g41 && !d->_cg47);
  d->_g51 = d->_g41 && d->_cg47;
  if (d->_g51) {
    d->tSnap = 0;
    d->NS_Vehicle_Leave = 0;
    d->NS_Vehicle = 0;
  }
  d->_g56 = d->_pg65;
  d->_cg61 = d->EW_Vehicle;
  d->_g45 = d->_g56 && d->_cg61;
  if (d->_g45) {
    d->tSnap = 0;
    d->EW_Vehicle_Leave = 0;
    d->EW_Vehicle = 0;
  }
  d->_g47 = d->_g30 && !d->_cg50;
  d->_cg52 = d->tSnap >= 5 & (d->NS_Y | d->NS_R);
  d->_g50 = d->_g51 || (d->_g47 && !d->_cg52);
  d->_g48 = d->_g47 && d->_cg52;
  if (d->_g48) {
    d->NS_Vehicle_Snapshot = 1;
  }
  d->_g52 = d->_g48 || (d->_g31 && !d->_cg55);
  d->_g55 = d->_pg61;
  d->_cg64 = d->EW_Vehicle;
  d->_g53 = d->_g55 && d->_cg64;
  if (d->_g53) {
    d->EW_Vehicle_Leave = 1;
  }
  d->_g69 = d->_pg62;
  d->_cg69 = d->EW_Vehicle;
  d->_g70 = d->_g69 && d->_cg69;
  if (d->_g70) {
    d->EW_Vehicle_Leave = 1;
  }
  d->_g70 = d->_GO || d->_g53 || d->_g70;
  if (d->_g70) {
    d->EW_Vehicle = 0;
  }
  d->_g65 = d->_g70 || (d->_g56 && !d->_cg61);
  d->_g59 = d->_g55 && !d->_cg64;
  d->_cg66 = d->tSnap >= 5 & (d->EW_Y | d->EW_R);
  d->_g61 = d->_g45 || (d->_g59 && !d->_cg66);
  d->_g64 = d->_g59 && d->_cg66;
  if (d->_g64) {
    d->EW_Vehicle_Snapshot = 1;
  }
  d->_g62 = d->_g64 || (d->_g69 && !d->_cg69);
}

void reset(TickData* d) {
  d->_GO = 1;
  d->_TERM = 0;
  d->EW_R = 0;
  d->EW_Y = 0;
  d->EW_G = 0;
  d->NS_R = 0;
  d->NS_Y = 0;
  d->NS_G = 0;
  d->EW_P = 0;
  d->NS_P = 0;
  d->Camera_activated = 0;
  d->NS_Vehicle_Leave = 0;
  d->EW_Vehicle_Leave = 0;
  d->NS_Vehicle_Snapshot = 0;
  d->EW_Vehicle_Snapshot = 0;
  d->t = 0;
  d->pNS = 0;
  d->pEW = 0;
  d->t1 = 10;
  d->t2 = 10;
  d->t3 = 10;
  d->t4 = 10;
  d->t5 = 10;
  d->t6 = 10;
  d->tPed = 5;
  d->tSnap = 0;
  d->EWrequest = 0;
  d->NSrequest = 0;
  d->EWserve = 0;
  d->NSserve = 0;
  d->_pg22 = 0;
  d->_pg20 = 0;
  d->_pg5 = 0;
  d->_pg7 = 0;
  d->_pg23 = 0;
  d->_pg2 = 0;
  d->_pg10 = 0;
  d->_pg25 = 0;
  d->_pg19 = 0;
  d->_pg17 = 0;
  d->_pg34 = 0;
  d->_pg14 = 0;
  d->_pg50 = 0;
  d->_pg52 = 0;
  d->_pg39 = 0;
  d->_pg65 = 0;
  d->_pg61 = 0;
  d->_pg62 = 0;
}

void tick(TickData* d) {
  logic(d);

  d->_pg22 = d->_g22;
  d->_pg20 = d->_g20;
  d->_pg5 = d->_g5;
  d->_pg7 = d->_g7;
  d->_pg23 = d->_g23;
  d->_pg2 = d->_g2;
  d->_pg10 = d->_g10;
  d->_pg25 = d->_g25;
  d->_pg19 = d->_g19;
  d->_pg17 = d->_g17;
  d->_pg34 = d->_g34;
  d->_pg14 = d->_g14;
  d->_pg50 = d->_g50;
  d->_pg52 = d->_g52;
  d->_pg39 = d->_g39;
  d->_pg65 = d->_g65;
  d->_pg61 = d->_g61;
  d->_pg62 = d->_g62;
  d->_GO = 0;
}

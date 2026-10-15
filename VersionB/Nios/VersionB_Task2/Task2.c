/*
 * Automatically generated C code by
 * KIELER SCCharts - The Key to Efficient Modeling
 *
 * http://rtsys.informatik.uni-kiel.de/kieler
 */

#include "Task2.h"

void logic(TickData* d) {
  d->_g25 = d->_pg23;
  d->_cg25 = d->t >= 10;
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
  d->_g30 = d->_pg25;
  d->_g31 = d->_g30 && d->NSraised;
  if (d->_g31) {
    d->NSrequest = 1;
  }
  d->_g7 = d->_pg5;
  d->_cg7 = d->t >= 10;
  d->_g8 = d->_g7 && d->_cg7;
  if (d->_g8) {
    d->NS_G = 0;
    d->t = 0;
    d->NS_Y = 1;
    d->NSserve = 1;
  }
  d->_g33 = d->_pg34;
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
  d->_cg4 = d->pNS >= 5;
  d->_g2 = d->_g26 || (d->_g4 && !d->_cg4);
  d->_g4 = d->_g4 && d->_cg4;
  if (d->_g4) {
    d->NS_P = 0;
    d->NS_P = 0;
  }
  d->_g5 = d->_g4 || (d->_g7 && !d->_cg7);
  d->_g7 = d->_pg8;
  d->_cg10 = d->t >= 10;
  d->_g8 = d->_g8 || (d->_g7 && !d->_cg10);
  d->_g10 = d->_g7 && d->_cg10;
  if (d->_g10) {
    d->NS_Y = 0;
    d->t = 0;
    d->NS_R = 1;
    d->EW_R = 1;
  }
  d->_g13 = d->_pg11;
  d->_cg13 = d->t >= 10;
  d->_g11 = d->_g10 || (d->_g13 && !d->_cg13);
  d->_g13 = d->_g13 && d->_cg13;
  if (d->_g13) {
    d->t = 0;
    d->EW_R = 0;
    d->EW_G = 1;
  }
  d->_g38 = d->_pg30;
  d->_g39 = d->_g38 && d->EWraised;
  if (d->_g39) {
    d->EWrequest = 1;
  }
  d->_g19 = d->_pg19;
  d->_cg19 = d->t >= 10;
  d->_g20 = d->_g19 && d->_cg19;
  if (d->_g20) {
    d->EW_G = 0;
    d->t = 0;
    d->EW_Y = 1;
    d->EWserve = 1;
  }
  d->_g41 = d->_pg33;
  d->_cg41 = d->EWserve;
  d->_g42 = d->_g41 && d->_cg41;
  if (d->_g42) {
    d->EWrequest = 0;
  }
  if (d->_g13) {
    d->EW_P = d->EWrequest;
    d->pEW = 0;
  }
  d->_g16 = d->_pg14;
  d->_cg16 = d->pEW >= 5;
  d->_g14 = d->_g13 || (d->_g16 && !d->_cg16);
  d->_g16 = d->_g16 && d->_cg16;
  if (d->_g16) {
    d->EW_P = 0;
    d->EW_P = 0;
  }
  d->_g19 = d->_g16 || (d->_g19 && !d->_cg19);
  d->_g17 = d->_pg20;
  d->_cg22 = d->t >= 10;
  d->_g20 = d->_g20 || (d->_g17 && !d->_cg22);
  d->_g22 = d->_g17 && d->_cg22;
  if (d->_g22) {
    d->EW_Y = 0;
    d->t = 0;
    d->NS_R = 1;
    d->EW_R = 1;
  }
  d->_g23 = d->_g22 || (d->_g25 && !d->_cg25);
  d->_g25 = d->_GO || d->_g34 || (d->_g30 && !d->NSraised);
  d->_g34 = d->_g31 || (d->_g33 && !d->_cg33);
  d->_g30 = d->_GO || d->_g42 || (d->_g38 && !d->EWraised);
  d->_g33 = d->_g39 || (d->_g41 && !d->_cg41);
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
  d->t = 0;
  d->pNS = 0;
  d->pEW = 0;
  d->EWrequest = 0;
  d->NSrequest = 0;
  d->EWserve = 0;
  d->NSserve = 0;
  d->_pg23 = 0;
  d->_pg25 = 0;
  d->_pg5 = 0;
  d->_pg34 = 0;
  d->_pg2 = 0;
  d->_pg8 = 0;
  d->_pg11 = 0;
  d->_pg30 = 0;
  d->_pg19 = 0;
  d->_pg33 = 0;
  d->_pg14 = 0;
  d->_pg20 = 0;
}

void tick(TickData* d) {
  logic(d);

  d->_pg23 = d->_g23;
  d->_pg25 = d->_g25;
  d->_pg5 = d->_g5;
  d->_pg34 = d->_g34;
  d->_pg2 = d->_g2;
  d->_pg8 = d->_g8;
  d->_pg11 = d->_g11;
  d->_pg30 = d->_g30;
  d->_pg19 = d->_g19;
  d->_pg33 = d->_g33;
  d->_pg14 = d->_g14;
  d->_pg20 = d->_g20;
  d->_GO = 0;
}

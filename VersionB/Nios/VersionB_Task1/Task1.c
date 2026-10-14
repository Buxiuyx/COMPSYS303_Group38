/*
 * Automatically generated C code by
 * KIELER SCCharts - The Key to Efficient Modeling
 *
 * http://rtsys.informatik.uni-kiel.de/kieler
 */

#include "Task1.h"

void logic(TickData* d) {
  d->_g18 = d->_pg16;
  d->_cg18 = d->t >= 10;
  d->_g19 = d->_g18 && d->_cg18;
  if (d->_g19) {
    d->t = 0;
  }
  d->_g19 = d->_GO || d->_g19;
  if (d->_g19) {
    d->NS_R = 0;
    d->NS_G = 1;
    d->EW_R = 1;
  }
  d->_g3 = d->_pg1;
  d->_cg3 = d->t >= 10;
  d->_g1 = d->_g19 || (d->_g3 && !d->_cg3);
  d->_g3 = d->_g3 && d->_cg3;
  if (d->_g3) {
    d->NS_G = 0;
    d->t = 0;
    d->NS_Y = 1;
  }
  d->_g6 = d->_pg4;
  d->_cg6 = d->t >= 10;
  d->_g4 = d->_g3 || (d->_g6 && !d->_cg6);
  d->_g6 = d->_g6 && d->_cg6;
  if (d->_g6) {
    d->NS_Y = 0;
    d->t = 0;
    d->NS_R = 1;
    d->EW_R = 1;
  }
  d->_g9 = d->_pg7;
  d->_cg9 = d->t >= 10;
  d->_g7 = d->_g6 || (d->_g9 && !d->_cg9);
  d->_g9 = d->_g9 && d->_cg9;
  if (d->_g9) {
    d->t = 0;
    d->EW_R = 0;
    d->EW_G = 1;
    d->NS_R = 1;
  }
  d->_g12 = d->_pg10;
  d->_cg12 = d->t >= 10;
  d->_g10 = d->_g9 || (d->_g12 && !d->_cg12);
  d->_g12 = d->_g12 && d->_cg12;
  if (d->_g12) {
    d->EW_G = 0;
    d->t = 0;
    d->EW_Y = 1;
  }
  d->_g15 = d->_pg13;
  d->_cg15 = d->t >= 10;
  d->_g13 = d->_g12 || (d->_g15 && !d->_cg15);
  d->_g15 = d->_g15 && d->_cg15;
  if (d->_g15) {
    d->EW_Y = 0;
    d->t = 0;
    d->NS_R = 1;
    d->EW_R = 1;
  }
  d->_g16 = d->_g15 || (d->_g18 && !d->_cg18);
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
  d->t = 0;
  d->_pg16 = 0;
  d->_pg1 = 0;
  d->_pg4 = 0;
  d->_pg7 = 0;
  d->_pg10 = 0;
  d->_pg13 = 0;
}

void tick(TickData* d) {
  logic(d);

  d->_pg16 = d->_g16;
  d->_pg1 = d->_g1;
  d->_pg4 = d->_g4;
  d->_pg7 = d->_g7;
  d->_pg10 = d->_g10;
  d->_pg13 = d->_g13;
  d->_GO = 0;
}

/*
 * Automatically generated C code by
 * KIELER SCCharts - The Key to Efficient Modeling
 *
 * http://rtsys.informatik.uni-kiel.de/kieler
 */

#include "Test.h"

void logic(TickData* d) {
  d->_g25 = d->_pg14;
  if (d->_g25) {
    d->t += d->deltaT;
  }
  d->_g7 = d->_pg4;
  d->_g10 = d->_pg8;
  d->_g7 = d->_GO || d->_g7 || d->_g10;
  d->_g10 = d->_pg21;
  d->_g21 = d->_GO || d->_g10;
  if (d->_g21) {
    d->sleepT = 1000.0;
  }
  d->_cg3 = d->t < 10.0;
  d->_g4 = d->_g7 && d->_cg3;
  if (d->_g4) {
    d->sleepT = (d->sleepT < (10.0 - d->t)) ? d->sleepT : (10.0 - d->t);
  }
  d->_g13 = d->_pg13;
  d->_cg13 = d->t >= 10;
  d->_g14 = d->_g13 && d->_cg13;
  if (d->_g14) {
    d->_Atrig = 1;
  }
  d->_cg4 = d->_Atrig;
  d->_g3 = d->_g7 && !d->_cg3;
  d->_cg8 = d->_Atrig;
  d->_g5 = (d->_g4 && d->_cg4) || (d->_g3 && d->_cg8);
  d->_g4 = d->_g4 && !d->_cg4;
  d->_g8 = d->_g3 && !d->_cg8;
  d->_g13 = d->_GO || (d->_g13 && !d->_cg13);
  d->_g5_e1 = !(d->_g8 || d->_g4);
  d->_g14_e2 = !d->_g13;
  d->_g5 = (d->_g5_e1 || d->_g5) && (d->_g14_e2 || d->_g14) && (d->_g5 || d->_g14);
  if (d->_g5) {
    d->t = 0;
    d->_taken_transitions[0] += 1;
    d->O = 0;
  }
  d->_g14 = d->_GO || d->_g25;
}

void reset(TickData* d) {
  d->_GO = 1;
  d->_TERM = 0;
  d->O = 0;
  d->t = 0;
  d->deltaT = 0.0;
  d->sleepT = 0.0;
  d->_taken_transitions[0] = 0;
  d->O = 1;
  d->_Atrig = 0;
  d->_pg14 = 0;
  d->_pg4 = 0;
  d->_pg8 = 0;
  d->_pg21 = 0;
  d->_pg13 = 0;
}

void tick(TickData* d) {
  logic(d);

  d->_pg14 = d->_g14;
  d->_pg4 = d->_g4;
  d->_pg8 = d->_g8;
  d->_pg21 = d->_g21;
  d->_pg13 = d->_g13;
  d->_GO = 0;
}

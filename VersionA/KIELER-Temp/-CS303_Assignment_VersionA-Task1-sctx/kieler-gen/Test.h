#ifndef TEST_H
#define TEST_H
/*
 * Automatically generated C code by
 * KIELER SCCharts - The Key to Efficient Modeling
 *
 * http://rtsys.informatik.uni-kiel.de/kieler
 */


typedef struct {
  char O;
  double t;
  int _taken_transitions[1];
  double deltaT;
  double sleepT;
  char _Atrig;
  char _g3;
  char _g4;
  char _g5;
  char _g7;
  char _g8;
  char _g10;
  char _g13;
  char _g14;
  char _g21;
  char _g25;
  char _GO;
  char _cg3;
  char _cg4;
  char _cg8;
  char _cg13;
  char _g5_e1;
  char _g14_e2;
  char _TERM;
  char _pg14;
  char _pg4;
  char _pg8;
  char _pg21;
  char _pg13;
} TickData;

void reset(TickData* d);
void logic(TickData* d);
void tick(TickData* d);

#endif /* !TEST_H */

/*
 * Automatically generated C code by
 * KIELER SCCharts - The Key to Efficient Modeling
 *
 * http://rtsys.informatik.uni-kiel.de/kieler
 */

#include "Task1.h"

void logic(TickData* d) {
  d->_g106 = d->_pg88;
  if (d->_g106) {
    d->t += d->deltaT;
  }
  d->_g92 = d->_pg73_e1;
  d->_g86 = d->_pg73;
  d->_g89_e1 = !(d->_g92 || d->_g86);
  d->_g96 = d->_pg81;
  d->_cg96 = d->t >= 10;
  d->_g97 = d->_g96 && d->_cg96;
  if (d->_g97) {
    d->_Atrig5 = 1;
  }
  d->sleepT = 1000.0;
  d->_g92 = d->_g86 || d->_g92;
  d->_cg87 = d->t < 10.0;
  d->_g86 = d->_g92 && d->_cg87;
  if (d->_g86) {
    d->sleepT = (d->sleepT < (10.0 - d->t)) ? d->sleepT : (10.0 - d->t);
  }
  d->_cg88 = d->_Atrig5;
  d->_g87 = d->_g92 && !d->_cg87;
  d->_cg90 = d->_Atrig5;
  d->_g89 = (d->_g86 && d->_cg88) || (d->_g87 && d->_cg90);
  d->_g97_e2 = !d->_g96;
  d->_g89_e1 = (d->_g89_e1 || d->_g89) && (d->_g97_e2 || d->_g97) && (d->_g89 || d->_g97);
  if (d->_g89_e1) {
    d->t = 0;
    d->_taken_transitions[5] += 1;
  }
  d->_g97 = d->_GO || d->_g89_e1;
  if (d->_g97) {
    d->NS_R = 0;
    d->NS_G = 1;
    d->EW_R = 1;
    d->_Atrig = 0;
  }
  d->_cg3 = d->t < 10.0;
  d->_g89 = d->_g97 && d->_cg3;
  if (d->_g89) {
    d->sleepT = (d->sleepT < (10.0 - d->t)) ? d->sleepT : (10.0 - d->t);
  }
  d->_cg4 = d->_Atrig;
  d->_g97_e2 = d->_pg10;
  d->_cg16 = d->t >= 10;
  d->_g98 = d->_g97_e2 && d->_cg16;
  if (d->_g98) {
    d->_Atrig = 1;
  }
  d->_g6 = d->_pg4;
  d->_g12 = d->_pg13;
  d->_g7 = d->_g6 || d->_g12;
  d->_cg7 = d->t < 10.0;
  d->_g8 = d->_g7 && d->_cg7;
  if (d->_g8) {
    d->sleepT = (d->sleepT < (10.0 - d->t)) ? d->sleepT : (10.0 - d->t);
  }
  d->_cg8 = d->_Atrig;
  d->_g4 = (d->_g89 && !d->_cg4) || (d->_g8 && !d->_cg8);
  d->_g7 = d->_g7 && !d->_cg7;
  d->_cg10 = d->_Atrig;
  d->_g8 = (d->_g8 && d->_cg8) || (d->_g7 && d->_cg10);
  d->_g13 = d->_g97 && !d->_cg3;
  d->_cg13 = d->_Atrig;
  d->_g13 = (d->_g7 && !d->_cg10) || (d->_g13 && !d->_cg13);
  d->_g10 = d->_g97 || (d->_g97_e2 && !d->_cg16);
  d->_g2 = !(d->_g12 || d->_g6);
  d->_g12 = !d->_g97_e2;
  d->_g6 = (d->_g2 || d->_g8) && (d->_g12 || d->_g98) && (d->_g8 || d->_g98);
  if (d->_g6) {
    d->NS_G = 0;
    d->t = 0;
    d->_taken_transitions[0] += 1;
    d->NS_Y = 1;
    d->_Atrig1 = 0;
  }
  d->_cg19 = d->t < 10.0;
  d->_g16 = d->_g6 && d->_cg19;
  if (d->_g16) {
    d->sleepT = (d->sleepT < (10.0 - d->t)) ? d->sleepT : (10.0 - d->t);
  }
  d->_cg20 = d->_Atrig1;
  d->_g9 = d->_pg29;
  d->_cg32 = d->t >= 10;
  d->_g9_e1 = d->_g9 && d->_cg32;
  if (d->_g9_e1) {
    d->_Atrig1 = 1;
  }
  d->_g17 = d->_pg20;
  d->_g17_e2 = d->_pg26;
  d->_g23 = d->_g17 || d->_g17_e2;
  d->_cg23 = d->t < 10.0;
  d->_g24 = d->_g23 && d->_cg23;
  if (d->_g24) {
    d->sleepT = (d->sleepT < (10.0 - d->t)) ? d->sleepT : (10.0 - d->t);
  }
  d->_cg24 = d->_Atrig1;
  d->_g20 = (d->_g16 && !d->_cg20) || (d->_g24 && !d->_cg24);
  d->_g23 = d->_g23 && !d->_cg23;
  d->_cg26 = d->_Atrig1;
  d->_g24 = (d->_g24 && d->_cg24) || (d->_g23 && d->_cg26);
  d->_g29 = d->_g6 && !d->_cg19;
  d->_cg29 = d->_Atrig1;
  d->_g26 = (d->_g23 && !d->_cg26) || (d->_g29 && !d->_cg29);
  d->_g29 = d->_g6 || (d->_g9 && !d->_cg32);
  d->_g18 = !(d->_g17_e2 || d->_g17);
  d->_g22 = !d->_g9;
  d->_g28 = (d->_g18 || d->_g24) && (d->_g22 || d->_g9_e1) && (d->_g24 || d->_g9_e1);
  if (d->_g28) {
    d->NS_Y = 0;
    d->t = 0;
    d->_taken_transitions[1] += 1;
    d->NS_R = 1;
    d->EW_R = 1;
    d->_Atrig2 = 0;
  }
  d->_cg35 = d->t < 10.0;
  d->_g32 = d->_g28 && d->_cg35;
  if (d->_g32) {
    d->sleepT = (d->sleepT < (10.0 - d->t)) ? d->sleepT : (10.0 - d->t);
  }
  d->_cg36 = d->_Atrig2;
  d->_g33 = d->_pg42;
  d->_cg48 = d->t >= 10;
  d->_g25_e1 = d->_g33 && d->_cg48;
  if (d->_g25_e1) {
    d->_Atrig2 = 1;
  }
  d->_g33_e2 = d->_pg36;
  d->_g25 = d->_pg45;
  d->_g39 = d->_g33_e2 || d->_g25;
  d->_cg39 = d->t < 10.0;
  d->_g40 = d->_g39 && d->_cg39;
  if (d->_g40) {
    d->sleepT = (d->sleepT < (10.0 - d->t)) ? d->sleepT : (10.0 - d->t);
  }
  d->_cg40 = d->_Atrig2;
  d->_g36 = (d->_g32 && !d->_cg36) || (d->_g40 && !d->_cg40);
  d->_g39 = d->_g39 && !d->_cg39;
  d->_cg42 = d->_Atrig2;
  d->_g40 = (d->_g40 && d->_cg40) || (d->_g39 && d->_cg42);
  d->_g45 = d->_g28 && !d->_cg35;
  d->_cg45 = d->_Atrig2;
  d->_g45 = (d->_g39 && !d->_cg42) || (d->_g45 && !d->_cg45);
  d->_g42 = d->_g28 || (d->_g33 && !d->_cg48);
  d->_g34 = !(d->_g25 || d->_g33_e2);
  d->_g44 = !d->_g33;
  d->_g38 = (d->_g34 || d->_g40) && (d->_g44 || d->_g25_e1) && (d->_g40 || d->_g25_e1);
  if (d->_g38) {
    d->t = 0;
    d->_taken_transitions[2] += 1;
    d->EW_R = 0;
    d->EW_G = 1;
    d->NS_R = 1;
    d->_Atrig3 = 0;
  }
  d->_cg51 = d->t < 10.0;
  d->_g48 = d->_g38 && d->_cg51;
  if (d->_g48) {
    d->sleepT = (d->sleepT < (10.0 - d->t)) ? d->sleepT : (10.0 - d->t);
  }
  d->_cg52 = d->_Atrig3;
  d->_g49 = d->_pg58;
  d->_cg64 = d->t >= 10;
  d->_g41 = d->_g49 && d->_cg64;
  if (d->_g41) {
    d->_Atrig3 = 1;
  }
  d->_g41_e1 = d->_pg52;
  d->_g49_e2 = d->_pg61;
  d->_g55 = d->_g41_e1 || d->_g49_e2;
  d->_cg55 = d->t < 10.0;
  d->_g56 = d->_g55 && d->_cg55;
  if (d->_g56) {
    d->sleepT = (d->sleepT < (10.0 - d->t)) ? d->sleepT : (10.0 - d->t);
  }
  d->_cg56 = d->_Atrig3;
  d->_g52 = (d->_g48 && !d->_cg52) || (d->_g56 && !d->_cg56);
  d->_g55 = d->_g55 && !d->_cg55;
  d->_cg58 = d->_Atrig3;
  d->_g56 = (d->_g56 && d->_cg56) || (d->_g55 && d->_cg58);
  d->_g61 = d->_g38 && !d->_cg51;
  d->_cg61 = d->_Atrig3;
  d->_g61 = (d->_g55 && !d->_cg58) || (d->_g61 && !d->_cg61);
  d->_g58 = d->_g38 || (d->_g49 && !d->_cg64);
  d->_g50 = !(d->_g49_e2 || d->_g41_e1);
  d->_g60 = !d->_g49;
  d->_g54 = (d->_g50 || d->_g56) && (d->_g60 || d->_g41) && (d->_g56 || d->_g41);
  if (d->_g54) {
    d->EW_G = 0;
    d->t = 0;
    d->_taken_transitions[3] += 1;
    d->EW_Y = 1;
    d->_Atrig4 = 0;
  }
  d->_cg67 = d->t < 10.0;
  d->_g64 = d->_g54 && d->_cg67;
  if (d->_g64) {
    d->sleepT = (d->sleepT < (10.0 - d->t)) ? d->sleepT : (10.0 - d->t);
  }
  d->_cg68 = d->_Atrig4;
  d->_g65_e2 = d->_pg74;
  d->_cg80 = d->t >= 10;
  d->_g57_e1 = d->_g65_e2 && d->_cg80;
  if (d->_g57_e1) {
    d->_Atrig4 = 1;
  }
  d->_g65 = d->_pg68;
  d->_g57 = d->_pg77;
  d->_g71 = d->_g65 || d->_g57;
  d->_cg71 = d->t < 10.0;
  d->_g72 = d->_g71 && d->_cg71;
  if (d->_g72) {
    d->sleepT = (d->sleepT < (10.0 - d->t)) ? d->sleepT : (10.0 - d->t);
  }
  d->_cg72 = d->_Atrig4;
  d->_g68 = (d->_g64 && !d->_cg68) || (d->_g72 && !d->_cg72);
  d->_g71 = d->_g71 && !d->_cg71;
  d->_cg74 = d->_Atrig4;
  d->_g72 = (d->_g72 && d->_cg72) || (d->_g71 && d->_cg74);
  d->_g77 = d->_g54 && !d->_cg67;
  d->_cg77 = d->_Atrig4;
  d->_g77 = (d->_g71 && !d->_cg74) || (d->_g77 && !d->_cg77);
  d->_g74 = d->_g54 || (d->_g65_e2 && !d->_cg80);
  d->_g66 = !(d->_g57 || d->_g65);
  d->_g70 = !d->_g65_e2;
  d->_g76 = (d->_g66 || d->_g72) && (d->_g70 || d->_g57_e1) && (d->_g72 || d->_g57_e1);
  if (d->_g76) {
    d->EW_Y = 0;
    d->t = 0;
    d->_taken_transitions[4] += 1;
    d->NS_R = 1;
    d->EW_R = 1;
    d->_Atrig5 = 0;
  }
  d->_cg83 = d->t < 10.0;
  d->_g80 = d->_g76 && d->_cg83;
  if (d->_g80) {
    d->sleepT = (d->sleepT < (10.0 - d->t)) ? d->sleepT : (10.0 - d->t);
  }
  d->_cg84 = d->_Atrig5;
  d->_g73 = (d->_g80 && !d->_cg84) || (d->_g86 && !d->_cg88);
  d->_g81_e2 = d->_g76 && !d->_cg83;
  d->_cg93 = d->_Atrig5;
  d->_g73_e1 = (d->_g87 && !d->_cg90) || (d->_g81_e2 && !d->_cg93);
  d->_g81 = d->_g76 || (d->_g96 && !d->_cg96);
  d->_g88 = d->_GO || d->_g106;
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
  d->deltaT = 0.0;
  d->sleepT = 0.0;
  d->_taken_transitions[0] = 0;
  d->_taken_transitions[1] = 0;
  d->_taken_transitions[2] = 0;
  d->_taken_transitions[3] = 0;
  d->_taken_transitions[4] = 0;
  d->_taken_transitions[5] = 0;
  d->_pg88 = 0;
  d->_pg73_e1 = 0;
  d->_pg73 = 0;
  d->_pg81 = 0;
  d->_pg10 = 0;
  d->_pg4 = 0;
  d->_pg13 = 0;
  d->_pg29 = 0;
  d->_pg20 = 0;
  d->_pg26 = 0;
  d->_pg42 = 0;
  d->_pg36 = 0;
  d->_pg45 = 0;
  d->_pg58 = 0;
  d->_pg52 = 0;
  d->_pg61 = 0;
  d->_pg74 = 0;
  d->_pg68 = 0;
  d->_pg77 = 0;
}

void tick(TickData* d) {
  logic(d);

  d->_pg88 = d->_g88;
  d->_pg73_e1 = d->_g73_e1;
  d->_pg73 = d->_g73;
  d->_pg81 = d->_g81;
  d->_pg10 = d->_g10;
  d->_pg4 = d->_g4;
  d->_pg13 = d->_g13;
  d->_pg29 = d->_g29;
  d->_pg20 = d->_g20;
  d->_pg26 = d->_g26;
  d->_pg42 = d->_g42;
  d->_pg36 = d->_g36;
  d->_pg45 = d->_g45;
  d->_pg58 = d->_g58;
  d->_pg52 = d->_g52;
  d->_pg61 = d->_g61;
  d->_pg74 = d->_g74;
  d->_pg68 = d->_g68;
  d->_pg77 = d->_g77;
  d->_GO = 0;
}

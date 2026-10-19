/*
 * Automatically generated C code by
 * KIELER SCCharts - The Key to Efficient Modeling
 *
 * http://rtsys.informatik.uni-kiel.de/kieler
 */

#include "Task4.h"

void logic(TickData* d) {
  d->_g210 = d->_pg179;
  if (d->_g210) {
    d->t += d->deltaT;
  }
  d->_g124 = d->_pg109;
  d->_g118 = d->_pg100;
  d->_g121_e1 = !(d->_g124 || d->_g118);
  d->_g128 = d->_pg106;
  d->_cg128 = d->t >= d->t6;
  d->_g129 = d->_g128 && d->_cg128;
  if (d->_g129) {
    d->_Atrig7 = 1;
  }
  d->sleepT = 1000.0;
  d->_g124 = d->_g118 || d->_g124;
  d->_cg119 = d->t < d->t6;
  d->_g118 = d->_g124 && d->_cg119;
  if (d->_g118) {
    d->sleepT = (d->sleepT < (d->t6 - d->t)) ? d->sleepT : (d->t6 - d->t);
  }
  d->_cg120 = d->_Atrig7;
  d->_g119 = d->_g124 && !d->_cg119;
  d->_cg122 = d->_Atrig7;
  d->_g121 = (d->_g118 && d->_cg120) || (d->_g119 && d->_cg122);
  d->_g129_e2 = !d->_g128;
  d->_g121 = (d->_g121_e1 || d->_g121) && (d->_g129_e2 || d->_g129) && (d->_g121 || d->_g129);
  if (d->_g121) {
    d->t = 0;
    d->_taken_transitions[7] += 1;
  }
  d->_g129 = d->_GO || d->_g121;
  if (d->_g129) {
    d->NS_R = 0;
    d->NS_G = 1;
    d->EW_R = 1;
  }
  d->_g121_e1 = d->_pg112;
  d->_g129_e2 = d->_g121_e1 && d->NSraised;
  if (d->_g129_e2) {
    d->NSrequest = 1;
    d->_taken_transitions[8] += 1;
  }
  d->_g130 = d->_pg29;
  d->_g38 = d->_pg20;
  d->_g41_e1 = !(d->_g130 || d->_g38);
  d->_g48 = d->_pg18;
  d->_cg48 = d->t >= d->t2;
  d->_g49 = d->_g48 && d->_cg48;
  if (d->_g49) {
    d->_Atrig2 = 1;
  }
  d->_g44 = d->_g38 || d->_g130;
  d->_cg39 = d->t < d->t2;
  d->_g38 = d->_g44 && d->_cg39;
  if (d->_g38) {
    d->sleepT = (d->sleepT < (d->t2 - d->t)) ? d->sleepT : (d->t2 - d->t);
  }
  d->_cg40 = d->_Atrig2;
  d->_g39 = d->_g44 && !d->_cg39;
  d->_cg42 = d->_Atrig2;
  d->_g41 = (d->_g38 && d->_cg40) || (d->_g39 && d->_cg42);
  d->_g49_e2 = !d->_g48;
  d->_g49 = (d->_g41_e1 || d->_g41) && (d->_g49_e2 || d->_g49) && (d->_g41 || d->_g49);
  if (d->_g49) {
    d->NS_Y = 0;
    d->NSserve = 0;
  }
  d->_g41 = d->_pg17;
  d->_g41_e1 = d->_pg9;
  d->_g49_e2 = !(d->_g41 || d->_g41_e1);
  d->_g32 = d->_pg17_e2;
  d->_cg32 = d->t >= d->t1;
  d->_g33 = d->_g32 && d->_cg32;
  if (d->_g33) {
    d->_Atrig1 = 1;
  }
  d->_g22 = d->_g41_e1 || d->_g41;
  d->_cg23 = d->t < d->t1;
  d->_g28 = d->_g22 && d->_cg23;
  if (d->_g28) {
    d->sleepT = (d->sleepT < (d->t1 - d->t)) ? d->sleepT : (d->t1 - d->t);
  }
  d->_cg24 = d->_Atrig1;
  d->_g23 = d->_g22 && !d->_cg23;
  d->_cg26 = d->_Atrig1;
  d->_g25 = (d->_g28 && d->_cg24) || (d->_g23 && d->_cg26);
  d->_g33_e2 = !d->_g32;
  d->_g33 = (d->_g49_e2 || d->_g25) && (d->_g33_e2 || d->_g33) && (d->_g25 || d->_g33);
  if (d->_g33) {
    d->NS_G = 0;
    d->t = 0;
    d->_taken_transitions[1] += 1;
    d->NS_Y = 1;
    d->NSserve = 1;
    d->Camera_activated = 1;
    d->_Atrig2 = 0;
  }
  d->_g25_e1 = d->_pg98;
  d->_cg137 = d->NSserve;
  d->_g33_e2 = d->_g25_e1 && d->_cg137;
  if (d->_g33_e2) {
    d->NSrequest = 0;
    d->_taken_transitions[9] += 1;
  }
  if (d->_g129) {
    d->NS_P = d->NSrequest;
  }
  d->_g25 = d->_pg177;
  if (d->_g25) {
    d->pNS += d->deltaT;
  }
  if (d->_g129) {
    d->pNS = 0;
    d->_Atrig = 0;
  }
  d->_cg3 = d->pNS < d->tPed;
  d->_g4 = d->_g129 && d->_cg3;
  if (d->_g4) {
    d->sleepT = (d->sleepT < (d->tPed - d->pNS)) ? d->sleepT : (d->tPed - d->pNS);
  }
  d->_cg4 = d->_Atrig;
  d->_g16 = d->_pg10;
  d->_cg16 = d->pNS >= d->tPed;
  d->_g17 = d->_g16 && d->_cg16;
  if (d->_g17) {
    d->_Atrig = 1;
  }
  d->_g6 = d->_pg4;
  d->_g12 = d->_pg13;
  d->_g7 = d->_g6 || d->_g12;
  d->_cg7 = d->pNS < d->tPed;
  d->_g8 = d->_g7 && d->_cg7;
  if (d->_g8) {
    d->sleepT = (d->sleepT < (d->tPed - d->pNS)) ? d->sleepT : (d->tPed - d->pNS);
  }
  d->_cg8 = d->_Atrig;
  d->_g4 = (d->_g4 && !d->_cg4) || (d->_g8 && !d->_cg8);
  d->_g7 = d->_g7 && !d->_cg7;
  d->_cg10 = d->_Atrig;
  d->_g8 = (d->_g8 && d->_cg8) || (d->_g7 && d->_cg10);
  d->_g13 = d->_g129 && !d->_cg3;
  d->_cg13 = d->_Atrig;
  d->_g13 = (d->_g7 && !d->_cg10) || (d->_g13 && !d->_cg13);
  d->_g10 = d->_g129 || (d->_g16 && !d->_cg16);
  d->_g2 = !(d->_g12 || d->_g6);
  d->_g12 = !d->_g16;
  d->_g6 = (d->_g2 || d->_g8) && (d->_g12 || d->_g17) && (d->_g8 || d->_g17);
  if (d->_g6) {
    d->NS_P = 0;
    d->_taken_transitions[0] += 1;
    d->NS_P = 0;
    d->_Atrig1 = 0;
  }
  d->_cg19 = d->t < d->t1;
  d->_g16 = d->_g6 && d->_cg19;
  if (d->_g16) {
    d->sleepT = (d->sleepT < (d->t1 - d->t)) ? d->sleepT : (d->t1 - d->t);
  }
  d->_cg20 = d->_Atrig1;
  d->_g9 = (d->_g16 && !d->_cg20) || (d->_g28 && !d->_cg24);
  d->_g9_e1 = d->_g6 && !d->_cg19;
  d->_cg29 = d->_Atrig1;
  d->_g17 = (d->_g23 && !d->_cg26) || (d->_g9_e1 && !d->_cg29);
  d->_g17_e2 = d->_g6 || (d->_g32 && !d->_cg32);
  d->_cg35 = d->t < d->t2;
  d->_g24 = d->_g33 && d->_cg35;
  if (d->_g24) {
    d->sleepT = (d->sleepT < (d->t2 - d->t)) ? d->sleepT : (d->t2 - d->t);
  }
  d->_cg36 = d->_Atrig2;
  d->_g20 = (d->_g24 && !d->_cg36) || (d->_g38 && !d->_cg40);
  d->_g26 = d->_g33 && !d->_cg35;
  d->_cg45 = d->_Atrig2;
  d->_g29 = (d->_g39 && !d->_cg42) || (d->_g26 && !d->_cg45);
  d->_g18 = d->_g33 || (d->_g48 && !d->_cg48);
  if (d->_g49) {
    d->t = 0;
    d->_taken_transitions[2] += 1;
    d->NS_R = 1;
    d->EW_R = 1;
    d->_Atrig3 = 0;
  }
  d->_cg51 = d->t < d->t3;
  d->_g32 = d->_g49 && d->_cg51;
  if (d->_g32) {
    d->sleepT = (d->sleepT < (d->t3 - d->t)) ? d->sleepT : (d->t3 - d->t);
  }
  d->_cg52 = d->_Atrig3;
  d->_g40 = d->_pg58;
  d->_cg64 = d->t >= d->t3;
  d->_g36 = d->_g40 && d->_cg64;
  if (d->_g36) {
    d->_Atrig3 = 1;
  }
  d->_g45 = d->_pg52;
  d->_g42 = d->_pg61;
  d->_g48 = d->_g45 || d->_g42;
  d->_cg55 = d->t < d->t3;
  d->_g34 = d->_g48 && d->_cg55;
  if (d->_g34) {
    d->sleepT = (d->sleepT < (d->t3 - d->t)) ? d->sleepT : (d->t3 - d->t);
  }
  d->_cg56 = d->_Atrig3;
  d->_g52 = (d->_g32 && !d->_cg52) || (d->_g34 && !d->_cg56);
  d->_g55 = d->_g48 && !d->_cg55;
  d->_cg58 = d->_Atrig3;
  d->_g56 = (d->_g34 && d->_cg56) || (d->_g55 && d->_cg58);
  d->_g61 = d->_g49 && !d->_cg51;
  d->_cg61 = d->_Atrig3;
  d->_g61 = (d->_g55 && !d->_cg58) || (d->_g61 && !d->_cg61);
  d->_g58 = d->_g49 || (d->_g40 && !d->_cg64);
  d->_g50 = !(d->_g42 || d->_g45);
  d->_g60 = !d->_g40;
  d->_g54 = (d->_g50 || d->_g56) && (d->_g60 || d->_g36) && (d->_g56 || d->_g36);
  if (d->_g54) {
    d->t = 0;
    d->_taken_transitions[3] += 1;
    d->EW_R = 0;
    d->EW_G = 1;
  }
  d->_g64 = d->_pg116;
  d->_g65_e2 = d->_g64 && d->EWraised;
  if (d->_g65_e2) {
    d->EWrequest = 1;
    d->_taken_transitions[10] += 1;
  }
  d->_g57_e1 = d->_pg90;
  d->_g65 = d->_pg84;
  d->_g57 = !(d->_g57_e1 || d->_g65);
  d->_g112 = d->_pg96;
  d->_cg112 = d->t >= d->t5;
  d->_g113 = d->_g112 && d->_cg112;
  if (d->_g113) {
    d->_Atrig6 = 1;
  }
  d->_g102 = d->_g65 || d->_g57_e1;
  d->_cg103 = d->t < d->t5;
  d->_g108 = d->_g102 && d->_cg103;
  if (d->_g108) {
    d->sleepT = (d->sleepT < (d->t5 - d->t)) ? d->sleepT : (d->t5 - d->t);
  }
  d->_cg104 = d->_Atrig6;
  d->_g103 = d->_g102 && !d->_cg103;
  d->_cg106 = d->_Atrig6;
  d->_g105 = (d->_g108 && d->_cg104) || (d->_g103 && d->_cg106);
  d->_g113_e2 = !d->_g112;
  d->_g113 = (d->_g57 || d->_g105) && (d->_g113_e2 || d->_g113) && (d->_g105 || d->_g113);
  if (d->_g113) {
    d->EW_Y = 0;
    d->EWserve = 0;
  }
  d->_g105_e1 = d->_pg81;
  d->_g113_e2 = d->_pg73;
  d->_g105 = !(d->_g105_e1 || d->_g113_e2);
  d->_g96 = d->_pg73_e1;
  d->_cg96 = d->t >= d->t4;
  d->_g97 = d->_g96 && d->_cg96;
  if (d->_g97) {
    d->_Atrig5 = 1;
  }
  d->_g92 = d->_g113_e2 || d->_g105_e1;
  d->_cg87 = d->t < d->t4;
  d->_g86 = d->_g92 && d->_cg87;
  if (d->_g86) {
    d->sleepT = (d->sleepT < (d->t4 - d->t)) ? d->sleepT : (d->t4 - d->t);
  }
  d->_cg88 = d->_Atrig5;
  d->_g87 = d->_g92 && !d->_cg87;
  d->_cg90 = d->_Atrig5;
  d->_g89 = (d->_g86 && d->_cg88) || (d->_g87 && d->_cg90);
  d->_g97_e2 = !d->_g96;
  d->_g89_e1 = (d->_g105 || d->_g89) && (d->_g97_e2 || d->_g97) && (d->_g89 || d->_g97);
  if (d->_g89_e1) {
    d->EW_G = 0;
    d->t = 0;
    d->_taken_transitions[5] += 1;
    d->EW_Y = 1;
    d->EWserve = 1;
    d->Camera_activated = 1;
    d->_Atrig6 = 0;
  }
  d->_g97 = d->_pg120;
  d->_cg145 = d->EWserve;
  d->_g89 = d->_g97 && d->_cg145;
  if (d->_g89) {
    d->EWrequest = 0;
    d->_taken_transitions[11] += 1;
  }
  if (d->_g54) {
    d->EW_P = d->EWrequest;
  }
  d->_g97_e2 = d->_pg197;
  if (d->_g97_e2) {
    d->pEW += d->deltaT;
  }
  if (d->_g54) {
    d->pEW = 0;
    d->_Atrig4 = 0;
  }
  d->_cg67 = d->pEW < d->tPed;
  d->_g68 = d->_g54 && d->_cg67;
  if (d->_g68) {
    d->sleepT = (d->sleepT < (d->tPed - d->pEW)) ? d->sleepT : (d->tPed - d->pEW);
  }
  d->_cg68 = d->_Atrig4;
  d->_g80 = d->_pg74;
  d->_cg80 = d->pEW >= d->tPed;
  d->_g81 = d->_g80 && d->_cg80;
  if (d->_g81) {
    d->_Atrig4 = 1;
  }
  d->_g70 = d->_pg68;
  d->_g76 = d->_pg77;
  d->_g71 = d->_g70 || d->_g76;
  d->_cg71 = d->pEW < d->tPed;
  d->_g72 = d->_g71 && d->_cg71;
  if (d->_g72) {
    d->sleepT = (d->sleepT < (d->tPed - d->pEW)) ? d->sleepT : (d->tPed - d->pEW);
  }
  d->_cg72 = d->_Atrig4;
  d->_g68 = (d->_g68 && !d->_cg68) || (d->_g72 && !d->_cg72);
  d->_g71 = d->_g71 && !d->_cg71;
  d->_cg74 = d->_Atrig4;
  d->_g72 = (d->_g72 && d->_cg72) || (d->_g71 && d->_cg74);
  d->_g77 = d->_g54 && !d->_cg67;
  d->_cg77 = d->_Atrig4;
  d->_g77 = (d->_g71 && !d->_cg74) || (d->_g77 && !d->_cg77);
  d->_g74 = d->_g54 || (d->_g80 && !d->_cg80);
  d->_g66 = !(d->_g76 || d->_g70);
  d->_g70 = !d->_g80;
  d->_g76 = (d->_g66 || d->_g72) && (d->_g70 || d->_g81) && (d->_g72 || d->_g81);
  if (d->_g76) {
    d->EW_P = 0;
    d->_taken_transitions[4] += 1;
    d->EW_P = 0;
    d->_Atrig5 = 0;
  }
  d->_cg83 = d->t < d->t4;
  d->_g80 = d->_g76 && d->_cg83;
  if (d->_g80) {
    d->sleepT = (d->sleepT < (d->t4 - d->t)) ? d->sleepT : (d->t4 - d->t);
  }
  d->_cg84 = d->_Atrig5;
  d->_g73 = (d->_g80 && !d->_cg84) || (d->_g86 && !d->_cg88);
  d->_g81_e2 = d->_g76 && !d->_cg83;
  d->_cg93 = d->_Atrig5;
  d->_g81 = (d->_g87 && !d->_cg90) || (d->_g81_e2 && !d->_cg93);
  d->_g73_e1 = d->_g76 || (d->_g96 && !d->_cg96);
  d->_cg99 = d->t < d->t5;
  d->_g88 = d->_g89_e1 && d->_cg99;
  if (d->_g88) {
    d->sleepT = (d->sleepT < (d->t5 - d->t)) ? d->sleepT : (d->t5 - d->t);
  }
  d->_cg100 = d->_Atrig6;
  d->_g84 = (d->_g88 && !d->_cg100) || (d->_g108 && !d->_cg104);
  d->_g93 = d->_g89_e1 && !d->_cg99;
  d->_cg109 = d->_Atrig6;
  d->_g90 = (d->_g103 && !d->_cg106) || (d->_g93 && !d->_cg109);
  d->_g96 = d->_g89_e1 || (d->_g112 && !d->_cg112);
  if (d->_g113) {
    d->t = 0;
    d->_taken_transitions[6] += 1;
    d->NS_R = 1;
    d->EW_R = 1;
    d->_Atrig7 = 0;
  }
  d->_cg115 = d->t < d->t6;
  d->_g82 = d->_g113 && d->_cg115;
  if (d->_g82) {
    d->sleepT = (d->sleepT < (d->t6 - d->t)) ? d->sleepT : (d->t6 - d->t);
  }
  d->_cg116 = d->_Atrig7;
  d->_g100 = (d->_g82 && !d->_cg116) || (d->_g118 && !d->_cg120);
  d->_g104 = d->_g113 && !d->_cg115;
  d->_cg125 = d->_Atrig7;
  d->_g109 = (d->_g119 && !d->_cg122) || (d->_g104 && !d->_cg125);
  d->_g106 = d->_g113 || (d->_g128 && !d->_cg128);
  d->_g112 = d->_GO || d->_g33_e2 || (d->_g121_e1 && !d->NSraised);
  d->_g98 = d->_g129_e2 || (d->_g25_e1 && !d->_cg137);
  d->_g116 = d->_GO || d->_g89 || (d->_g64 && !d->EWraised);
  d->_g120 = d->_g65_e2 || (d->_g97 && !d->_cg145);
  d->_g125 = d->_pg159;
  d->_cg164 = d->NS_Vehicle;
  d->_g122 = d->_g125 && d->_cg164;
  if (d->_g122) {
    d->_Atrig8 = 1;
  }
  d->_g128 = d->_pg184;
  d->_cg179 = d->EW_Vehicle;
  d->_g114 = d->_g128 && d->_cg179;
  if (d->_g114) {
    d->tSnap = 0;
    d->_taken_transitions[16] += 1;
    d->EW_Vehicle_Leave = 0;
    d->EW_Vehicle = 0;
    d->_Atrig10 = 0;
    d->_Atrig11 = 0;
  }
  d->_g134 = d->_pg201;
  if (d->_g134) {
    d->tVehicle += d->deltaT;
  }
  d->_g138 = d->_g125 && !d->_cg164;
  d->_cg167 = d->tVehicle >= d->tSnap & (d->NS_Y | d->NS_R);
  d->_g135 = d->_g138 && d->_cg167;
  if (d->_g135) {
    d->_Atrig9 = 1;
  }
  d->_g137 = d->_pg166;
  d->_cg151 = d->NS_Vehicle;
  d->_g146 = d->_g137 && d->_cg151;
  if (d->_g146) {
    d->tSnap = 0;
    d->_taken_transitions[12] += 1;
    d->NS_Vehicle_Leave = 0;
    d->NS_Vehicle = 0;
    d->_Atrig8 = 0;
    d->_Atrig9 = 0;
  }
  d->_g142 = d->_pg154;
  d->_g145 = d->_pg161;
  d->_g143 = d->_g146 || d->_g142 || d->_g145;
  d->_cg154 = d->tVehicle < d->tSnap;
  d->_g164 = d->_g143 && !d->_cg154;
  d->_cg159 = d->_Atrig8 || d->_Atrig9;
  d->_g161 = d->_g164 && !d->_cg159;
  d->_g158 = d->_g143 && d->_cg154;
  if (d->_g158) {
    d->sleepT = (d->sleepT < (d->tSnap - d->tVehicle)) ? d->sleepT : (d->tSnap - d->tVehicle);
  }
  d->_cg155 = d->_Atrig8 || d->_Atrig9;
  d->_g154 = d->_g158 && !d->_cg155;
  d->_g156_e1 = !(d->_g161 || d->_g154);
  d->_g155 = (d->_g158 && d->_cg155) || (d->_g164 && d->_cg159);
  d->_g159 = d->_g146 || (d->_g138 && !d->_cg167);
  d->_g167 = !d->_g159;
  d->_g152 = d->_g122 || d->_g135;
  d->_g168 = (d->_g156_e1 || d->_g155) && (d->_g167 || d->_g152) && (d->_g155 || d->_g152);
  d->_cg169 = d->_Atrig8;
  d->_g165 = d->_g168 && d->_cg169;
  if (d->_g165) {
    d->NS_Vehicle_Leave = 1;
    d->_taken_transitions[13] += 1;
  }
  d->_g156 = d->_pg174;
  d->_cg173 = d->NS_Vehicle;
  d->_g156_e1 = d->_g156 && d->_cg173;
  if (d->_g156_e1) {
    d->NS_Vehicle_Leave = 1;
    d->_taken_transitions[15] += 1;
  }
  d->_g166_e2 = d->_GO || d->_g165 || d->_g156_e1;
  if (d->_g166_e2) {
    d->NS_Vehicle = 0;
  }
  d->_g166 = d->_g166_e2 || (d->_g137 && !d->_cg151);
  d->_g170 = d->_g168 && !d->_cg169;
  if (d->_g170) {
    d->_taken_transitions[14] += 1;
    d->NS_Vehicle_Snapshot = 1;
  }
  d->_g174 = d->_g170 || (d->_g156 && !d->_cg173);
  d->_g149 = d->_pg183;
  d->_cg192 = d->EW_Vehicle;
  d->_g151 = d->_g149 && d->_cg192;
  if (d->_g151) {
    d->_Atrig10 = 1;
  }
  d->_g169 = d->_g149 && !d->_cg192;
  d->_cg195 = d->tVehicle >= d->tSnap & (d->EW_Y | d->EW_R);
  d->_g171 = d->_g169 && d->_cg195;
  if (d->_g171) {
    d->_Atrig11 = 1;
  }
  d->_g173 = d->_pg185;
  d->_g192 = d->_pg188;
  d->_g189 = d->_g114 || d->_g173 || d->_g192;
  d->_cg182 = d->tVehicle < d->tSnap;
  d->_g186 = d->_g189 && !d->_cg182;
  d->_cg187 = d->_Atrig10 || d->_Atrig11;
  d->_g188 = d->_g186 && !d->_cg187;
  d->_g182 = d->_g189 && d->_cg182;
  if (d->_g182) {
    d->sleepT = (d->sleepT < (d->tSnap - d->tVehicle)) ? d->sleepT : (d->tSnap - d->tVehicle);
  }
  d->_cg183 = d->_Atrig10 || d->_Atrig11;
  d->_g185 = d->_g182 && !d->_cg183;
  d->_g184_e1 = !(d->_g188 || d->_g185);
  d->_g187 = (d->_g182 && d->_cg183) || (d->_g186 && d->_cg187);
  d->_g183 = d->_g114 || (d->_g169 && !d->_cg195);
  d->_g195 = !d->_g183;
  d->_g180 = d->_g151 || d->_g171;
  d->_g196 = (d->_g184_e1 || d->_g187) && (d->_g195 || d->_g180) && (d->_g187 || d->_g180);
  d->_cg197 = d->_Atrig10;
  d->_g193 = d->_g196 && d->_cg197;
  if (d->_g193) {
    d->EW_Vehicle_Leave = 1;
    d->_taken_transitions[17] += 1;
  }
  d->_g194_e2 = d->_pg202;
  d->_cg201 = d->EW_Vehicle;
  d->_g184_e1 = d->_g194_e2 && d->_cg201;
  if (d->_g184_e1) {
    d->EW_Vehicle_Leave = 1;
    d->_taken_transitions[19] += 1;
  }
  d->_g194 = d->_GO || d->_g193 || d->_g184_e1;
  if (d->_g194) {
    d->EW_Vehicle = 0;
  }
  d->_g184 = d->_g194 || (d->_g128 && !d->_cg179);
  d->_g198 = d->_g196 && !d->_cg197;
  if (d->_g198) {
    d->_taken_transitions[18] += 1;
    d->EW_Vehicle_Snapshot = 1;
  }
  d->_g202 = d->_g198 || (d->_g194_e2 && !d->_cg201);
  d->_g179 = d->_GO || d->_g210;
  d->_g177 = d->_GO || d->_g25;
  d->_g197 = d->_GO || d->_g97_e2;
  d->_g201 = d->_GO || d->_g134;
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
  d->tVehicle = 0;
  d->t1 = 10;
  d->t2 = 10;
  d->t3 = 10;
  d->t4 = 10;
  d->t5 = 10;
  d->t6 = 10;
  d->tPed = 5;
  d->tSnap = 5;
  d->EWrequest = 0;
  d->NSrequest = 0;
  d->EWserve = 0;
  d->NSserve = 0;
  d->deltaT = 0.0;
  d->sleepT = 0.0;
  d->_taken_transitions[0] = 0;
  d->_taken_transitions[1] = 0;
  d->_taken_transitions[2] = 0;
  d->_taken_transitions[3] = 0;
  d->_taken_transitions[4] = 0;
  d->_taken_transitions[5] = 0;
  d->_taken_transitions[6] = 0;
  d->_taken_transitions[7] = 0;
  d->_taken_transitions[8] = 0;
  d->_taken_transitions[9] = 0;
  d->_taken_transitions[10] = 0;
  d->_taken_transitions[11] = 0;
  d->_taken_transitions[12] = 0;
  d->_taken_transitions[13] = 0;
  d->_taken_transitions[14] = 0;
  d->_taken_transitions[15] = 0;
  d->_taken_transitions[16] = 0;
  d->_taken_transitions[17] = 0;
  d->_taken_transitions[18] = 0;
  d->_taken_transitions[19] = 0;
  d->_pg179 = 0;
  d->_pg109 = 0;
  d->_pg100 = 0;
  d->_pg106 = 0;
  d->_pg112 = 0;
  d->_pg29 = 0;
  d->_pg20 = 0;
  d->_pg18 = 0;
  d->_pg17 = 0;
  d->_pg9 = 0;
  d->_pg17_e2 = 0;
  d->_pg98 = 0;
  d->_pg177 = 0;
  d->_pg10 = 0;
  d->_pg4 = 0;
  d->_pg13 = 0;
  d->_pg58 = 0;
  d->_pg52 = 0;
  d->_pg61 = 0;
  d->_pg116 = 0;
  d->_pg90 = 0;
  d->_pg84 = 0;
  d->_pg96 = 0;
  d->_pg81 = 0;
  d->_pg73 = 0;
  d->_pg73_e1 = 0;
  d->_pg120 = 0;
  d->_pg197 = 0;
  d->_pg74 = 0;
  d->_pg68 = 0;
  d->_pg77 = 0;
  d->_pg159 = 0;
  d->_pg184 = 0;
  d->_pg201 = 0;
  d->_pg166 = 0;
  d->_pg154 = 0;
  d->_pg161 = 0;
  d->_pg174 = 0;
  d->_pg183 = 0;
  d->_pg185 = 0;
  d->_pg188 = 0;
  d->_pg202 = 0;
}

void tick(TickData* d) {
  logic(d);

  d->_pg179 = d->_g179;
  d->_pg109 = d->_g109;
  d->_pg100 = d->_g100;
  d->_pg106 = d->_g106;
  d->_pg112 = d->_g112;
  d->_pg29 = d->_g29;
  d->_pg20 = d->_g20;
  d->_pg18 = d->_g18;
  d->_pg17 = d->_g17;
  d->_pg9 = d->_g9;
  d->_pg17_e2 = d->_g17_e2;
  d->_pg98 = d->_g98;
  d->_pg177 = d->_g177;
  d->_pg10 = d->_g10;
  d->_pg4 = d->_g4;
  d->_pg13 = d->_g13;
  d->_pg58 = d->_g58;
  d->_pg52 = d->_g52;
  d->_pg61 = d->_g61;
  d->_pg116 = d->_g116;
  d->_pg90 = d->_g90;
  d->_pg84 = d->_g84;
  d->_pg96 = d->_g96;
  d->_pg81 = d->_g81;
  d->_pg73 = d->_g73;
  d->_pg73_e1 = d->_g73_e1;
  d->_pg120 = d->_g120;
  d->_pg197 = d->_g197;
  d->_pg74 = d->_g74;
  d->_pg68 = d->_g68;
  d->_pg77 = d->_g77;
  d->_pg159 = d->_g159;
  d->_pg184 = d->_g184;
  d->_pg201 = d->_g201;
  d->_pg166 = d->_g166;
  d->_pg154 = d->_g154;
  d->_pg161 = d->_g161;
  d->_pg174 = d->_g174;
  d->_pg183 = d->_g183;
  d->_pg185 = d->_g185;
  d->_pg188 = d->_g188;
  d->_pg202 = d->_g202;
  d->_GO = 0;
}

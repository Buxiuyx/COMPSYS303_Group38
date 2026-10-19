<#macro simulation_imports position>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>

#include "lib/cJSON.h"
</#macro>

<#macro simulation_init position>
sendVariables(1);
</#macro>

<#macro simulation_in position>
receiveVariables();
</#macro>

<#macro simulation_out position>
sendVariables(0);
</#macro>

<#macro simulation_body position>
void receiveVariables() {
    size_t blocksize = 2048;
    char *buffer = realloc(NULL, sizeof(char) * blocksize);
    size_t i = 0;
    
    // read next line
    int c = getchar();
    while (c != EOF && c != '\n') {
        buffer[i++] = (char) c;
        if (i == blocksize) {
            buffer = realloc(buffer, sizeof(char) * (blocksize += 2048));
        }
        c = getchar();
    }
    buffer[i++] = '\0';
    
    if (c == EOF) {
        exit(EOF);
    }
    
    cJSON *root = cJSON_Parse(buffer);
    cJSON *item = NULL;
    if(root != NULL) {
        // Receive EW_Vehicle
        item = cJSON_GetObjectItemCaseSensitive(root, "EW_Vehicle");
        if(item != NULL) {
            ${tickdata_name}.EW_Vehicle = item->valueint;
        }
        // Receive EWraised
        item = cJSON_GetObjectItemCaseSensitive(root, "EWraised");
        if(item != NULL) {
            ${tickdata_name}.EWraised = item->valueint;
        }
        // Receive NS_Vehicle
        item = cJSON_GetObjectItemCaseSensitive(root, "NS_Vehicle");
        if(item != NULL) {
            ${tickdata_name}.NS_Vehicle = item->valueint;
        }
        // Receive NSraised
        item = cJSON_GetObjectItemCaseSensitive(root, "NSraised");
        if(item != NULL) {
            ${tickdata_name}.NSraised = item->valueint;
        }
        // Receive deltaT
        item = cJSON_GetObjectItemCaseSensitive(root, "deltaT");
        if(item != NULL) {
            ${tickdata_name}.deltaT = item->valuedouble;
        }
        // Receive t1
        item = cJSON_GetObjectItemCaseSensitive(root, "t1");
        if(item != NULL) {
            ${tickdata_name}.t1 = item->valueint;
        }
        // Receive t2
        item = cJSON_GetObjectItemCaseSensitive(root, "t2");
        if(item != NULL) {
            ${tickdata_name}.t2 = item->valueint;
        }
        // Receive t3
        item = cJSON_GetObjectItemCaseSensitive(root, "t3");
        if(item != NULL) {
            ${tickdata_name}.t3 = item->valueint;
        }
        // Receive t4
        item = cJSON_GetObjectItemCaseSensitive(root, "t4");
        if(item != NULL) {
            ${tickdata_name}.t4 = item->valueint;
        }
        // Receive t5
        item = cJSON_GetObjectItemCaseSensitive(root, "t5");
        if(item != NULL) {
            ${tickdata_name}.t5 = item->valueint;
        }
        // Receive t6
        item = cJSON_GetObjectItemCaseSensitive(root, "t6");
        if(item != NULL) {
            ${tickdata_name}.t6 = item->valueint;
        }
        // Receive tPed
        item = cJSON_GetObjectItemCaseSensitive(root, "tPed");
        if(item != NULL) {
            ${tickdata_name}.tPed = item->valueint;
        }
        // Receive tSnap
        item = cJSON_GetObjectItemCaseSensitive(root, "tSnap");
        if(item != NULL) {
            ${tickdata_name}.tSnap = item->valueint;
        }
        // Receive Camera_activated
        item = cJSON_GetObjectItemCaseSensitive(root, "Camera_activated");
        if(item != NULL) {
            ${tickdata_name}.Camera_activated = item->valueint;
        }
        // Receive EW_G
        item = cJSON_GetObjectItemCaseSensitive(root, "EW_G");
        if(item != NULL) {
            ${tickdata_name}.EW_G = item->valueint;
        }
        // Receive EW_P
        item = cJSON_GetObjectItemCaseSensitive(root, "EW_P");
        if(item != NULL) {
            ${tickdata_name}.EW_P = item->valueint;
        }
        // Receive EW_R
        item = cJSON_GetObjectItemCaseSensitive(root, "EW_R");
        if(item != NULL) {
            ${tickdata_name}.EW_R = item->valueint;
        }
        // Receive EW_Vehicle_Leave
        item = cJSON_GetObjectItemCaseSensitive(root, "EW_Vehicle_Leave");
        if(item != NULL) {
            ${tickdata_name}.EW_Vehicle_Leave = item->valueint;
        }
        // Receive EW_Vehicle_Snapshot
        item = cJSON_GetObjectItemCaseSensitive(root, "EW_Vehicle_Snapshot");
        if(item != NULL) {
            ${tickdata_name}.EW_Vehicle_Snapshot = item->valueint;
        }
        // Receive EW_Y
        item = cJSON_GetObjectItemCaseSensitive(root, "EW_Y");
        if(item != NULL) {
            ${tickdata_name}.EW_Y = item->valueint;
        }
        // Receive NS_G
        item = cJSON_GetObjectItemCaseSensitive(root, "NS_G");
        if(item != NULL) {
            ${tickdata_name}.NS_G = item->valueint;
        }
        // Receive NS_P
        item = cJSON_GetObjectItemCaseSensitive(root, "NS_P");
        if(item != NULL) {
            ${tickdata_name}.NS_P = item->valueint;
        }
        // Receive NS_R
        item = cJSON_GetObjectItemCaseSensitive(root, "NS_R");
        if(item != NULL) {
            ${tickdata_name}.NS_R = item->valueint;
        }
        // Receive NS_Vehicle_Leave
        item = cJSON_GetObjectItemCaseSensitive(root, "NS_Vehicle_Leave");
        if(item != NULL) {
            ${tickdata_name}.NS_Vehicle_Leave = item->valueint;
        }
        // Receive NS_Vehicle_Snapshot
        item = cJSON_GetObjectItemCaseSensitive(root, "NS_Vehicle_Snapshot");
        if(item != NULL) {
            ${tickdata_name}.NS_Vehicle_Snapshot = item->valueint;
        }
        // Receive NS_Y
        item = cJSON_GetObjectItemCaseSensitive(root, "NS_Y");
        if(item != NULL) {
            ${tickdata_name}.NS_Y = item->valueint;
        }
        // Receive sleepT
        item = cJSON_GetObjectItemCaseSensitive(root, "sleepT");
        if(item != NULL) {
            ${tickdata_name}.sleepT = item->valuedouble;
        }
        // Receive #ticktime
        item = cJSON_GetObjectItemCaseSensitive(root, "#ticktime");
        if(item != NULL) {
            _ticktime = item->valuedouble;
        }
        // Receive EWrequest
        item = cJSON_GetObjectItemCaseSensitive(root, "EWrequest");
        if(item != NULL) {
            ${tickdata_name}.EWrequest = item->valueint;
        }
        // Receive EWserve
        item = cJSON_GetObjectItemCaseSensitive(root, "EWserve");
        if(item != NULL) {
            ${tickdata_name}.EWserve = item->valueint;
        }
        // Receive NSrequest
        item = cJSON_GetObjectItemCaseSensitive(root, "NSrequest");
        if(item != NULL) {
            ${tickdata_name}.NSrequest = item->valueint;
        }
        // Receive NSserve
        item = cJSON_GetObjectItemCaseSensitive(root, "NSserve");
        if(item != NULL) {
            ${tickdata_name}.NSserve = item->valueint;
        }
        // Receive _Atrig
        item = cJSON_GetObjectItemCaseSensitive(root, "_Atrig");
        if(item != NULL) {
            ${tickdata_name}._Atrig = item->valueint;
        }
        // Receive _Atrig1
        item = cJSON_GetObjectItemCaseSensitive(root, "_Atrig1");
        if(item != NULL) {
            ${tickdata_name}._Atrig1 = item->valueint;
        }
        // Receive _Atrig10
        item = cJSON_GetObjectItemCaseSensitive(root, "_Atrig10");
        if(item != NULL) {
            ${tickdata_name}._Atrig10 = item->valueint;
        }
        // Receive _Atrig11
        item = cJSON_GetObjectItemCaseSensitive(root, "_Atrig11");
        if(item != NULL) {
            ${tickdata_name}._Atrig11 = item->valueint;
        }
        // Receive _Atrig2
        item = cJSON_GetObjectItemCaseSensitive(root, "_Atrig2");
        if(item != NULL) {
            ${tickdata_name}._Atrig2 = item->valueint;
        }
        // Receive _Atrig3
        item = cJSON_GetObjectItemCaseSensitive(root, "_Atrig3");
        if(item != NULL) {
            ${tickdata_name}._Atrig3 = item->valueint;
        }
        // Receive _Atrig4
        item = cJSON_GetObjectItemCaseSensitive(root, "_Atrig4");
        if(item != NULL) {
            ${tickdata_name}._Atrig4 = item->valueint;
        }
        // Receive _Atrig5
        item = cJSON_GetObjectItemCaseSensitive(root, "_Atrig5");
        if(item != NULL) {
            ${tickdata_name}._Atrig5 = item->valueint;
        }
        // Receive _Atrig6
        item = cJSON_GetObjectItemCaseSensitive(root, "_Atrig6");
        if(item != NULL) {
            ${tickdata_name}._Atrig6 = item->valueint;
        }
        // Receive _Atrig7
        item = cJSON_GetObjectItemCaseSensitive(root, "_Atrig7");
        if(item != NULL) {
            ${tickdata_name}._Atrig7 = item->valueint;
        }
        // Receive _Atrig8
        item = cJSON_GetObjectItemCaseSensitive(root, "_Atrig8");
        if(item != NULL) {
            ${tickdata_name}._Atrig8 = item->valueint;
        }
        // Receive _Atrig9
        item = cJSON_GetObjectItemCaseSensitive(root, "_Atrig9");
        if(item != NULL) {
            ${tickdata_name}._Atrig9 = item->valueint;
        }
        // Receive _GO
        item = cJSON_GetObjectItemCaseSensitive(root, "_GO");
        if(item != NULL) {
            ${tickdata_name}._GO = item->valueint;
        }
        // Receive _TERM
        item = cJSON_GetObjectItemCaseSensitive(root, "_TERM");
        if(item != NULL) {
            ${tickdata_name}._TERM = item->valueint;
        }
        // Receive _cg10
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg10");
        if(item != NULL) {
            ${tickdata_name}._cg10 = item->valueint;
        }
        // Receive _cg100
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg100");
        if(item != NULL) {
            ${tickdata_name}._cg100 = item->valueint;
        }
        // Receive _cg103
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg103");
        if(item != NULL) {
            ${tickdata_name}._cg103 = item->valueint;
        }
        // Receive _cg104
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg104");
        if(item != NULL) {
            ${tickdata_name}._cg104 = item->valueint;
        }
        // Receive _cg106
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg106");
        if(item != NULL) {
            ${tickdata_name}._cg106 = item->valueint;
        }
        // Receive _cg109
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg109");
        if(item != NULL) {
            ${tickdata_name}._cg109 = item->valueint;
        }
        // Receive _cg112
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg112");
        if(item != NULL) {
            ${tickdata_name}._cg112 = item->valueint;
        }
        // Receive _cg115
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg115");
        if(item != NULL) {
            ${tickdata_name}._cg115 = item->valueint;
        }
        // Receive _cg116
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg116");
        if(item != NULL) {
            ${tickdata_name}._cg116 = item->valueint;
        }
        // Receive _cg119
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg119");
        if(item != NULL) {
            ${tickdata_name}._cg119 = item->valueint;
        }
        // Receive _cg120
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg120");
        if(item != NULL) {
            ${tickdata_name}._cg120 = item->valueint;
        }
        // Receive _cg122
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg122");
        if(item != NULL) {
            ${tickdata_name}._cg122 = item->valueint;
        }
        // Receive _cg125
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg125");
        if(item != NULL) {
            ${tickdata_name}._cg125 = item->valueint;
        }
        // Receive _cg128
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg128");
        if(item != NULL) {
            ${tickdata_name}._cg128 = item->valueint;
        }
        // Receive _cg13
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg13");
        if(item != NULL) {
            ${tickdata_name}._cg13 = item->valueint;
        }
        // Receive _cg134
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg134");
        if(item != NULL) {
            ${tickdata_name}._cg134 = item->valueint;
        }
        // Receive _cg137
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg137");
        if(item != NULL) {
            ${tickdata_name}._cg137 = item->valueint;
        }
        // Receive _cg142
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg142");
        if(item != NULL) {
            ${tickdata_name}._cg142 = item->valueint;
        }
        // Receive _cg145
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg145");
        if(item != NULL) {
            ${tickdata_name}._cg145 = item->valueint;
        }
        // Receive _cg151
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg151");
        if(item != NULL) {
            ${tickdata_name}._cg151 = item->valueint;
        }
        // Receive _cg154
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg154");
        if(item != NULL) {
            ${tickdata_name}._cg154 = item->valueint;
        }
        // Receive _cg155
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg155");
        if(item != NULL) {
            ${tickdata_name}._cg155 = item->valueint;
        }
        // Receive _cg159
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg159");
        if(item != NULL) {
            ${tickdata_name}._cg159 = item->valueint;
        }
        // Receive _cg16
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg16");
        if(item != NULL) {
            ${tickdata_name}._cg16 = item->valueint;
        }
        // Receive _cg164
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg164");
        if(item != NULL) {
            ${tickdata_name}._cg164 = item->valueint;
        }
        // Receive _cg167
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg167");
        if(item != NULL) {
            ${tickdata_name}._cg167 = item->valueint;
        }
        // Receive _cg169
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg169");
        if(item != NULL) {
            ${tickdata_name}._cg169 = item->valueint;
        }
        // Receive _cg173
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg173");
        if(item != NULL) {
            ${tickdata_name}._cg173 = item->valueint;
        }
        // Receive _cg179
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg179");
        if(item != NULL) {
            ${tickdata_name}._cg179 = item->valueint;
        }
        // Receive _cg182
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg182");
        if(item != NULL) {
            ${tickdata_name}._cg182 = item->valueint;
        }
        // Receive _cg183
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg183");
        if(item != NULL) {
            ${tickdata_name}._cg183 = item->valueint;
        }
        // Receive _cg187
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg187");
        if(item != NULL) {
            ${tickdata_name}._cg187 = item->valueint;
        }
        // Receive _cg19
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg19");
        if(item != NULL) {
            ${tickdata_name}._cg19 = item->valueint;
        }
        // Receive _cg192
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg192");
        if(item != NULL) {
            ${tickdata_name}._cg192 = item->valueint;
        }
        // Receive _cg195
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg195");
        if(item != NULL) {
            ${tickdata_name}._cg195 = item->valueint;
        }
        // Receive _cg197
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg197");
        if(item != NULL) {
            ${tickdata_name}._cg197 = item->valueint;
        }
        // Receive _cg20
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg20");
        if(item != NULL) {
            ${tickdata_name}._cg20 = item->valueint;
        }
        // Receive _cg201
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg201");
        if(item != NULL) {
            ${tickdata_name}._cg201 = item->valueint;
        }
        // Receive _cg23
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg23");
        if(item != NULL) {
            ${tickdata_name}._cg23 = item->valueint;
        }
        // Receive _cg24
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg24");
        if(item != NULL) {
            ${tickdata_name}._cg24 = item->valueint;
        }
        // Receive _cg26
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg26");
        if(item != NULL) {
            ${tickdata_name}._cg26 = item->valueint;
        }
        // Receive _cg29
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg29");
        if(item != NULL) {
            ${tickdata_name}._cg29 = item->valueint;
        }
        // Receive _cg3
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg3");
        if(item != NULL) {
            ${tickdata_name}._cg3 = item->valueint;
        }
        // Receive _cg32
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg32");
        if(item != NULL) {
            ${tickdata_name}._cg32 = item->valueint;
        }
        // Receive _cg35
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg35");
        if(item != NULL) {
            ${tickdata_name}._cg35 = item->valueint;
        }
        // Receive _cg36
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg36");
        if(item != NULL) {
            ${tickdata_name}._cg36 = item->valueint;
        }
        // Receive _cg39
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg39");
        if(item != NULL) {
            ${tickdata_name}._cg39 = item->valueint;
        }
        // Receive _cg4
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg4");
        if(item != NULL) {
            ${tickdata_name}._cg4 = item->valueint;
        }
        // Receive _cg40
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg40");
        if(item != NULL) {
            ${tickdata_name}._cg40 = item->valueint;
        }
        // Receive _cg42
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg42");
        if(item != NULL) {
            ${tickdata_name}._cg42 = item->valueint;
        }
        // Receive _cg45
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg45");
        if(item != NULL) {
            ${tickdata_name}._cg45 = item->valueint;
        }
        // Receive _cg48
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg48");
        if(item != NULL) {
            ${tickdata_name}._cg48 = item->valueint;
        }
        // Receive _cg51
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg51");
        if(item != NULL) {
            ${tickdata_name}._cg51 = item->valueint;
        }
        // Receive _cg52
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg52");
        if(item != NULL) {
            ${tickdata_name}._cg52 = item->valueint;
        }
        // Receive _cg55
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg55");
        if(item != NULL) {
            ${tickdata_name}._cg55 = item->valueint;
        }
        // Receive _cg56
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg56");
        if(item != NULL) {
            ${tickdata_name}._cg56 = item->valueint;
        }
        // Receive _cg58
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg58");
        if(item != NULL) {
            ${tickdata_name}._cg58 = item->valueint;
        }
        // Receive _cg61
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg61");
        if(item != NULL) {
            ${tickdata_name}._cg61 = item->valueint;
        }
        // Receive _cg64
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg64");
        if(item != NULL) {
            ${tickdata_name}._cg64 = item->valueint;
        }
        // Receive _cg67
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg67");
        if(item != NULL) {
            ${tickdata_name}._cg67 = item->valueint;
        }
        // Receive _cg68
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg68");
        if(item != NULL) {
            ${tickdata_name}._cg68 = item->valueint;
        }
        // Receive _cg7
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg7");
        if(item != NULL) {
            ${tickdata_name}._cg7 = item->valueint;
        }
        // Receive _cg71
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg71");
        if(item != NULL) {
            ${tickdata_name}._cg71 = item->valueint;
        }
        // Receive _cg72
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg72");
        if(item != NULL) {
            ${tickdata_name}._cg72 = item->valueint;
        }
        // Receive _cg74
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg74");
        if(item != NULL) {
            ${tickdata_name}._cg74 = item->valueint;
        }
        // Receive _cg77
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg77");
        if(item != NULL) {
            ${tickdata_name}._cg77 = item->valueint;
        }
        // Receive _cg8
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg8");
        if(item != NULL) {
            ${tickdata_name}._cg8 = item->valueint;
        }
        // Receive _cg80
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg80");
        if(item != NULL) {
            ${tickdata_name}._cg80 = item->valueint;
        }
        // Receive _cg83
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg83");
        if(item != NULL) {
            ${tickdata_name}._cg83 = item->valueint;
        }
        // Receive _cg84
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg84");
        if(item != NULL) {
            ${tickdata_name}._cg84 = item->valueint;
        }
        // Receive _cg87
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg87");
        if(item != NULL) {
            ${tickdata_name}._cg87 = item->valueint;
        }
        // Receive _cg88
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg88");
        if(item != NULL) {
            ${tickdata_name}._cg88 = item->valueint;
        }
        // Receive _cg90
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg90");
        if(item != NULL) {
            ${tickdata_name}._cg90 = item->valueint;
        }
        // Receive _cg93
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg93");
        if(item != NULL) {
            ${tickdata_name}._cg93 = item->valueint;
        }
        // Receive _cg96
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg96");
        if(item != NULL) {
            ${tickdata_name}._cg96 = item->valueint;
        }
        // Receive _cg99
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg99");
        if(item != NULL) {
            ${tickdata_name}._cg99 = item->valueint;
        }
        // Receive _g10
        item = cJSON_GetObjectItemCaseSensitive(root, "_g10");
        if(item != NULL) {
            ${tickdata_name}._g10 = item->valueint;
        }
        // Receive _g100
        item = cJSON_GetObjectItemCaseSensitive(root, "_g100");
        if(item != NULL) {
            ${tickdata_name}._g100 = item->valueint;
        }
        // Receive _g102
        item = cJSON_GetObjectItemCaseSensitive(root, "_g102");
        if(item != NULL) {
            ${tickdata_name}._g102 = item->valueint;
        }
        // Receive _g103
        item = cJSON_GetObjectItemCaseSensitive(root, "_g103");
        if(item != NULL) {
            ${tickdata_name}._g103 = item->valueint;
        }
        // Receive _g104
        item = cJSON_GetObjectItemCaseSensitive(root, "_g104");
        if(item != NULL) {
            ${tickdata_name}._g104 = item->valueint;
        }
        // Receive _g105
        item = cJSON_GetObjectItemCaseSensitive(root, "_g105");
        if(item != NULL) {
            ${tickdata_name}._g105 = item->valueint;
        }
        // Receive _g105_e1
        item = cJSON_GetObjectItemCaseSensitive(root, "_g105_e1");
        if(item != NULL) {
            ${tickdata_name}._g105_e1 = item->valueint;
        }
        // Receive _g106
        item = cJSON_GetObjectItemCaseSensitive(root, "_g106");
        if(item != NULL) {
            ${tickdata_name}._g106 = item->valueint;
        }
        // Receive _g108
        item = cJSON_GetObjectItemCaseSensitive(root, "_g108");
        if(item != NULL) {
            ${tickdata_name}._g108 = item->valueint;
        }
        // Receive _g109
        item = cJSON_GetObjectItemCaseSensitive(root, "_g109");
        if(item != NULL) {
            ${tickdata_name}._g109 = item->valueint;
        }
        // Receive _g112
        item = cJSON_GetObjectItemCaseSensitive(root, "_g112");
        if(item != NULL) {
            ${tickdata_name}._g112 = item->valueint;
        }
        // Receive _g113
        item = cJSON_GetObjectItemCaseSensitive(root, "_g113");
        if(item != NULL) {
            ${tickdata_name}._g113 = item->valueint;
        }
        // Receive _g113_e2
        item = cJSON_GetObjectItemCaseSensitive(root, "_g113_e2");
        if(item != NULL) {
            ${tickdata_name}._g113_e2 = item->valueint;
        }
        // Receive _g114
        item = cJSON_GetObjectItemCaseSensitive(root, "_g114");
        if(item != NULL) {
            ${tickdata_name}._g114 = item->valueint;
        }
        // Receive _g116
        item = cJSON_GetObjectItemCaseSensitive(root, "_g116");
        if(item != NULL) {
            ${tickdata_name}._g116 = item->valueint;
        }
        // Receive _g118
        item = cJSON_GetObjectItemCaseSensitive(root, "_g118");
        if(item != NULL) {
            ${tickdata_name}._g118 = item->valueint;
        }
        // Receive _g119
        item = cJSON_GetObjectItemCaseSensitive(root, "_g119");
        if(item != NULL) {
            ${tickdata_name}._g119 = item->valueint;
        }
        // Receive _g12
        item = cJSON_GetObjectItemCaseSensitive(root, "_g12");
        if(item != NULL) {
            ${tickdata_name}._g12 = item->valueint;
        }
        // Receive _g120
        item = cJSON_GetObjectItemCaseSensitive(root, "_g120");
        if(item != NULL) {
            ${tickdata_name}._g120 = item->valueint;
        }
        // Receive _g121
        item = cJSON_GetObjectItemCaseSensitive(root, "_g121");
        if(item != NULL) {
            ${tickdata_name}._g121 = item->valueint;
        }
        // Receive _g121_e1
        item = cJSON_GetObjectItemCaseSensitive(root, "_g121_e1");
        if(item != NULL) {
            ${tickdata_name}._g121_e1 = item->valueint;
        }
        // Receive _g122
        item = cJSON_GetObjectItemCaseSensitive(root, "_g122");
        if(item != NULL) {
            ${tickdata_name}._g122 = item->valueint;
        }
        // Receive _g124
        item = cJSON_GetObjectItemCaseSensitive(root, "_g124");
        if(item != NULL) {
            ${tickdata_name}._g124 = item->valueint;
        }
        // Receive _g125
        item = cJSON_GetObjectItemCaseSensitive(root, "_g125");
        if(item != NULL) {
            ${tickdata_name}._g125 = item->valueint;
        }
        // Receive _g128
        item = cJSON_GetObjectItemCaseSensitive(root, "_g128");
        if(item != NULL) {
            ${tickdata_name}._g128 = item->valueint;
        }
        // Receive _g129
        item = cJSON_GetObjectItemCaseSensitive(root, "_g129");
        if(item != NULL) {
            ${tickdata_name}._g129 = item->valueint;
        }
        // Receive _g129_e2
        item = cJSON_GetObjectItemCaseSensitive(root, "_g129_e2");
        if(item != NULL) {
            ${tickdata_name}._g129_e2 = item->valueint;
        }
        // Receive _g13
        item = cJSON_GetObjectItemCaseSensitive(root, "_g13");
        if(item != NULL) {
            ${tickdata_name}._g13 = item->valueint;
        }
        // Receive _g130
        item = cJSON_GetObjectItemCaseSensitive(root, "_g130");
        if(item != NULL) {
            ${tickdata_name}._g130 = item->valueint;
        }
        // Receive _g134
        item = cJSON_GetObjectItemCaseSensitive(root, "_g134");
        if(item != NULL) {
            ${tickdata_name}._g134 = item->valueint;
        }
        // Receive _g135
        item = cJSON_GetObjectItemCaseSensitive(root, "_g135");
        if(item != NULL) {
            ${tickdata_name}._g135 = item->valueint;
        }
        // Receive _g137
        item = cJSON_GetObjectItemCaseSensitive(root, "_g137");
        if(item != NULL) {
            ${tickdata_name}._g137 = item->valueint;
        }
        // Receive _g138
        item = cJSON_GetObjectItemCaseSensitive(root, "_g138");
        if(item != NULL) {
            ${tickdata_name}._g138 = item->valueint;
        }
        // Receive _g142
        item = cJSON_GetObjectItemCaseSensitive(root, "_g142");
        if(item != NULL) {
            ${tickdata_name}._g142 = item->valueint;
        }
        // Receive _g143
        item = cJSON_GetObjectItemCaseSensitive(root, "_g143");
        if(item != NULL) {
            ${tickdata_name}._g143 = item->valueint;
        }
        // Receive _g145
        item = cJSON_GetObjectItemCaseSensitive(root, "_g145");
        if(item != NULL) {
            ${tickdata_name}._g145 = item->valueint;
        }
        // Receive _g146
        item = cJSON_GetObjectItemCaseSensitive(root, "_g146");
        if(item != NULL) {
            ${tickdata_name}._g146 = item->valueint;
        }
        // Receive _g149
        item = cJSON_GetObjectItemCaseSensitive(root, "_g149");
        if(item != NULL) {
            ${tickdata_name}._g149 = item->valueint;
        }
        // Receive _g151
        item = cJSON_GetObjectItemCaseSensitive(root, "_g151");
        if(item != NULL) {
            ${tickdata_name}._g151 = item->valueint;
        }
        // Receive _g152
        item = cJSON_GetObjectItemCaseSensitive(root, "_g152");
        if(item != NULL) {
            ${tickdata_name}._g152 = item->valueint;
        }
        // Receive _g154
        item = cJSON_GetObjectItemCaseSensitive(root, "_g154");
        if(item != NULL) {
            ${tickdata_name}._g154 = item->valueint;
        }
        // Receive _g155
        item = cJSON_GetObjectItemCaseSensitive(root, "_g155");
        if(item != NULL) {
            ${tickdata_name}._g155 = item->valueint;
        }
        // Receive _g156
        item = cJSON_GetObjectItemCaseSensitive(root, "_g156");
        if(item != NULL) {
            ${tickdata_name}._g156 = item->valueint;
        }
        // Receive _g156_e1
        item = cJSON_GetObjectItemCaseSensitive(root, "_g156_e1");
        if(item != NULL) {
            ${tickdata_name}._g156_e1 = item->valueint;
        }
        // Receive _g158
        item = cJSON_GetObjectItemCaseSensitive(root, "_g158");
        if(item != NULL) {
            ${tickdata_name}._g158 = item->valueint;
        }
        // Receive _g159
        item = cJSON_GetObjectItemCaseSensitive(root, "_g159");
        if(item != NULL) {
            ${tickdata_name}._g159 = item->valueint;
        }
        // Receive _g16
        item = cJSON_GetObjectItemCaseSensitive(root, "_g16");
        if(item != NULL) {
            ${tickdata_name}._g16 = item->valueint;
        }
        // Receive _g161
        item = cJSON_GetObjectItemCaseSensitive(root, "_g161");
        if(item != NULL) {
            ${tickdata_name}._g161 = item->valueint;
        }
        // Receive _g164
        item = cJSON_GetObjectItemCaseSensitive(root, "_g164");
        if(item != NULL) {
            ${tickdata_name}._g164 = item->valueint;
        }
        // Receive _g165
        item = cJSON_GetObjectItemCaseSensitive(root, "_g165");
        if(item != NULL) {
            ${tickdata_name}._g165 = item->valueint;
        }
        // Receive _g166
        item = cJSON_GetObjectItemCaseSensitive(root, "_g166");
        if(item != NULL) {
            ${tickdata_name}._g166 = item->valueint;
        }
        // Receive _g166_e2
        item = cJSON_GetObjectItemCaseSensitive(root, "_g166_e2");
        if(item != NULL) {
            ${tickdata_name}._g166_e2 = item->valueint;
        }
        // Receive _g167
        item = cJSON_GetObjectItemCaseSensitive(root, "_g167");
        if(item != NULL) {
            ${tickdata_name}._g167 = item->valueint;
        }
        // Receive _g168
        item = cJSON_GetObjectItemCaseSensitive(root, "_g168");
        if(item != NULL) {
            ${tickdata_name}._g168 = item->valueint;
        }
        // Receive _g169
        item = cJSON_GetObjectItemCaseSensitive(root, "_g169");
        if(item != NULL) {
            ${tickdata_name}._g169 = item->valueint;
        }
        // Receive _g17
        item = cJSON_GetObjectItemCaseSensitive(root, "_g17");
        if(item != NULL) {
            ${tickdata_name}._g17 = item->valueint;
        }
        // Receive _g170
        item = cJSON_GetObjectItemCaseSensitive(root, "_g170");
        if(item != NULL) {
            ${tickdata_name}._g170 = item->valueint;
        }
        // Receive _g171
        item = cJSON_GetObjectItemCaseSensitive(root, "_g171");
        if(item != NULL) {
            ${tickdata_name}._g171 = item->valueint;
        }
        // Receive _g173
        item = cJSON_GetObjectItemCaseSensitive(root, "_g173");
        if(item != NULL) {
            ${tickdata_name}._g173 = item->valueint;
        }
        // Receive _g174
        item = cJSON_GetObjectItemCaseSensitive(root, "_g174");
        if(item != NULL) {
            ${tickdata_name}._g174 = item->valueint;
        }
        // Receive _g177
        item = cJSON_GetObjectItemCaseSensitive(root, "_g177");
        if(item != NULL) {
            ${tickdata_name}._g177 = item->valueint;
        }
        // Receive _g179
        item = cJSON_GetObjectItemCaseSensitive(root, "_g179");
        if(item != NULL) {
            ${tickdata_name}._g179 = item->valueint;
        }
        // Receive _g17_e2
        item = cJSON_GetObjectItemCaseSensitive(root, "_g17_e2");
        if(item != NULL) {
            ${tickdata_name}._g17_e2 = item->valueint;
        }
        // Receive _g18
        item = cJSON_GetObjectItemCaseSensitive(root, "_g18");
        if(item != NULL) {
            ${tickdata_name}._g18 = item->valueint;
        }
        // Receive _g180
        item = cJSON_GetObjectItemCaseSensitive(root, "_g180");
        if(item != NULL) {
            ${tickdata_name}._g180 = item->valueint;
        }
        // Receive _g182
        item = cJSON_GetObjectItemCaseSensitive(root, "_g182");
        if(item != NULL) {
            ${tickdata_name}._g182 = item->valueint;
        }
        // Receive _g183
        item = cJSON_GetObjectItemCaseSensitive(root, "_g183");
        if(item != NULL) {
            ${tickdata_name}._g183 = item->valueint;
        }
        // Receive _g184
        item = cJSON_GetObjectItemCaseSensitive(root, "_g184");
        if(item != NULL) {
            ${tickdata_name}._g184 = item->valueint;
        }
        // Receive _g184_e1
        item = cJSON_GetObjectItemCaseSensitive(root, "_g184_e1");
        if(item != NULL) {
            ${tickdata_name}._g184_e1 = item->valueint;
        }
        // Receive _g185
        item = cJSON_GetObjectItemCaseSensitive(root, "_g185");
        if(item != NULL) {
            ${tickdata_name}._g185 = item->valueint;
        }
        // Receive _g186
        item = cJSON_GetObjectItemCaseSensitive(root, "_g186");
        if(item != NULL) {
            ${tickdata_name}._g186 = item->valueint;
        }
        // Receive _g187
        item = cJSON_GetObjectItemCaseSensitive(root, "_g187");
        if(item != NULL) {
            ${tickdata_name}._g187 = item->valueint;
        }
        // Receive _g188
        item = cJSON_GetObjectItemCaseSensitive(root, "_g188");
        if(item != NULL) {
            ${tickdata_name}._g188 = item->valueint;
        }
        // Receive _g189
        item = cJSON_GetObjectItemCaseSensitive(root, "_g189");
        if(item != NULL) {
            ${tickdata_name}._g189 = item->valueint;
        }
        // Receive _g192
        item = cJSON_GetObjectItemCaseSensitive(root, "_g192");
        if(item != NULL) {
            ${tickdata_name}._g192 = item->valueint;
        }
        // Receive _g193
        item = cJSON_GetObjectItemCaseSensitive(root, "_g193");
        if(item != NULL) {
            ${tickdata_name}._g193 = item->valueint;
        }
        // Receive _g194
        item = cJSON_GetObjectItemCaseSensitive(root, "_g194");
        if(item != NULL) {
            ${tickdata_name}._g194 = item->valueint;
        }
        // Receive _g194_e2
        item = cJSON_GetObjectItemCaseSensitive(root, "_g194_e2");
        if(item != NULL) {
            ${tickdata_name}._g194_e2 = item->valueint;
        }
        // Receive _g195
        item = cJSON_GetObjectItemCaseSensitive(root, "_g195");
        if(item != NULL) {
            ${tickdata_name}._g195 = item->valueint;
        }
        // Receive _g196
        item = cJSON_GetObjectItemCaseSensitive(root, "_g196");
        if(item != NULL) {
            ${tickdata_name}._g196 = item->valueint;
        }
        // Receive _g197
        item = cJSON_GetObjectItemCaseSensitive(root, "_g197");
        if(item != NULL) {
            ${tickdata_name}._g197 = item->valueint;
        }
        // Receive _g198
        item = cJSON_GetObjectItemCaseSensitive(root, "_g198");
        if(item != NULL) {
            ${tickdata_name}._g198 = item->valueint;
        }
        // Receive _g2
        item = cJSON_GetObjectItemCaseSensitive(root, "_g2");
        if(item != NULL) {
            ${tickdata_name}._g2 = item->valueint;
        }
        // Receive _g20
        item = cJSON_GetObjectItemCaseSensitive(root, "_g20");
        if(item != NULL) {
            ${tickdata_name}._g20 = item->valueint;
        }
        // Receive _g201
        item = cJSON_GetObjectItemCaseSensitive(root, "_g201");
        if(item != NULL) {
            ${tickdata_name}._g201 = item->valueint;
        }
        // Receive _g202
        item = cJSON_GetObjectItemCaseSensitive(root, "_g202");
        if(item != NULL) {
            ${tickdata_name}._g202 = item->valueint;
        }
        // Receive _g210
        item = cJSON_GetObjectItemCaseSensitive(root, "_g210");
        if(item != NULL) {
            ${tickdata_name}._g210 = item->valueint;
        }
        // Receive _g22
        item = cJSON_GetObjectItemCaseSensitive(root, "_g22");
        if(item != NULL) {
            ${tickdata_name}._g22 = item->valueint;
        }
        // Receive _g23
        item = cJSON_GetObjectItemCaseSensitive(root, "_g23");
        if(item != NULL) {
            ${tickdata_name}._g23 = item->valueint;
        }
        // Receive _g24
        item = cJSON_GetObjectItemCaseSensitive(root, "_g24");
        if(item != NULL) {
            ${tickdata_name}._g24 = item->valueint;
        }
        // Receive _g25
        item = cJSON_GetObjectItemCaseSensitive(root, "_g25");
        if(item != NULL) {
            ${tickdata_name}._g25 = item->valueint;
        }
        // Receive _g25_e1
        item = cJSON_GetObjectItemCaseSensitive(root, "_g25_e1");
        if(item != NULL) {
            ${tickdata_name}._g25_e1 = item->valueint;
        }
        // Receive _g26
        item = cJSON_GetObjectItemCaseSensitive(root, "_g26");
        if(item != NULL) {
            ${tickdata_name}._g26 = item->valueint;
        }
        // Receive _g28
        item = cJSON_GetObjectItemCaseSensitive(root, "_g28");
        if(item != NULL) {
            ${tickdata_name}._g28 = item->valueint;
        }
        // Receive _g29
        item = cJSON_GetObjectItemCaseSensitive(root, "_g29");
        if(item != NULL) {
            ${tickdata_name}._g29 = item->valueint;
        }
        // Receive _g32
        item = cJSON_GetObjectItemCaseSensitive(root, "_g32");
        if(item != NULL) {
            ${tickdata_name}._g32 = item->valueint;
        }
        // Receive _g33
        item = cJSON_GetObjectItemCaseSensitive(root, "_g33");
        if(item != NULL) {
            ${tickdata_name}._g33 = item->valueint;
        }
        // Receive _g33_e2
        item = cJSON_GetObjectItemCaseSensitive(root, "_g33_e2");
        if(item != NULL) {
            ${tickdata_name}._g33_e2 = item->valueint;
        }
        // Receive _g34
        item = cJSON_GetObjectItemCaseSensitive(root, "_g34");
        if(item != NULL) {
            ${tickdata_name}._g34 = item->valueint;
        }
        // Receive _g36
        item = cJSON_GetObjectItemCaseSensitive(root, "_g36");
        if(item != NULL) {
            ${tickdata_name}._g36 = item->valueint;
        }
        // Receive _g38
        item = cJSON_GetObjectItemCaseSensitive(root, "_g38");
        if(item != NULL) {
            ${tickdata_name}._g38 = item->valueint;
        }
        // Receive _g39
        item = cJSON_GetObjectItemCaseSensitive(root, "_g39");
        if(item != NULL) {
            ${tickdata_name}._g39 = item->valueint;
        }
        // Receive _g4
        item = cJSON_GetObjectItemCaseSensitive(root, "_g4");
        if(item != NULL) {
            ${tickdata_name}._g4 = item->valueint;
        }
        // Receive _g40
        item = cJSON_GetObjectItemCaseSensitive(root, "_g40");
        if(item != NULL) {
            ${tickdata_name}._g40 = item->valueint;
        }
        // Receive _g41
        item = cJSON_GetObjectItemCaseSensitive(root, "_g41");
        if(item != NULL) {
            ${tickdata_name}._g41 = item->valueint;
        }
        // Receive _g41_e1
        item = cJSON_GetObjectItemCaseSensitive(root, "_g41_e1");
        if(item != NULL) {
            ${tickdata_name}._g41_e1 = item->valueint;
        }
        // Receive _g42
        item = cJSON_GetObjectItemCaseSensitive(root, "_g42");
        if(item != NULL) {
            ${tickdata_name}._g42 = item->valueint;
        }
        // Receive _g44
        item = cJSON_GetObjectItemCaseSensitive(root, "_g44");
        if(item != NULL) {
            ${tickdata_name}._g44 = item->valueint;
        }
        // Receive _g45
        item = cJSON_GetObjectItemCaseSensitive(root, "_g45");
        if(item != NULL) {
            ${tickdata_name}._g45 = item->valueint;
        }
        // Receive _g48
        item = cJSON_GetObjectItemCaseSensitive(root, "_g48");
        if(item != NULL) {
            ${tickdata_name}._g48 = item->valueint;
        }
        // Receive _g49
        item = cJSON_GetObjectItemCaseSensitive(root, "_g49");
        if(item != NULL) {
            ${tickdata_name}._g49 = item->valueint;
        }
        // Receive _g49_e2
        item = cJSON_GetObjectItemCaseSensitive(root, "_g49_e2");
        if(item != NULL) {
            ${tickdata_name}._g49_e2 = item->valueint;
        }
        // Receive _g50
        item = cJSON_GetObjectItemCaseSensitive(root, "_g50");
        if(item != NULL) {
            ${tickdata_name}._g50 = item->valueint;
        }
        // Receive _g52
        item = cJSON_GetObjectItemCaseSensitive(root, "_g52");
        if(item != NULL) {
            ${tickdata_name}._g52 = item->valueint;
        }
        // Receive _g54
        item = cJSON_GetObjectItemCaseSensitive(root, "_g54");
        if(item != NULL) {
            ${tickdata_name}._g54 = item->valueint;
        }
        // Receive _g55
        item = cJSON_GetObjectItemCaseSensitive(root, "_g55");
        if(item != NULL) {
            ${tickdata_name}._g55 = item->valueint;
        }
        // Receive _g56
        item = cJSON_GetObjectItemCaseSensitive(root, "_g56");
        if(item != NULL) {
            ${tickdata_name}._g56 = item->valueint;
        }
        // Receive _g57
        item = cJSON_GetObjectItemCaseSensitive(root, "_g57");
        if(item != NULL) {
            ${tickdata_name}._g57 = item->valueint;
        }
        // Receive _g57_e1
        item = cJSON_GetObjectItemCaseSensitive(root, "_g57_e1");
        if(item != NULL) {
            ${tickdata_name}._g57_e1 = item->valueint;
        }
        // Receive _g58
        item = cJSON_GetObjectItemCaseSensitive(root, "_g58");
        if(item != NULL) {
            ${tickdata_name}._g58 = item->valueint;
        }
        // Receive _g6
        item = cJSON_GetObjectItemCaseSensitive(root, "_g6");
        if(item != NULL) {
            ${tickdata_name}._g6 = item->valueint;
        }
        // Receive _g60
        item = cJSON_GetObjectItemCaseSensitive(root, "_g60");
        if(item != NULL) {
            ${tickdata_name}._g60 = item->valueint;
        }
        // Receive _g61
        item = cJSON_GetObjectItemCaseSensitive(root, "_g61");
        if(item != NULL) {
            ${tickdata_name}._g61 = item->valueint;
        }
        // Receive _g64
        item = cJSON_GetObjectItemCaseSensitive(root, "_g64");
        if(item != NULL) {
            ${tickdata_name}._g64 = item->valueint;
        }
        // Receive _g65
        item = cJSON_GetObjectItemCaseSensitive(root, "_g65");
        if(item != NULL) {
            ${tickdata_name}._g65 = item->valueint;
        }
        // Receive _g65_e2
        item = cJSON_GetObjectItemCaseSensitive(root, "_g65_e2");
        if(item != NULL) {
            ${tickdata_name}._g65_e2 = item->valueint;
        }
        // Receive _g66
        item = cJSON_GetObjectItemCaseSensitive(root, "_g66");
        if(item != NULL) {
            ${tickdata_name}._g66 = item->valueint;
        }
        // Receive _g68
        item = cJSON_GetObjectItemCaseSensitive(root, "_g68");
        if(item != NULL) {
            ${tickdata_name}._g68 = item->valueint;
        }
        // Receive _g7
        item = cJSON_GetObjectItemCaseSensitive(root, "_g7");
        if(item != NULL) {
            ${tickdata_name}._g7 = item->valueint;
        }
        // Receive _g70
        item = cJSON_GetObjectItemCaseSensitive(root, "_g70");
        if(item != NULL) {
            ${tickdata_name}._g70 = item->valueint;
        }
        // Receive _g71
        item = cJSON_GetObjectItemCaseSensitive(root, "_g71");
        if(item != NULL) {
            ${tickdata_name}._g71 = item->valueint;
        }
        // Receive _g72
        item = cJSON_GetObjectItemCaseSensitive(root, "_g72");
        if(item != NULL) {
            ${tickdata_name}._g72 = item->valueint;
        }
        // Receive _g73
        item = cJSON_GetObjectItemCaseSensitive(root, "_g73");
        if(item != NULL) {
            ${tickdata_name}._g73 = item->valueint;
        }
        // Receive _g73_e1
        item = cJSON_GetObjectItemCaseSensitive(root, "_g73_e1");
        if(item != NULL) {
            ${tickdata_name}._g73_e1 = item->valueint;
        }
        // Receive _g74
        item = cJSON_GetObjectItemCaseSensitive(root, "_g74");
        if(item != NULL) {
            ${tickdata_name}._g74 = item->valueint;
        }
        // Receive _g76
        item = cJSON_GetObjectItemCaseSensitive(root, "_g76");
        if(item != NULL) {
            ${tickdata_name}._g76 = item->valueint;
        }
        // Receive _g77
        item = cJSON_GetObjectItemCaseSensitive(root, "_g77");
        if(item != NULL) {
            ${tickdata_name}._g77 = item->valueint;
        }
        // Receive _g8
        item = cJSON_GetObjectItemCaseSensitive(root, "_g8");
        if(item != NULL) {
            ${tickdata_name}._g8 = item->valueint;
        }
        // Receive _g80
        item = cJSON_GetObjectItemCaseSensitive(root, "_g80");
        if(item != NULL) {
            ${tickdata_name}._g80 = item->valueint;
        }
        // Receive _g81
        item = cJSON_GetObjectItemCaseSensitive(root, "_g81");
        if(item != NULL) {
            ${tickdata_name}._g81 = item->valueint;
        }
        // Receive _g81_e2
        item = cJSON_GetObjectItemCaseSensitive(root, "_g81_e2");
        if(item != NULL) {
            ${tickdata_name}._g81_e2 = item->valueint;
        }
        // Receive _g82
        item = cJSON_GetObjectItemCaseSensitive(root, "_g82");
        if(item != NULL) {
            ${tickdata_name}._g82 = item->valueint;
        }
        // Receive _g84
        item = cJSON_GetObjectItemCaseSensitive(root, "_g84");
        if(item != NULL) {
            ${tickdata_name}._g84 = item->valueint;
        }
        // Receive _g86
        item = cJSON_GetObjectItemCaseSensitive(root, "_g86");
        if(item != NULL) {
            ${tickdata_name}._g86 = item->valueint;
        }
        // Receive _g87
        item = cJSON_GetObjectItemCaseSensitive(root, "_g87");
        if(item != NULL) {
            ${tickdata_name}._g87 = item->valueint;
        }
        // Receive _g88
        item = cJSON_GetObjectItemCaseSensitive(root, "_g88");
        if(item != NULL) {
            ${tickdata_name}._g88 = item->valueint;
        }
        // Receive _g89
        item = cJSON_GetObjectItemCaseSensitive(root, "_g89");
        if(item != NULL) {
            ${tickdata_name}._g89 = item->valueint;
        }
        // Receive _g89_e1
        item = cJSON_GetObjectItemCaseSensitive(root, "_g89_e1");
        if(item != NULL) {
            ${tickdata_name}._g89_e1 = item->valueint;
        }
        // Receive _g9
        item = cJSON_GetObjectItemCaseSensitive(root, "_g9");
        if(item != NULL) {
            ${tickdata_name}._g9 = item->valueint;
        }
        // Receive _g90
        item = cJSON_GetObjectItemCaseSensitive(root, "_g90");
        if(item != NULL) {
            ${tickdata_name}._g90 = item->valueint;
        }
        // Receive _g92
        item = cJSON_GetObjectItemCaseSensitive(root, "_g92");
        if(item != NULL) {
            ${tickdata_name}._g92 = item->valueint;
        }
        // Receive _g93
        item = cJSON_GetObjectItemCaseSensitive(root, "_g93");
        if(item != NULL) {
            ${tickdata_name}._g93 = item->valueint;
        }
        // Receive _g96
        item = cJSON_GetObjectItemCaseSensitive(root, "_g96");
        if(item != NULL) {
            ${tickdata_name}._g96 = item->valueint;
        }
        // Receive _g97
        item = cJSON_GetObjectItemCaseSensitive(root, "_g97");
        if(item != NULL) {
            ${tickdata_name}._g97 = item->valueint;
        }
        // Receive _g97_e2
        item = cJSON_GetObjectItemCaseSensitive(root, "_g97_e2");
        if(item != NULL) {
            ${tickdata_name}._g97_e2 = item->valueint;
        }
        // Receive _g98
        item = cJSON_GetObjectItemCaseSensitive(root, "_g98");
        if(item != NULL) {
            ${tickdata_name}._g98 = item->valueint;
        }
        // Receive _g9_e1
        item = cJSON_GetObjectItemCaseSensitive(root, "_g9_e1");
        if(item != NULL) {
            ${tickdata_name}._g9_e1 = item->valueint;
        }
        // Receive _pg10
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg10");
        if(item != NULL) {
            ${tickdata_name}._pg10 = item->valueint;
        }
        // Receive _pg100
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg100");
        if(item != NULL) {
            ${tickdata_name}._pg100 = item->valueint;
        }
        // Receive _pg106
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg106");
        if(item != NULL) {
            ${tickdata_name}._pg106 = item->valueint;
        }
        // Receive _pg109
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg109");
        if(item != NULL) {
            ${tickdata_name}._pg109 = item->valueint;
        }
        // Receive _pg112
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg112");
        if(item != NULL) {
            ${tickdata_name}._pg112 = item->valueint;
        }
        // Receive _pg116
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg116");
        if(item != NULL) {
            ${tickdata_name}._pg116 = item->valueint;
        }
        // Receive _pg120
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg120");
        if(item != NULL) {
            ${tickdata_name}._pg120 = item->valueint;
        }
        // Receive _pg13
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg13");
        if(item != NULL) {
            ${tickdata_name}._pg13 = item->valueint;
        }
        // Receive _pg154
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg154");
        if(item != NULL) {
            ${tickdata_name}._pg154 = item->valueint;
        }
        // Receive _pg159
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg159");
        if(item != NULL) {
            ${tickdata_name}._pg159 = item->valueint;
        }
        // Receive _pg161
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg161");
        if(item != NULL) {
            ${tickdata_name}._pg161 = item->valueint;
        }
        // Receive _pg166
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg166");
        if(item != NULL) {
            ${tickdata_name}._pg166 = item->valueint;
        }
        // Receive _pg17
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg17");
        if(item != NULL) {
            ${tickdata_name}._pg17 = item->valueint;
        }
        // Receive _pg174
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg174");
        if(item != NULL) {
            ${tickdata_name}._pg174 = item->valueint;
        }
        // Receive _pg177
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg177");
        if(item != NULL) {
            ${tickdata_name}._pg177 = item->valueint;
        }
        // Receive _pg179
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg179");
        if(item != NULL) {
            ${tickdata_name}._pg179 = item->valueint;
        }
        // Receive _pg17_e2
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg17_e2");
        if(item != NULL) {
            ${tickdata_name}._pg17_e2 = item->valueint;
        }
        // Receive _pg18
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg18");
        if(item != NULL) {
            ${tickdata_name}._pg18 = item->valueint;
        }
        // Receive _pg183
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg183");
        if(item != NULL) {
            ${tickdata_name}._pg183 = item->valueint;
        }
        // Receive _pg184
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg184");
        if(item != NULL) {
            ${tickdata_name}._pg184 = item->valueint;
        }
        // Receive _pg185
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg185");
        if(item != NULL) {
            ${tickdata_name}._pg185 = item->valueint;
        }
        // Receive _pg188
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg188");
        if(item != NULL) {
            ${tickdata_name}._pg188 = item->valueint;
        }
        // Receive _pg197
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg197");
        if(item != NULL) {
            ${tickdata_name}._pg197 = item->valueint;
        }
        // Receive _pg20
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg20");
        if(item != NULL) {
            ${tickdata_name}._pg20 = item->valueint;
        }
        // Receive _pg201
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg201");
        if(item != NULL) {
            ${tickdata_name}._pg201 = item->valueint;
        }
        // Receive _pg202
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg202");
        if(item != NULL) {
            ${tickdata_name}._pg202 = item->valueint;
        }
        // Receive _pg29
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg29");
        if(item != NULL) {
            ${tickdata_name}._pg29 = item->valueint;
        }
        // Receive _pg4
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg4");
        if(item != NULL) {
            ${tickdata_name}._pg4 = item->valueint;
        }
        // Receive _pg52
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg52");
        if(item != NULL) {
            ${tickdata_name}._pg52 = item->valueint;
        }
        // Receive _pg58
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg58");
        if(item != NULL) {
            ${tickdata_name}._pg58 = item->valueint;
        }
        // Receive _pg61
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg61");
        if(item != NULL) {
            ${tickdata_name}._pg61 = item->valueint;
        }
        // Receive _pg68
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg68");
        if(item != NULL) {
            ${tickdata_name}._pg68 = item->valueint;
        }
        // Receive _pg73
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg73");
        if(item != NULL) {
            ${tickdata_name}._pg73 = item->valueint;
        }
        // Receive _pg73_e1
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg73_e1");
        if(item != NULL) {
            ${tickdata_name}._pg73_e1 = item->valueint;
        }
        // Receive _pg74
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg74");
        if(item != NULL) {
            ${tickdata_name}._pg74 = item->valueint;
        }
        // Receive _pg77
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg77");
        if(item != NULL) {
            ${tickdata_name}._pg77 = item->valueint;
        }
        // Receive _pg81
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg81");
        if(item != NULL) {
            ${tickdata_name}._pg81 = item->valueint;
        }
        // Receive _pg84
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg84");
        if(item != NULL) {
            ${tickdata_name}._pg84 = item->valueint;
        }
        // Receive _pg9
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg9");
        if(item != NULL) {
            ${tickdata_name}._pg9 = item->valueint;
        }
        // Receive _pg90
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg90");
        if(item != NULL) {
            ${tickdata_name}._pg90 = item->valueint;
        }
        // Receive _pg96
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg96");
        if(item != NULL) {
            ${tickdata_name}._pg96 = item->valueint;
        }
        // Receive _pg98
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg98");
        if(item != NULL) {
            ${tickdata_name}._pg98 = item->valueint;
        }
        // Receive _taken_transitions
        item = cJSON_GetObjectItemCaseSensitive(root, "_taken_transitions");
        if(item != NULL) {
            for (int i0 = 0; i0 < cJSON_GetArraySize(item); i0++) {
                cJSON *item0 = cJSON_GetArrayItem(item, i0);
                ${tickdata_name}._taken_transitions[i0] = item0->valueint;
            }
        }
        // Receive pEW
        item = cJSON_GetObjectItemCaseSensitive(root, "pEW");
        if(item != NULL) {
            ${tickdata_name}.pEW = item->valuedouble;
        }
        // Receive pNS
        item = cJSON_GetObjectItemCaseSensitive(root, "pNS");
        if(item != NULL) {
            ${tickdata_name}.pNS = item->valuedouble;
        }
        // Receive t
        item = cJSON_GetObjectItemCaseSensitive(root, "t");
        if(item != NULL) {
            ${tickdata_name}.t = item->valuedouble;
        }
        // Receive tVehicle
        item = cJSON_GetObjectItemCaseSensitive(root, "tVehicle");
        if(item != NULL) {
            ${tickdata_name}.tVehicle = item->valuedouble;
        }
    }
  
    cJSON_Delete(root);
    free(buffer);
}

void sendVariables(int send_interface) {
    cJSON* root = cJSON_CreateObject();
    cJSON *array;
    
    // Send EW_Vehicle
    cJSON_AddItemToObject(root, "EW_Vehicle", cJSON_CreateBool(${tickdata_name}.EW_Vehicle));
    // Send EWraised
    cJSON_AddItemToObject(root, "EWraised", cJSON_CreateBool(${tickdata_name}.EWraised));
    // Send NS_Vehicle
    cJSON_AddItemToObject(root, "NS_Vehicle", cJSON_CreateBool(${tickdata_name}.NS_Vehicle));
    // Send NSraised
    cJSON_AddItemToObject(root, "NSraised", cJSON_CreateBool(${tickdata_name}.NSraised));
    // Send deltaT
    cJSON_AddItemToObject(root, "deltaT", cJSON_CreateNumber(${tickdata_name}.deltaT));
    // Send t1
    cJSON_AddItemToObject(root, "t1", cJSON_CreateNumber(${tickdata_name}.t1));
    // Send t2
    cJSON_AddItemToObject(root, "t2", cJSON_CreateNumber(${tickdata_name}.t2));
    // Send t3
    cJSON_AddItemToObject(root, "t3", cJSON_CreateNumber(${tickdata_name}.t3));
    // Send t4
    cJSON_AddItemToObject(root, "t4", cJSON_CreateNumber(${tickdata_name}.t4));
    // Send t5
    cJSON_AddItemToObject(root, "t5", cJSON_CreateNumber(${tickdata_name}.t5));
    // Send t6
    cJSON_AddItemToObject(root, "t6", cJSON_CreateNumber(${tickdata_name}.t6));
    // Send tPed
    cJSON_AddItemToObject(root, "tPed", cJSON_CreateNumber(${tickdata_name}.tPed));
    // Send tSnap
    cJSON_AddItemToObject(root, "tSnap", cJSON_CreateNumber(${tickdata_name}.tSnap));
    // Send Camera_activated
    cJSON_AddItemToObject(root, "Camera_activated", cJSON_CreateBool(${tickdata_name}.Camera_activated));
    // Send EW_G
    cJSON_AddItemToObject(root, "EW_G", cJSON_CreateBool(${tickdata_name}.EW_G));
    // Send EW_P
    cJSON_AddItemToObject(root, "EW_P", cJSON_CreateBool(${tickdata_name}.EW_P));
    // Send EW_R
    cJSON_AddItemToObject(root, "EW_R", cJSON_CreateBool(${tickdata_name}.EW_R));
    // Send EW_Vehicle_Leave
    cJSON_AddItemToObject(root, "EW_Vehicle_Leave", cJSON_CreateBool(${tickdata_name}.EW_Vehicle_Leave));
    // Send EW_Vehicle_Snapshot
    cJSON_AddItemToObject(root, "EW_Vehicle_Snapshot", cJSON_CreateBool(${tickdata_name}.EW_Vehicle_Snapshot));
    // Send EW_Y
    cJSON_AddItemToObject(root, "EW_Y", cJSON_CreateBool(${tickdata_name}.EW_Y));
    // Send NS_G
    cJSON_AddItemToObject(root, "NS_G", cJSON_CreateBool(${tickdata_name}.NS_G));
    // Send NS_P
    cJSON_AddItemToObject(root, "NS_P", cJSON_CreateBool(${tickdata_name}.NS_P));
    // Send NS_R
    cJSON_AddItemToObject(root, "NS_R", cJSON_CreateBool(${tickdata_name}.NS_R));
    // Send NS_Vehicle_Leave
    cJSON_AddItemToObject(root, "NS_Vehicle_Leave", cJSON_CreateBool(${tickdata_name}.NS_Vehicle_Leave));
    // Send NS_Vehicle_Snapshot
    cJSON_AddItemToObject(root, "NS_Vehicle_Snapshot", cJSON_CreateBool(${tickdata_name}.NS_Vehicle_Snapshot));
    // Send NS_Y
    cJSON_AddItemToObject(root, "NS_Y", cJSON_CreateBool(${tickdata_name}.NS_Y));
    // Send sleepT
    cJSON_AddItemToObject(root, "sleepT", cJSON_CreateNumber(${tickdata_name}.sleepT));
    // Send #ticktime
    cJSON_AddItemToObject(root, "#ticktime", cJSON_CreateNumber(_ticktime));
    // Send EWrequest
    cJSON_AddItemToObject(root, "EWrequest", cJSON_CreateBool(${tickdata_name}.EWrequest));
    // Send EWserve
    cJSON_AddItemToObject(root, "EWserve", cJSON_CreateBool(${tickdata_name}.EWserve));
    // Send NSrequest
    cJSON_AddItemToObject(root, "NSrequest", cJSON_CreateBool(${tickdata_name}.NSrequest));
    // Send NSserve
    cJSON_AddItemToObject(root, "NSserve", cJSON_CreateBool(${tickdata_name}.NSserve));
    // Send _Atrig
    cJSON_AddItemToObject(root, "_Atrig", cJSON_CreateBool(${tickdata_name}._Atrig));
    // Send _Atrig1
    cJSON_AddItemToObject(root, "_Atrig1", cJSON_CreateBool(${tickdata_name}._Atrig1));
    // Send _Atrig10
    cJSON_AddItemToObject(root, "_Atrig10", cJSON_CreateBool(${tickdata_name}._Atrig10));
    // Send _Atrig11
    cJSON_AddItemToObject(root, "_Atrig11", cJSON_CreateBool(${tickdata_name}._Atrig11));
    // Send _Atrig2
    cJSON_AddItemToObject(root, "_Atrig2", cJSON_CreateBool(${tickdata_name}._Atrig2));
    // Send _Atrig3
    cJSON_AddItemToObject(root, "_Atrig3", cJSON_CreateBool(${tickdata_name}._Atrig3));
    // Send _Atrig4
    cJSON_AddItemToObject(root, "_Atrig4", cJSON_CreateBool(${tickdata_name}._Atrig4));
    // Send _Atrig5
    cJSON_AddItemToObject(root, "_Atrig5", cJSON_CreateBool(${tickdata_name}._Atrig5));
    // Send _Atrig6
    cJSON_AddItemToObject(root, "_Atrig6", cJSON_CreateBool(${tickdata_name}._Atrig6));
    // Send _Atrig7
    cJSON_AddItemToObject(root, "_Atrig7", cJSON_CreateBool(${tickdata_name}._Atrig7));
    // Send _Atrig8
    cJSON_AddItemToObject(root, "_Atrig8", cJSON_CreateBool(${tickdata_name}._Atrig8));
    // Send _Atrig9
    cJSON_AddItemToObject(root, "_Atrig9", cJSON_CreateBool(${tickdata_name}._Atrig9));
    // Send _GO
    cJSON_AddItemToObject(root, "_GO", cJSON_CreateBool(${tickdata_name}._GO));
    // Send _TERM
    cJSON_AddItemToObject(root, "_TERM", cJSON_CreateBool(${tickdata_name}._TERM));
    // Send _cg10
    cJSON_AddItemToObject(root, "_cg10", cJSON_CreateBool(${tickdata_name}._cg10));
    // Send _cg100
    cJSON_AddItemToObject(root, "_cg100", cJSON_CreateBool(${tickdata_name}._cg100));
    // Send _cg103
    cJSON_AddItemToObject(root, "_cg103", cJSON_CreateBool(${tickdata_name}._cg103));
    // Send _cg104
    cJSON_AddItemToObject(root, "_cg104", cJSON_CreateBool(${tickdata_name}._cg104));
    // Send _cg106
    cJSON_AddItemToObject(root, "_cg106", cJSON_CreateBool(${tickdata_name}._cg106));
    // Send _cg109
    cJSON_AddItemToObject(root, "_cg109", cJSON_CreateBool(${tickdata_name}._cg109));
    // Send _cg112
    cJSON_AddItemToObject(root, "_cg112", cJSON_CreateBool(${tickdata_name}._cg112));
    // Send _cg115
    cJSON_AddItemToObject(root, "_cg115", cJSON_CreateBool(${tickdata_name}._cg115));
    // Send _cg116
    cJSON_AddItemToObject(root, "_cg116", cJSON_CreateBool(${tickdata_name}._cg116));
    // Send _cg119
    cJSON_AddItemToObject(root, "_cg119", cJSON_CreateBool(${tickdata_name}._cg119));
    // Send _cg120
    cJSON_AddItemToObject(root, "_cg120", cJSON_CreateBool(${tickdata_name}._cg120));
    // Send _cg122
    cJSON_AddItemToObject(root, "_cg122", cJSON_CreateBool(${tickdata_name}._cg122));
    // Send _cg125
    cJSON_AddItemToObject(root, "_cg125", cJSON_CreateBool(${tickdata_name}._cg125));
    // Send _cg128
    cJSON_AddItemToObject(root, "_cg128", cJSON_CreateBool(${tickdata_name}._cg128));
    // Send _cg13
    cJSON_AddItemToObject(root, "_cg13", cJSON_CreateBool(${tickdata_name}._cg13));
    // Send _cg134
    cJSON_AddItemToObject(root, "_cg134", cJSON_CreateBool(${tickdata_name}._cg134));
    // Send _cg137
    cJSON_AddItemToObject(root, "_cg137", cJSON_CreateBool(${tickdata_name}._cg137));
    // Send _cg142
    cJSON_AddItemToObject(root, "_cg142", cJSON_CreateBool(${tickdata_name}._cg142));
    // Send _cg145
    cJSON_AddItemToObject(root, "_cg145", cJSON_CreateBool(${tickdata_name}._cg145));
    // Send _cg151
    cJSON_AddItemToObject(root, "_cg151", cJSON_CreateBool(${tickdata_name}._cg151));
    // Send _cg154
    cJSON_AddItemToObject(root, "_cg154", cJSON_CreateBool(${tickdata_name}._cg154));
    // Send _cg155
    cJSON_AddItemToObject(root, "_cg155", cJSON_CreateBool(${tickdata_name}._cg155));
    // Send _cg159
    cJSON_AddItemToObject(root, "_cg159", cJSON_CreateBool(${tickdata_name}._cg159));
    // Send _cg16
    cJSON_AddItemToObject(root, "_cg16", cJSON_CreateBool(${tickdata_name}._cg16));
    // Send _cg164
    cJSON_AddItemToObject(root, "_cg164", cJSON_CreateBool(${tickdata_name}._cg164));
    // Send _cg167
    cJSON_AddItemToObject(root, "_cg167", cJSON_CreateBool(${tickdata_name}._cg167));
    // Send _cg169
    cJSON_AddItemToObject(root, "_cg169", cJSON_CreateBool(${tickdata_name}._cg169));
    // Send _cg173
    cJSON_AddItemToObject(root, "_cg173", cJSON_CreateBool(${tickdata_name}._cg173));
    // Send _cg179
    cJSON_AddItemToObject(root, "_cg179", cJSON_CreateBool(${tickdata_name}._cg179));
    // Send _cg182
    cJSON_AddItemToObject(root, "_cg182", cJSON_CreateBool(${tickdata_name}._cg182));
    // Send _cg183
    cJSON_AddItemToObject(root, "_cg183", cJSON_CreateBool(${tickdata_name}._cg183));
    // Send _cg187
    cJSON_AddItemToObject(root, "_cg187", cJSON_CreateBool(${tickdata_name}._cg187));
    // Send _cg19
    cJSON_AddItemToObject(root, "_cg19", cJSON_CreateBool(${tickdata_name}._cg19));
    // Send _cg192
    cJSON_AddItemToObject(root, "_cg192", cJSON_CreateBool(${tickdata_name}._cg192));
    // Send _cg195
    cJSON_AddItemToObject(root, "_cg195", cJSON_CreateBool(${tickdata_name}._cg195));
    // Send _cg197
    cJSON_AddItemToObject(root, "_cg197", cJSON_CreateBool(${tickdata_name}._cg197));
    // Send _cg20
    cJSON_AddItemToObject(root, "_cg20", cJSON_CreateBool(${tickdata_name}._cg20));
    // Send _cg201
    cJSON_AddItemToObject(root, "_cg201", cJSON_CreateBool(${tickdata_name}._cg201));
    // Send _cg23
    cJSON_AddItemToObject(root, "_cg23", cJSON_CreateBool(${tickdata_name}._cg23));
    // Send _cg24
    cJSON_AddItemToObject(root, "_cg24", cJSON_CreateBool(${tickdata_name}._cg24));
    // Send _cg26
    cJSON_AddItemToObject(root, "_cg26", cJSON_CreateBool(${tickdata_name}._cg26));
    // Send _cg29
    cJSON_AddItemToObject(root, "_cg29", cJSON_CreateBool(${tickdata_name}._cg29));
    // Send _cg3
    cJSON_AddItemToObject(root, "_cg3", cJSON_CreateBool(${tickdata_name}._cg3));
    // Send _cg32
    cJSON_AddItemToObject(root, "_cg32", cJSON_CreateBool(${tickdata_name}._cg32));
    // Send _cg35
    cJSON_AddItemToObject(root, "_cg35", cJSON_CreateBool(${tickdata_name}._cg35));
    // Send _cg36
    cJSON_AddItemToObject(root, "_cg36", cJSON_CreateBool(${tickdata_name}._cg36));
    // Send _cg39
    cJSON_AddItemToObject(root, "_cg39", cJSON_CreateBool(${tickdata_name}._cg39));
    // Send _cg4
    cJSON_AddItemToObject(root, "_cg4", cJSON_CreateBool(${tickdata_name}._cg4));
    // Send _cg40
    cJSON_AddItemToObject(root, "_cg40", cJSON_CreateBool(${tickdata_name}._cg40));
    // Send _cg42
    cJSON_AddItemToObject(root, "_cg42", cJSON_CreateBool(${tickdata_name}._cg42));
    // Send _cg45
    cJSON_AddItemToObject(root, "_cg45", cJSON_CreateBool(${tickdata_name}._cg45));
    // Send _cg48
    cJSON_AddItemToObject(root, "_cg48", cJSON_CreateBool(${tickdata_name}._cg48));
    // Send _cg51
    cJSON_AddItemToObject(root, "_cg51", cJSON_CreateBool(${tickdata_name}._cg51));
    // Send _cg52
    cJSON_AddItemToObject(root, "_cg52", cJSON_CreateBool(${tickdata_name}._cg52));
    // Send _cg55
    cJSON_AddItemToObject(root, "_cg55", cJSON_CreateBool(${tickdata_name}._cg55));
    // Send _cg56
    cJSON_AddItemToObject(root, "_cg56", cJSON_CreateBool(${tickdata_name}._cg56));
    // Send _cg58
    cJSON_AddItemToObject(root, "_cg58", cJSON_CreateBool(${tickdata_name}._cg58));
    // Send _cg61
    cJSON_AddItemToObject(root, "_cg61", cJSON_CreateBool(${tickdata_name}._cg61));
    // Send _cg64
    cJSON_AddItemToObject(root, "_cg64", cJSON_CreateBool(${tickdata_name}._cg64));
    // Send _cg67
    cJSON_AddItemToObject(root, "_cg67", cJSON_CreateBool(${tickdata_name}._cg67));
    // Send _cg68
    cJSON_AddItemToObject(root, "_cg68", cJSON_CreateBool(${tickdata_name}._cg68));
    // Send _cg7
    cJSON_AddItemToObject(root, "_cg7", cJSON_CreateBool(${tickdata_name}._cg7));
    // Send _cg71
    cJSON_AddItemToObject(root, "_cg71", cJSON_CreateBool(${tickdata_name}._cg71));
    // Send _cg72
    cJSON_AddItemToObject(root, "_cg72", cJSON_CreateBool(${tickdata_name}._cg72));
    // Send _cg74
    cJSON_AddItemToObject(root, "_cg74", cJSON_CreateBool(${tickdata_name}._cg74));
    // Send _cg77
    cJSON_AddItemToObject(root, "_cg77", cJSON_CreateBool(${tickdata_name}._cg77));
    // Send _cg8
    cJSON_AddItemToObject(root, "_cg8", cJSON_CreateBool(${tickdata_name}._cg8));
    // Send _cg80
    cJSON_AddItemToObject(root, "_cg80", cJSON_CreateBool(${tickdata_name}._cg80));
    // Send _cg83
    cJSON_AddItemToObject(root, "_cg83", cJSON_CreateBool(${tickdata_name}._cg83));
    // Send _cg84
    cJSON_AddItemToObject(root, "_cg84", cJSON_CreateBool(${tickdata_name}._cg84));
    // Send _cg87
    cJSON_AddItemToObject(root, "_cg87", cJSON_CreateBool(${tickdata_name}._cg87));
    // Send _cg88
    cJSON_AddItemToObject(root, "_cg88", cJSON_CreateBool(${tickdata_name}._cg88));
    // Send _cg90
    cJSON_AddItemToObject(root, "_cg90", cJSON_CreateBool(${tickdata_name}._cg90));
    // Send _cg93
    cJSON_AddItemToObject(root, "_cg93", cJSON_CreateBool(${tickdata_name}._cg93));
    // Send _cg96
    cJSON_AddItemToObject(root, "_cg96", cJSON_CreateBool(${tickdata_name}._cg96));
    // Send _cg99
    cJSON_AddItemToObject(root, "_cg99", cJSON_CreateBool(${tickdata_name}._cg99));
    // Send _g10
    cJSON_AddItemToObject(root, "_g10", cJSON_CreateBool(${tickdata_name}._g10));
    // Send _g100
    cJSON_AddItemToObject(root, "_g100", cJSON_CreateBool(${tickdata_name}._g100));
    // Send _g102
    cJSON_AddItemToObject(root, "_g102", cJSON_CreateBool(${tickdata_name}._g102));
    // Send _g103
    cJSON_AddItemToObject(root, "_g103", cJSON_CreateBool(${tickdata_name}._g103));
    // Send _g104
    cJSON_AddItemToObject(root, "_g104", cJSON_CreateBool(${tickdata_name}._g104));
    // Send _g105
    cJSON_AddItemToObject(root, "_g105", cJSON_CreateBool(${tickdata_name}._g105));
    // Send _g105_e1
    cJSON_AddItemToObject(root, "_g105_e1", cJSON_CreateBool(${tickdata_name}._g105_e1));
    // Send _g106
    cJSON_AddItemToObject(root, "_g106", cJSON_CreateBool(${tickdata_name}._g106));
    // Send _g108
    cJSON_AddItemToObject(root, "_g108", cJSON_CreateBool(${tickdata_name}._g108));
    // Send _g109
    cJSON_AddItemToObject(root, "_g109", cJSON_CreateBool(${tickdata_name}._g109));
    // Send _g112
    cJSON_AddItemToObject(root, "_g112", cJSON_CreateBool(${tickdata_name}._g112));
    // Send _g113
    cJSON_AddItemToObject(root, "_g113", cJSON_CreateBool(${tickdata_name}._g113));
    // Send _g113_e2
    cJSON_AddItemToObject(root, "_g113_e2", cJSON_CreateBool(${tickdata_name}._g113_e2));
    // Send _g114
    cJSON_AddItemToObject(root, "_g114", cJSON_CreateBool(${tickdata_name}._g114));
    // Send _g116
    cJSON_AddItemToObject(root, "_g116", cJSON_CreateBool(${tickdata_name}._g116));
    // Send _g118
    cJSON_AddItemToObject(root, "_g118", cJSON_CreateBool(${tickdata_name}._g118));
    // Send _g119
    cJSON_AddItemToObject(root, "_g119", cJSON_CreateBool(${tickdata_name}._g119));
    // Send _g12
    cJSON_AddItemToObject(root, "_g12", cJSON_CreateBool(${tickdata_name}._g12));
    // Send _g120
    cJSON_AddItemToObject(root, "_g120", cJSON_CreateBool(${tickdata_name}._g120));
    // Send _g121
    cJSON_AddItemToObject(root, "_g121", cJSON_CreateBool(${tickdata_name}._g121));
    // Send _g121_e1
    cJSON_AddItemToObject(root, "_g121_e1", cJSON_CreateBool(${tickdata_name}._g121_e1));
    // Send _g122
    cJSON_AddItemToObject(root, "_g122", cJSON_CreateBool(${tickdata_name}._g122));
    // Send _g124
    cJSON_AddItemToObject(root, "_g124", cJSON_CreateBool(${tickdata_name}._g124));
    // Send _g125
    cJSON_AddItemToObject(root, "_g125", cJSON_CreateBool(${tickdata_name}._g125));
    // Send _g128
    cJSON_AddItemToObject(root, "_g128", cJSON_CreateBool(${tickdata_name}._g128));
    // Send _g129
    cJSON_AddItemToObject(root, "_g129", cJSON_CreateBool(${tickdata_name}._g129));
    // Send _g129_e2
    cJSON_AddItemToObject(root, "_g129_e2", cJSON_CreateBool(${tickdata_name}._g129_e2));
    // Send _g13
    cJSON_AddItemToObject(root, "_g13", cJSON_CreateBool(${tickdata_name}._g13));
    // Send _g130
    cJSON_AddItemToObject(root, "_g130", cJSON_CreateBool(${tickdata_name}._g130));
    // Send _g134
    cJSON_AddItemToObject(root, "_g134", cJSON_CreateBool(${tickdata_name}._g134));
    // Send _g135
    cJSON_AddItemToObject(root, "_g135", cJSON_CreateBool(${tickdata_name}._g135));
    // Send _g137
    cJSON_AddItemToObject(root, "_g137", cJSON_CreateBool(${tickdata_name}._g137));
    // Send _g138
    cJSON_AddItemToObject(root, "_g138", cJSON_CreateBool(${tickdata_name}._g138));
    // Send _g142
    cJSON_AddItemToObject(root, "_g142", cJSON_CreateBool(${tickdata_name}._g142));
    // Send _g143
    cJSON_AddItemToObject(root, "_g143", cJSON_CreateBool(${tickdata_name}._g143));
    // Send _g145
    cJSON_AddItemToObject(root, "_g145", cJSON_CreateBool(${tickdata_name}._g145));
    // Send _g146
    cJSON_AddItemToObject(root, "_g146", cJSON_CreateBool(${tickdata_name}._g146));
    // Send _g149
    cJSON_AddItemToObject(root, "_g149", cJSON_CreateBool(${tickdata_name}._g149));
    // Send _g151
    cJSON_AddItemToObject(root, "_g151", cJSON_CreateBool(${tickdata_name}._g151));
    // Send _g152
    cJSON_AddItemToObject(root, "_g152", cJSON_CreateBool(${tickdata_name}._g152));
    // Send _g154
    cJSON_AddItemToObject(root, "_g154", cJSON_CreateBool(${tickdata_name}._g154));
    // Send _g155
    cJSON_AddItemToObject(root, "_g155", cJSON_CreateBool(${tickdata_name}._g155));
    // Send _g156
    cJSON_AddItemToObject(root, "_g156", cJSON_CreateBool(${tickdata_name}._g156));
    // Send _g156_e1
    cJSON_AddItemToObject(root, "_g156_e1", cJSON_CreateBool(${tickdata_name}._g156_e1));
    // Send _g158
    cJSON_AddItemToObject(root, "_g158", cJSON_CreateBool(${tickdata_name}._g158));
    // Send _g159
    cJSON_AddItemToObject(root, "_g159", cJSON_CreateBool(${tickdata_name}._g159));
    // Send _g16
    cJSON_AddItemToObject(root, "_g16", cJSON_CreateBool(${tickdata_name}._g16));
    // Send _g161
    cJSON_AddItemToObject(root, "_g161", cJSON_CreateBool(${tickdata_name}._g161));
    // Send _g164
    cJSON_AddItemToObject(root, "_g164", cJSON_CreateBool(${tickdata_name}._g164));
    // Send _g165
    cJSON_AddItemToObject(root, "_g165", cJSON_CreateBool(${tickdata_name}._g165));
    // Send _g166
    cJSON_AddItemToObject(root, "_g166", cJSON_CreateBool(${tickdata_name}._g166));
    // Send _g166_e2
    cJSON_AddItemToObject(root, "_g166_e2", cJSON_CreateBool(${tickdata_name}._g166_e2));
    // Send _g167
    cJSON_AddItemToObject(root, "_g167", cJSON_CreateBool(${tickdata_name}._g167));
    // Send _g168
    cJSON_AddItemToObject(root, "_g168", cJSON_CreateBool(${tickdata_name}._g168));
    // Send _g169
    cJSON_AddItemToObject(root, "_g169", cJSON_CreateBool(${tickdata_name}._g169));
    // Send _g17
    cJSON_AddItemToObject(root, "_g17", cJSON_CreateBool(${tickdata_name}._g17));
    // Send _g170
    cJSON_AddItemToObject(root, "_g170", cJSON_CreateBool(${tickdata_name}._g170));
    // Send _g171
    cJSON_AddItemToObject(root, "_g171", cJSON_CreateBool(${tickdata_name}._g171));
    // Send _g173
    cJSON_AddItemToObject(root, "_g173", cJSON_CreateBool(${tickdata_name}._g173));
    // Send _g174
    cJSON_AddItemToObject(root, "_g174", cJSON_CreateBool(${tickdata_name}._g174));
    // Send _g177
    cJSON_AddItemToObject(root, "_g177", cJSON_CreateBool(${tickdata_name}._g177));
    // Send _g179
    cJSON_AddItemToObject(root, "_g179", cJSON_CreateBool(${tickdata_name}._g179));
    // Send _g17_e2
    cJSON_AddItemToObject(root, "_g17_e2", cJSON_CreateBool(${tickdata_name}._g17_e2));
    // Send _g18
    cJSON_AddItemToObject(root, "_g18", cJSON_CreateBool(${tickdata_name}._g18));
    // Send _g180
    cJSON_AddItemToObject(root, "_g180", cJSON_CreateBool(${tickdata_name}._g180));
    // Send _g182
    cJSON_AddItemToObject(root, "_g182", cJSON_CreateBool(${tickdata_name}._g182));
    // Send _g183
    cJSON_AddItemToObject(root, "_g183", cJSON_CreateBool(${tickdata_name}._g183));
    // Send _g184
    cJSON_AddItemToObject(root, "_g184", cJSON_CreateBool(${tickdata_name}._g184));
    // Send _g184_e1
    cJSON_AddItemToObject(root, "_g184_e1", cJSON_CreateBool(${tickdata_name}._g184_e1));
    // Send _g185
    cJSON_AddItemToObject(root, "_g185", cJSON_CreateBool(${tickdata_name}._g185));
    // Send _g186
    cJSON_AddItemToObject(root, "_g186", cJSON_CreateBool(${tickdata_name}._g186));
    // Send _g187
    cJSON_AddItemToObject(root, "_g187", cJSON_CreateBool(${tickdata_name}._g187));
    // Send _g188
    cJSON_AddItemToObject(root, "_g188", cJSON_CreateBool(${tickdata_name}._g188));
    // Send _g189
    cJSON_AddItemToObject(root, "_g189", cJSON_CreateBool(${tickdata_name}._g189));
    // Send _g192
    cJSON_AddItemToObject(root, "_g192", cJSON_CreateBool(${tickdata_name}._g192));
    // Send _g193
    cJSON_AddItemToObject(root, "_g193", cJSON_CreateBool(${tickdata_name}._g193));
    // Send _g194
    cJSON_AddItemToObject(root, "_g194", cJSON_CreateBool(${tickdata_name}._g194));
    // Send _g194_e2
    cJSON_AddItemToObject(root, "_g194_e2", cJSON_CreateBool(${tickdata_name}._g194_e2));
    // Send _g195
    cJSON_AddItemToObject(root, "_g195", cJSON_CreateBool(${tickdata_name}._g195));
    // Send _g196
    cJSON_AddItemToObject(root, "_g196", cJSON_CreateBool(${tickdata_name}._g196));
    // Send _g197
    cJSON_AddItemToObject(root, "_g197", cJSON_CreateBool(${tickdata_name}._g197));
    // Send _g198
    cJSON_AddItemToObject(root, "_g198", cJSON_CreateBool(${tickdata_name}._g198));
    // Send _g2
    cJSON_AddItemToObject(root, "_g2", cJSON_CreateBool(${tickdata_name}._g2));
    // Send _g20
    cJSON_AddItemToObject(root, "_g20", cJSON_CreateBool(${tickdata_name}._g20));
    // Send _g201
    cJSON_AddItemToObject(root, "_g201", cJSON_CreateBool(${tickdata_name}._g201));
    // Send _g202
    cJSON_AddItemToObject(root, "_g202", cJSON_CreateBool(${tickdata_name}._g202));
    // Send _g210
    cJSON_AddItemToObject(root, "_g210", cJSON_CreateBool(${tickdata_name}._g210));
    // Send _g22
    cJSON_AddItemToObject(root, "_g22", cJSON_CreateBool(${tickdata_name}._g22));
    // Send _g23
    cJSON_AddItemToObject(root, "_g23", cJSON_CreateBool(${tickdata_name}._g23));
    // Send _g24
    cJSON_AddItemToObject(root, "_g24", cJSON_CreateBool(${tickdata_name}._g24));
    // Send _g25
    cJSON_AddItemToObject(root, "_g25", cJSON_CreateBool(${tickdata_name}._g25));
    // Send _g25_e1
    cJSON_AddItemToObject(root, "_g25_e1", cJSON_CreateBool(${tickdata_name}._g25_e1));
    // Send _g26
    cJSON_AddItemToObject(root, "_g26", cJSON_CreateBool(${tickdata_name}._g26));
    // Send _g28
    cJSON_AddItemToObject(root, "_g28", cJSON_CreateBool(${tickdata_name}._g28));
    // Send _g29
    cJSON_AddItemToObject(root, "_g29", cJSON_CreateBool(${tickdata_name}._g29));
    // Send _g32
    cJSON_AddItemToObject(root, "_g32", cJSON_CreateBool(${tickdata_name}._g32));
    // Send _g33
    cJSON_AddItemToObject(root, "_g33", cJSON_CreateBool(${tickdata_name}._g33));
    // Send _g33_e2
    cJSON_AddItemToObject(root, "_g33_e2", cJSON_CreateBool(${tickdata_name}._g33_e2));
    // Send _g34
    cJSON_AddItemToObject(root, "_g34", cJSON_CreateBool(${tickdata_name}._g34));
    // Send _g36
    cJSON_AddItemToObject(root, "_g36", cJSON_CreateBool(${tickdata_name}._g36));
    // Send _g38
    cJSON_AddItemToObject(root, "_g38", cJSON_CreateBool(${tickdata_name}._g38));
    // Send _g39
    cJSON_AddItemToObject(root, "_g39", cJSON_CreateBool(${tickdata_name}._g39));
    // Send _g4
    cJSON_AddItemToObject(root, "_g4", cJSON_CreateBool(${tickdata_name}._g4));
    // Send _g40
    cJSON_AddItemToObject(root, "_g40", cJSON_CreateBool(${tickdata_name}._g40));
    // Send _g41
    cJSON_AddItemToObject(root, "_g41", cJSON_CreateBool(${tickdata_name}._g41));
    // Send _g41_e1
    cJSON_AddItemToObject(root, "_g41_e1", cJSON_CreateBool(${tickdata_name}._g41_e1));
    // Send _g42
    cJSON_AddItemToObject(root, "_g42", cJSON_CreateBool(${tickdata_name}._g42));
    // Send _g44
    cJSON_AddItemToObject(root, "_g44", cJSON_CreateBool(${tickdata_name}._g44));
    // Send _g45
    cJSON_AddItemToObject(root, "_g45", cJSON_CreateBool(${tickdata_name}._g45));
    // Send _g48
    cJSON_AddItemToObject(root, "_g48", cJSON_CreateBool(${tickdata_name}._g48));
    // Send _g49
    cJSON_AddItemToObject(root, "_g49", cJSON_CreateBool(${tickdata_name}._g49));
    // Send _g49_e2
    cJSON_AddItemToObject(root, "_g49_e2", cJSON_CreateBool(${tickdata_name}._g49_e2));
    // Send _g50
    cJSON_AddItemToObject(root, "_g50", cJSON_CreateBool(${tickdata_name}._g50));
    // Send _g52
    cJSON_AddItemToObject(root, "_g52", cJSON_CreateBool(${tickdata_name}._g52));
    // Send _g54
    cJSON_AddItemToObject(root, "_g54", cJSON_CreateBool(${tickdata_name}._g54));
    // Send _g55
    cJSON_AddItemToObject(root, "_g55", cJSON_CreateBool(${tickdata_name}._g55));
    // Send _g56
    cJSON_AddItemToObject(root, "_g56", cJSON_CreateBool(${tickdata_name}._g56));
    // Send _g57
    cJSON_AddItemToObject(root, "_g57", cJSON_CreateBool(${tickdata_name}._g57));
    // Send _g57_e1
    cJSON_AddItemToObject(root, "_g57_e1", cJSON_CreateBool(${tickdata_name}._g57_e1));
    // Send _g58
    cJSON_AddItemToObject(root, "_g58", cJSON_CreateBool(${tickdata_name}._g58));
    // Send _g6
    cJSON_AddItemToObject(root, "_g6", cJSON_CreateBool(${tickdata_name}._g6));
    // Send _g60
    cJSON_AddItemToObject(root, "_g60", cJSON_CreateBool(${tickdata_name}._g60));
    // Send _g61
    cJSON_AddItemToObject(root, "_g61", cJSON_CreateBool(${tickdata_name}._g61));
    // Send _g64
    cJSON_AddItemToObject(root, "_g64", cJSON_CreateBool(${tickdata_name}._g64));
    // Send _g65
    cJSON_AddItemToObject(root, "_g65", cJSON_CreateBool(${tickdata_name}._g65));
    // Send _g65_e2
    cJSON_AddItemToObject(root, "_g65_e2", cJSON_CreateBool(${tickdata_name}._g65_e2));
    // Send _g66
    cJSON_AddItemToObject(root, "_g66", cJSON_CreateBool(${tickdata_name}._g66));
    // Send _g68
    cJSON_AddItemToObject(root, "_g68", cJSON_CreateBool(${tickdata_name}._g68));
    // Send _g7
    cJSON_AddItemToObject(root, "_g7", cJSON_CreateBool(${tickdata_name}._g7));
    // Send _g70
    cJSON_AddItemToObject(root, "_g70", cJSON_CreateBool(${tickdata_name}._g70));
    // Send _g71
    cJSON_AddItemToObject(root, "_g71", cJSON_CreateBool(${tickdata_name}._g71));
    // Send _g72
    cJSON_AddItemToObject(root, "_g72", cJSON_CreateBool(${tickdata_name}._g72));
    // Send _g73
    cJSON_AddItemToObject(root, "_g73", cJSON_CreateBool(${tickdata_name}._g73));
    // Send _g73_e1
    cJSON_AddItemToObject(root, "_g73_e1", cJSON_CreateBool(${tickdata_name}._g73_e1));
    // Send _g74
    cJSON_AddItemToObject(root, "_g74", cJSON_CreateBool(${tickdata_name}._g74));
    // Send _g76
    cJSON_AddItemToObject(root, "_g76", cJSON_CreateBool(${tickdata_name}._g76));
    // Send _g77
    cJSON_AddItemToObject(root, "_g77", cJSON_CreateBool(${tickdata_name}._g77));
    // Send _g8
    cJSON_AddItemToObject(root, "_g8", cJSON_CreateBool(${tickdata_name}._g8));
    // Send _g80
    cJSON_AddItemToObject(root, "_g80", cJSON_CreateBool(${tickdata_name}._g80));
    // Send _g81
    cJSON_AddItemToObject(root, "_g81", cJSON_CreateBool(${tickdata_name}._g81));
    // Send _g81_e2
    cJSON_AddItemToObject(root, "_g81_e2", cJSON_CreateBool(${tickdata_name}._g81_e2));
    // Send _g82
    cJSON_AddItemToObject(root, "_g82", cJSON_CreateBool(${tickdata_name}._g82));
    // Send _g84
    cJSON_AddItemToObject(root, "_g84", cJSON_CreateBool(${tickdata_name}._g84));
    // Send _g86
    cJSON_AddItemToObject(root, "_g86", cJSON_CreateBool(${tickdata_name}._g86));
    // Send _g87
    cJSON_AddItemToObject(root, "_g87", cJSON_CreateBool(${tickdata_name}._g87));
    // Send _g88
    cJSON_AddItemToObject(root, "_g88", cJSON_CreateBool(${tickdata_name}._g88));
    // Send _g89
    cJSON_AddItemToObject(root, "_g89", cJSON_CreateBool(${tickdata_name}._g89));
    // Send _g89_e1
    cJSON_AddItemToObject(root, "_g89_e1", cJSON_CreateBool(${tickdata_name}._g89_e1));
    // Send _g9
    cJSON_AddItemToObject(root, "_g9", cJSON_CreateBool(${tickdata_name}._g9));
    // Send _g90
    cJSON_AddItemToObject(root, "_g90", cJSON_CreateBool(${tickdata_name}._g90));
    // Send _g92
    cJSON_AddItemToObject(root, "_g92", cJSON_CreateBool(${tickdata_name}._g92));
    // Send _g93
    cJSON_AddItemToObject(root, "_g93", cJSON_CreateBool(${tickdata_name}._g93));
    // Send _g96
    cJSON_AddItemToObject(root, "_g96", cJSON_CreateBool(${tickdata_name}._g96));
    // Send _g97
    cJSON_AddItemToObject(root, "_g97", cJSON_CreateBool(${tickdata_name}._g97));
    // Send _g97_e2
    cJSON_AddItemToObject(root, "_g97_e2", cJSON_CreateBool(${tickdata_name}._g97_e2));
    // Send _g98
    cJSON_AddItemToObject(root, "_g98", cJSON_CreateBool(${tickdata_name}._g98));
    // Send _g9_e1
    cJSON_AddItemToObject(root, "_g9_e1", cJSON_CreateBool(${tickdata_name}._g9_e1));
    // Send _pg10
    cJSON_AddItemToObject(root, "_pg10", cJSON_CreateBool(${tickdata_name}._pg10));
    // Send _pg100
    cJSON_AddItemToObject(root, "_pg100", cJSON_CreateBool(${tickdata_name}._pg100));
    // Send _pg106
    cJSON_AddItemToObject(root, "_pg106", cJSON_CreateBool(${tickdata_name}._pg106));
    // Send _pg109
    cJSON_AddItemToObject(root, "_pg109", cJSON_CreateBool(${tickdata_name}._pg109));
    // Send _pg112
    cJSON_AddItemToObject(root, "_pg112", cJSON_CreateBool(${tickdata_name}._pg112));
    // Send _pg116
    cJSON_AddItemToObject(root, "_pg116", cJSON_CreateBool(${tickdata_name}._pg116));
    // Send _pg120
    cJSON_AddItemToObject(root, "_pg120", cJSON_CreateBool(${tickdata_name}._pg120));
    // Send _pg13
    cJSON_AddItemToObject(root, "_pg13", cJSON_CreateBool(${tickdata_name}._pg13));
    // Send _pg154
    cJSON_AddItemToObject(root, "_pg154", cJSON_CreateBool(${tickdata_name}._pg154));
    // Send _pg159
    cJSON_AddItemToObject(root, "_pg159", cJSON_CreateBool(${tickdata_name}._pg159));
    // Send _pg161
    cJSON_AddItemToObject(root, "_pg161", cJSON_CreateBool(${tickdata_name}._pg161));
    // Send _pg166
    cJSON_AddItemToObject(root, "_pg166", cJSON_CreateBool(${tickdata_name}._pg166));
    // Send _pg17
    cJSON_AddItemToObject(root, "_pg17", cJSON_CreateBool(${tickdata_name}._pg17));
    // Send _pg174
    cJSON_AddItemToObject(root, "_pg174", cJSON_CreateBool(${tickdata_name}._pg174));
    // Send _pg177
    cJSON_AddItemToObject(root, "_pg177", cJSON_CreateBool(${tickdata_name}._pg177));
    // Send _pg179
    cJSON_AddItemToObject(root, "_pg179", cJSON_CreateBool(${tickdata_name}._pg179));
    // Send _pg17_e2
    cJSON_AddItemToObject(root, "_pg17_e2", cJSON_CreateBool(${tickdata_name}._pg17_e2));
    // Send _pg18
    cJSON_AddItemToObject(root, "_pg18", cJSON_CreateBool(${tickdata_name}._pg18));
    // Send _pg183
    cJSON_AddItemToObject(root, "_pg183", cJSON_CreateBool(${tickdata_name}._pg183));
    // Send _pg184
    cJSON_AddItemToObject(root, "_pg184", cJSON_CreateBool(${tickdata_name}._pg184));
    // Send _pg185
    cJSON_AddItemToObject(root, "_pg185", cJSON_CreateBool(${tickdata_name}._pg185));
    // Send _pg188
    cJSON_AddItemToObject(root, "_pg188", cJSON_CreateBool(${tickdata_name}._pg188));
    // Send _pg197
    cJSON_AddItemToObject(root, "_pg197", cJSON_CreateBool(${tickdata_name}._pg197));
    // Send _pg20
    cJSON_AddItemToObject(root, "_pg20", cJSON_CreateBool(${tickdata_name}._pg20));
    // Send _pg201
    cJSON_AddItemToObject(root, "_pg201", cJSON_CreateBool(${tickdata_name}._pg201));
    // Send _pg202
    cJSON_AddItemToObject(root, "_pg202", cJSON_CreateBool(${tickdata_name}._pg202));
    // Send _pg29
    cJSON_AddItemToObject(root, "_pg29", cJSON_CreateBool(${tickdata_name}._pg29));
    // Send _pg4
    cJSON_AddItemToObject(root, "_pg4", cJSON_CreateBool(${tickdata_name}._pg4));
    // Send _pg52
    cJSON_AddItemToObject(root, "_pg52", cJSON_CreateBool(${tickdata_name}._pg52));
    // Send _pg58
    cJSON_AddItemToObject(root, "_pg58", cJSON_CreateBool(${tickdata_name}._pg58));
    // Send _pg61
    cJSON_AddItemToObject(root, "_pg61", cJSON_CreateBool(${tickdata_name}._pg61));
    // Send _pg68
    cJSON_AddItemToObject(root, "_pg68", cJSON_CreateBool(${tickdata_name}._pg68));
    // Send _pg73
    cJSON_AddItemToObject(root, "_pg73", cJSON_CreateBool(${tickdata_name}._pg73));
    // Send _pg73_e1
    cJSON_AddItemToObject(root, "_pg73_e1", cJSON_CreateBool(${tickdata_name}._pg73_e1));
    // Send _pg74
    cJSON_AddItemToObject(root, "_pg74", cJSON_CreateBool(${tickdata_name}._pg74));
    // Send _pg77
    cJSON_AddItemToObject(root, "_pg77", cJSON_CreateBool(${tickdata_name}._pg77));
    // Send _pg81
    cJSON_AddItemToObject(root, "_pg81", cJSON_CreateBool(${tickdata_name}._pg81));
    // Send _pg84
    cJSON_AddItemToObject(root, "_pg84", cJSON_CreateBool(${tickdata_name}._pg84));
    // Send _pg9
    cJSON_AddItemToObject(root, "_pg9", cJSON_CreateBool(${tickdata_name}._pg9));
    // Send _pg90
    cJSON_AddItemToObject(root, "_pg90", cJSON_CreateBool(${tickdata_name}._pg90));
    // Send _pg96
    cJSON_AddItemToObject(root, "_pg96", cJSON_CreateBool(${tickdata_name}._pg96));
    // Send _pg98
    cJSON_AddItemToObject(root, "_pg98", cJSON_CreateBool(${tickdata_name}._pg98));
    // Send _taken_transitions
    array = cJSON_CreateArray();
    for (int i0 = 0; i0 < 20; i0++) {
        cJSON *item0 = cJSON_CreateNumber(${tickdata_name}._taken_transitions[i0]);
        cJSON_AddItemToArray(array, item0);
    }
    cJSON_AddItemToObject(root, "_taken_transitions", array);
    // Send pEW
    cJSON_AddItemToObject(root, "pEW", cJSON_CreateNumber(${tickdata_name}.pEW));
    // Send pNS
    cJSON_AddItemToObject(root, "pNS", cJSON_CreateNumber(${tickdata_name}.pNS));
    // Send t
    cJSON_AddItemToObject(root, "t", cJSON_CreateNumber(${tickdata_name}.t));
    // Send tVehicle
    cJSON_AddItemToObject(root, "tVehicle", cJSON_CreateNumber(${tickdata_name}.tVehicle));
    
    if (send_interface) {
        cJSON *interface = cJSON_CreateObject();
        cJSON *info, *properties;
        
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("input"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "EW_Vehicle", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("input"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "EWraised", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("input"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "NS_Vehicle", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("input"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "NSraised", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("input"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("dynamic-ticks"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("float"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "deltaT", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("input"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("int"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "t1", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("input"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("int"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "t2", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("input"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("int"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "t3", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("input"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("int"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "t4", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("input"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("int"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "t5", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("input"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("int"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "t6", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("input"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("int"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "tPed", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("input"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("int"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "tSnap", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("output"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "Camera_activated", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("output"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "EW_G", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("output"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "EW_P", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("output"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "EW_R", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("output"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "EW_Vehicle_Leave", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("output"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "EW_Vehicle_Snapshot", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("output"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "EW_Y", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("output"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "NS_G", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("output"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "NS_P", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("output"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "NS_R", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("output"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "NS_Vehicle_Leave", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("output"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "NS_Vehicle_Snapshot", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("output"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "NS_Y", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("output"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("dynamic-ticks"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("float"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "sleepT", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("ticktime"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("float"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "#ticktime", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "EWrequest", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "EWserve", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "NSrequest", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "NSserve", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_Atrig", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_Atrig1", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_Atrig10", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_Atrig11", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_Atrig2", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_Atrig3", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_Atrig4", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_Atrig5", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_Atrig6", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_Atrig7", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_Atrig8", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_Atrig9", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("goGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_GO", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("term"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_TERM", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg10", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg100", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg103", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg104", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg106", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg109", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg112", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg115", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg116", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg119", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg120", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg122", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg125", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg128", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg13", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg134", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg137", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg142", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg145", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg151", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg154", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg155", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg159", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg16", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg164", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg167", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg169", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg173", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg179", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg182", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg183", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg187", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg19", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg192", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg195", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg197", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg20", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg201", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg23", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg24", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg26", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg29", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg3", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg32", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg35", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg36", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg39", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg4", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg40", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg42", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg45", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg48", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg51", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg52", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg55", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg56", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg58", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg61", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg64", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg67", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg68", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg7", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg71", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg72", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg74", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg77", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg8", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg80", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg83", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg84", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg87", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg88", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg90", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg93", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg96", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg99", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g10", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g100", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g102", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g103", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g104", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g105", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("emptyGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g105_e1", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g106", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g108", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g109", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g112", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g113", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("emptyGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g113_e2", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g114", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g116", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g118", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g119", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g12", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g120", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g121", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("emptyGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g121_e1", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g122", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g124", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g125", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g128", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g129", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("emptyGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g129_e2", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g13", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g130", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g134", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g135", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g137", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g138", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g142", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g143", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g145", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g146", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g149", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g151", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g152", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g154", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g155", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g156", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("emptyGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g156_e1", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g158", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g159", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g16", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g161", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g164", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g165", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g166", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("emptyGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g166_e2", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g167", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g168", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g169", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g17", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g170", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g171", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g173", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g174", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g177", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g179", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("emptyGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g17_e2", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g18", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g180", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g182", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g183", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g184", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("emptyGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g184_e1", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g185", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g186", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g187", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g188", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g189", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g192", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g193", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g194", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("emptyGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g194_e2", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g195", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g196", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g197", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g198", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g2", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g20", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g201", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g202", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g210", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g22", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g23", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g24", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g25", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("emptyGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g25_e1", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g26", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g28", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g29", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g32", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g33", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("emptyGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g33_e2", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g34", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g36", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g38", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g39", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g4", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g40", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g41", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("emptyGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g41_e1", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g42", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g44", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g45", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g48", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g49", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("emptyGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g49_e2", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g50", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g52", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g54", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g55", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g56", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g57", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("emptyGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g57_e1", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g58", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g6", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g60", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g61", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g64", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g65", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("emptyGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g65_e2", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g66", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g68", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g7", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g70", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g71", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g72", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g73", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("emptyGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g73_e1", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g74", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g76", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g77", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g8", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g80", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g81", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("emptyGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g81_e2", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g82", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g84", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g86", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g87", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g88", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g89", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("emptyGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g89_e1", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g9", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g90", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g92", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g93", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g96", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g97", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("emptyGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g97_e2", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g98", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("emptyGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g9_e1", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg10", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg100", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg106", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg109", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg112", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg116", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg120", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg13", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg154", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg159", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg161", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg166", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg17", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg174", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg177", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg179", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg17_e2", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg18", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg183", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg184", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg185", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg188", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg197", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg20", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg201", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg202", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg29", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg4", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg52", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg58", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg61", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg68", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg73", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg73_e1", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg74", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg77", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg81", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg84", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg9", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg90", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg96", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg98", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("simulation"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("int"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_taken_transitions", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("float"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "pEW", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("float"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "pNS", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("float"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "t", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("float"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "tVehicle", info);
        
        cJSON_AddItemToObject(root, "#interface", interface);
    }

    // Get JSON object as string
    char* outString = cJSON_Print(root);
    cJSON_Minify(outString);
    // Flush to stdout
    printf("%s\n", outString);
    fflush(stdout);

    cJSON_Delete(root);
    free(outString);
}
</#macro>

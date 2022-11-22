#include "game.h"
#include "mode0.h"
#include <stdlib.h>

OBJ_ATTR shadowOAM[128];

enum {SPRITEIDLE, SPRITEACT};

ANISPRITE hand;
ANISPRITE head;
int dodge;
int strike;
int countdown;
int bit;
int caught;

void initMiniGame(){
    initHand();
    initHead();
    bit = 0;
    caught = 0;
    if (lvl == ONE) {
        countdown = 34;
    } else if (lvl == TWO) {
        countdown = 49;
    } else {
        countdown = 64;
    }
    
    
}
void updateMiniGame(){
    updateHand();
    updateHead();
}
 void drawMiniGame() {
    shadowOAM[14].attr0 = ATTR0_HIDE;
    shadowOAM[15].attr0 = ATTR0_HIDE;
    if (bit) {
        shadowOAM[16].attr0 = ATTR0_WIDE | 56;
        shadowOAM[16].attr1 = ATTR1_LARGE | 88;
        shadowOAM[16].attr2 = ATTR2_TILEID(12, 26) | ATTR2_PALROW(5);
    } else if (caught) {
        shadowOAM[17].attr0 = ATTR0_SQUARE | 48;
        shadowOAM[17].attr1 = ATTR1_LARGE | 88;
        shadowOAM[17].attr2 = ATTR2_TILEID(20, 18) | ATTR2_PALROW(5);
    } else {
        drawHand();
        drawHead();
    }
}

void initHand() {
    dodge = 0;
    hand.width = 32;
    hand.height = 32;
    hand.row = SCREENHEIGHT / 2 - hand.height / 2;
    hand.col = SCREENWIDTH / 2 - hand.width / 2;
    hand.aniState = SPRITEIDLE;
}

void updateHand() {
    if (BUTTON_PRESSED(BUTTON_A)) {
        mgba_printf("dodge");
        dodge = countdown;
        hand.col = SCREENWIDTH / 4 - hand.width / 2;
    }
    if (dodge - countdown >= 3) {
        dodge = 0;
        hand.col = SCREENWIDTH / 2 - hand.width / 2;
    }
    if (BUTTON_PRESSED(BUTTON_B)) {
        hand.col = SCREENWIDTH / 2 - hand.width / 2;
        if (dodge && strike) {
            countdown = 3;
            caught = 1;
            bit = 0;
            mgba_printf("catch");
        } else {
            dodge = 0;
        }
    }
    if (!caught) {
        if (!dodge && strike) {
            bit = 1;
            countdown = 3;
            strike = 0;
            caught = 1;
            mgba_printf("ow");
        }
    }
}

void drawHand() {
    shadowOAM[14].attr0 = ATTR0_SQUARE | hand.row;
    shadowOAM[14].attr1 = ATTR1_MEDIUM | hand.col;
    if (!dodge) {
        shadowOAM[14].attr2 = ATTR2_TILEID(12, 18) | ATTR2_PALROW(5);
    } else {
        shadowOAM[14].attr2 = ATTR2_TILEID(16, 18) | ATTR2_PALROW(5);
    }  
}

void initHead() {
    strike = 0;
    head.width = 64;
    head.height = 32;
    head.aniState = SPRITEIDLE;
    head.col = SCREENWIDTH / 4 * 3 - head.width;
    head.row = hand.row;
}

void updateHead(){
    if (lvl == ONE) {
        if (countdown % 5 == 0) {
            strike = 1;
        }
        if (countdown % 5 == 3) {
            strike = 0;
        }
    } else if (lvl == TWO) {
        if (countdown % 3 == 0) {
            strike = 1;
        }
        if (countdown % 3 == 1) {
            strike = 0;
        }
    } else {
        if (countdown % 2 == 1) {
            strike = 1;
        }
        if (countdown % 2 == 0) {
            strike = 0;
        }
    }
    
    if (!strike) {
        head.col = SCREENWIDTH / 4 * 3 - head.width / 2;
    } else {
        head.col = SCREENWIDTH / 2 - head.width / 2;
    }
}

void drawHead() {
    shadowOAM[15].attr0 = ATTR0_SQUARE | head.row;
    shadowOAM[15].attr1 = ATTR1_MEDIUM | head.col;
    if (!strike) {
        shadowOAM[15].attr2 = ATTR2_TILEID(12, 22) | ATTR2_PALROW(5);
    } else {
        shadowOAM[15].attr2 = ATTR2_TILEID(16, 22) | ATTR2_PALROW(5);
    }
}



void enableTimerInterrupts() {
  REG_IE |= INT_TM2;

  REG_TM2CNT = 0;
  REG_TM2D = 65536 - 16384;
  REG_TM2CNT = TM_IRQ | TM_FREQ_1024 | TIMER_ON;
}


void stopTimer() {
    REG_TM2CNT = 0;
}
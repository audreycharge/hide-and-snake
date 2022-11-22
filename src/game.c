#include "game.h"
#include "mode0.h"
#include <stdlib.h>
#include "forest.h"
#include "forestCM.h"
#include "sound.h"
#include "rustle.h"
#include "hiss.h"

ANISPRITE seeker;
ANISPRITE snake;
ANISPRITE hiders[3];
ANISPRITE stick;
ANISPRITE bush[5];
ANISPRITE tree[3];


int hOff;
int vOff;
OBJ_ATTR shadowOAM[128];
int hideCount;
int stickTime;
int manifestStick;
int fightTime;
int rustle;
int friendsRemaining;
int buffer;
int king;


unsigned char *collisionMap = (unsigned char *)forestCMBitmap;

enum {SPRITELEFT, SPRITEBACK, SPRITERIGHT, SPRITEIDLE};

void initGame() {
    vOff = 96;
    hOff = 0;
    hideCount = 5;
    friendsFound = 0;
    fightTime = 0;
    stickTime = 0;
    friendsRemaining = 3;
    buffer = 120;
    king = 0;

    initBG();
    initSeeker();
    initSnake();
    initBush();
    initTree();
    initStick();
}
void updateGame() {
    updateSeeker();
    updateSnake();
    updateBush();
    updateTree();
    updateStick();
    updateHiders();

    if (friendsFound == 3) {
        if (buffer) {
            buffer--;
        }
    }
}
void drawGame() {
    drawBush();
    drawSeeker();
    drawSnake();
    
    drawTree();
    drawHiders();
    drawStick();
    waitForVBlank();

    for (int i = 0; i < HIDERCOUNT; i++) {
        int col = 15 + 9*i;
        if (!hiders[i].found) {
            shadowOAM[17+i].attr0 = ATTR0_SQUARE | 15;
            shadowOAM[17+i].attr1 = ATTR1_TINY | col;
            shadowOAM[17+i].attr2 = ATTR2_TILEID(0,4 + 2*i)  | ATTR2_PALROW(i+1);
        } else {
            shadowOAM[17+i].attr0 = ATTR0_HIDE;
        }
    }

    DMANow(3, shadowOAM, OAM, 128 * 4);

    REG_BG1HOFF = hOff;
    REG_BG1VOFF = vOff;

    REG_BG2VOFF = vOff / 2;
    REG_BG2HOFF = hOff / 2;
}

void initSeeker() {
    seeker.width = 15;
    seeker.height = 14;
    seeker.cdel = 1;
    seeker.rdel = 1;

    seeker.aniCounter = 0;
    seeker.curFrame = 0;
    seeker.numFrames = 3;
    seeker.aniState = SPRITERIGHT;

    seeker.row =  118 + vOff;
    seeker.col = 15 + hOff;
}
void updateSeeker() {

    if (seeker.aniState != SPRITEIDLE) {
        seeker.prevAniState = seeker.aniState;
        seeker.aniState = SPRITEIDLE;
    }

    if(seeker.aniCounter % 15 == 0) {
        seeker.curFrame = (seeker.curFrame + 1) % seeker.numFrames;
    }
    if (!king) {
        if(BUTTON_HELD(BUTTON_UP)) {
            if (collisionCheck(collisionMap, MAPWIDTH, seeker.col, seeker.row, seeker.width, seeker.height, 0, -seeker.rdel) == 2 && seeker.row > 0) {//if seeker hasn't reached the screen edge
                seeker.row -= seeker.rdel;

            
                if (vOff - 1 >= 0 && (seeker.row - vOff) <= (SCREENHEIGHT / 2)) {
                    vOff--;
                }
                seeker.aniState = SPRITEBACK;
            }
        }
        if(BUTTON_HELD(BUTTON_DOWN)) {

            if (collisionCheck(collisionMap, MAPWIDTH, seeker.col, seeker.row, seeker.width, seeker.height, 0, seeker.rdel)==2 && seeker.row + seeker.height < MAPHEIGHT) {
                seeker.row += seeker.rdel;

                if (vOff+1 < (MAPHEIGHT - SCREENHEIGHT) && (seeker.row - vOff) > (SCREENHEIGHT / 2)) {
                    vOff++;
                }
                seeker.aniState = SPRITEBACK;
            }
        }
        if(BUTTON_HELD(BUTTON_LEFT)) {
            if (collisionCheck(collisionMap, MAPWIDTH, seeker.col, seeker.row, seeker.width, seeker.height, -seeker.cdel, 0) && seeker.col > 0) {
                seeker.col -= seeker.cdel;

                if (hOff - 1 >= 0 && (seeker.col - hOff) <= (SCREENWIDTH / 2)) {
                    hOff--;
                }
                seeker.aniState = SPRITELEFT;
            }
        }
        if(BUTTON_HELD(BUTTON_RIGHT)) {
            if (collisionCheck(collisionMap, MAPWIDTH, seeker.col, seeker.row, seeker.width, seeker.height, seeker.cdel, 0) && seeker.col + seeker.width < MAPWIDTH) {
                seeker.col += seeker.cdel;

                if (hOff + 1 < (MAPWIDTH - SCREENWIDTH) && (seeker.col - hOff) > (SCREENWIDTH / 2)) {
                    hOff++;
                }
                seeker.aniState = SPRITERIGHT;
            }
        }
    } else {
        if(BUTTON_HELD(BUTTON_UP)) {
            if (seeker.row > 0) {//if seeker hasn't reached the screen edge
                seeker.row -= seeker.rdel;

            
                if (vOff - 1 >= 0 && (seeker.row - vOff) <= (SCREENHEIGHT / 2)) {
                    vOff--;
                }
            }
        }
        if(BUTTON_HELD(BUTTON_DOWN)) {

            if (seeker.row < 214) {
                seeker.row += seeker.rdel;

                if (vOff+1 < (MAPHEIGHT - SCREENHEIGHT) && (seeker.row - vOff) > (SCREENHEIGHT / 2)) {
                    vOff++;
                }
            }
        }
        if(BUTTON_HELD(BUTTON_LEFT)) {
            if (seeker.col > 0) {
                seeker.col -= seeker.cdel;

                if (hOff - 1 >= 0 && (seeker.col - hOff) <= (SCREENWIDTH / 2)) {
                    hOff--;
                }
                seeker.aniState = SPRITELEFT;
            }
        }
        if(BUTTON_HELD(BUTTON_RIGHT)) {
            if (seeker.col + seeker.width < MAPWIDTH) {
                seeker.col += seeker.cdel;

                if (hOff + 1 < (MAPWIDTH - SCREENWIDTH) && (seeker.col - hOff) > (SCREENWIDTH / 2)) {
                    hOff++;
                }
                seeker.aniState = SPRITERIGHT;
            }
        }
    }
    
    if (BUTTON_PRESSED(BUTTON_A)) {
        for (int i; i < 5; i++) {
            if (collision(bush[i].col, bush[i].row, bush[i].width, bush[i].height, seeker.col, seeker.row, seeker.width, seeker.height)) {                        
                if (!bush[i].checked) {
                    int found = rand() % hideCount;
                    if (!found) {
                        //nothing
                        mgba_printf("nothing");
                        stopSoundB();
                        playSoundB(rustle_data, rustle_length, 0);
                    } else if (found == 1) {
                        int pop = seeker.row;
                        if (!snake.found) {
                            snake.col = bush[i].col;
                            snake.row = bush[i].row;
                            shadowOAM[1].attr0 = ATTR0_TALL | (snake.row - vOff);
                            snake.found = 1;
                            snake.aniCounter = 120;
                            stopSoundB();
                            playSoundB(hiss_data, hiss_length, 0);
                        }
                        //strike snake
                        mgba_printf("snake!");
                    } else {
                        //draw friend
                        mgba_printf("friend");
                        int who = rand() % (3 - friendsFound);
                        mgba_printf("%d", who);
                        if (hiders[who].found) {
                            mgba_printf("alr found");
                            if (hiders[(who + 1) % 3].found) {
                                hiders[(who + 2) % 3].found = 1;
                            } else {
                                hiders[(who + 1) % 3].found = 1;
                            }
                        } else {
                            hiders[who].found = 1;
                        }
                        friendsFound++;
                        hideCount--;
                        friendsRemaining--;
                        stopSoundB();
                        playSoundB(rustle_data, rustle_length, 0);
                    }
                }
            }
        }
    }
    if (seeker.aniState == SPRITEIDLE) {
        seeker.curFrame = 0;
        seeker.aniState = seeker.prevAniState;
    } else {
        seeker.aniCounter++;
    }
}
void drawSeeker() {
    shadowOAM[20].attr0 = ATTR0_SQUARE | (seeker.row - vOff);
    if (seeker.aniState == SPRITERIGHT) {
        shadowOAM[20].attr1 = ATTR1_SMALL | (seeker.col - hOff) | ATTR1_HFLIP;
    } else {
        shadowOAM[20].attr1 = ATTR1_SMALL | (seeker.col - hOff);
    }
    
    if (king) {
        if (seeker.aniState == SPRITEBACK) {
            if (seeker.curFrame == 0) {
                shadowOAM[20].attr2 = ATTR2_TILEID(17, 0);
            } else if (seeker.curFrame == 1) {
                shadowOAM[20].attr2 = ATTR2_TILEID(17, 2);
            } else if (seeker.curFrame == 2) {
                shadowOAM[20].attr2 = ATTR2_TILEID(17, 2);
            }
        } else if (seeker.aniState == SPRITELEFT || seeker.aniState == SPRITERIGHT) {
            if (seeker.curFrame == 0) {
                shadowOAM[20].attr2 = ATTR2_TILEID(8, 0);
            } else if (seeker.curFrame == 1) {
                shadowOAM[20].attr2 = ATTR2_TILEID(6, 0);
            } else if (seeker.curFrame == 2) {
                shadowOAM[20].attr2 = ATTR2_TILEID(10, 0);
            }
        } else {
            seeker.curFrame = 0;
        }
    } else if (!stickTime) {
        if (seeker.aniState == SPRITEBACK) {
            if (seeker.curFrame == 0) {
                shadowOAM[20].attr2 = ATTR2_TILEID(15, 0);
            } else if (seeker.curFrame == 1) {
                shadowOAM[20].attr2 = ATTR2_TILEID(15, 2);
            } else if (seeker.curFrame == 2) {
                shadowOAM[20].attr2 = ATTR2_TILEID(15, 2);
            }
        } else if (seeker.aniState == SPRITERIGHT || seeker.aniState == SPRITELEFT) {
            if (seeker.curFrame == 0) {
                shadowOAM[20].attr2 = ATTR2_TILEID(2, 0);
            } else if (seeker.curFrame == 1) {
                shadowOAM[20].attr2 = ATTR2_TILEID(0, 0);
            } else if (seeker.curFrame == 2) {
                shadowOAM[20].attr2 = ATTR2_TILEID(4, 0);
            }
        } else {
            seeker.curFrame = 0;
        }
    } else {
        if (seeker.aniState == SPRITEBACK) {
            if (seeker.curFrame == 0) {
                shadowOAM[20].attr2 = ATTR2_TILEID(15, 0);
            } else if (seeker.curFrame == 1) {
                shadowOAM[20].attr2 = ATTR2_TILEID(15, 2);
            } else if (seeker.curFrame == 2) {
                shadowOAM[20].attr2 = ATTR2_TILEID(15, 2);
            }
        } else if (seeker.aniState == SPRITELEFT || seeker.aniState == SPRITERIGHT) {
            if (seeker.curFrame == 0) {
                shadowOAM[20].attr2 = ATTR2_TILEID(2, 2);
            } else if (seeker.curFrame == 1) {
                shadowOAM[20].attr2 = ATTR2_TILEID(0, 2);
            } else if (seeker.curFrame == 2) {
                shadowOAM[20].attr2 = ATTR2_TILEID(4, 2);
            }
        } else {
            seeker.curFrame = 0;
        }
    }
}

void initSnake(){
    snake.width = 7;
    snake.height = 15;
    snake.aniState = SPRITELEFT;
    snake.row = MAPHEIGHT / 2;
    snake.col = MAPWIDTH / 2;
    snake.found = 0;
    snake.aniCounter = 0;
    snake.curFrame = 0;
    snake.numFrames = 2;
}
void updateSnake(){
    if (snake.aniCounter && snake.found) {
        snake.aniCounter--;
    } else if (snake.found && !snake.aniCounter) {
        if (king && BUTTON_HELD(BUTTON_R)) {
            mgba_printf("magic");
            snake.found = 0;
            shadowOAM[1].attr0 = ATTR0_HIDE;
        } else if (stickTime) {
            mgba_printf("go away");
            stickTime = 0;
            snake.found = 0;
            shadowOAM[1].attr0 = ATTR0_HIDE;
        } else {
            fightTime = 1;
            mgba_printf("go to minigame");
        }
    }
}
void drawSnake(){
    if (shadowOAM[1].attr0 != ATTR0_HIDE) {
        shadowOAM[1].attr0 = ATTR0_TALL | (snake.row - vOff);
        shadowOAM[1].attr1 = ATTR1_TINY | (snake.col - hOff) & 0x01ff;
        shadowOAM[1].attr2 = ATTR2_TILEID(12, 0) | ATTR2_PALROW(5);

        if (king) {
            if (BUTTON_HELD(BUTTON_R)) {
                if (snake.aniCounter / 20 % 2 == 0) {
                    REG_MOSAIC = MOS_OH(1) | MOS_OV(1);
                } else {
                    REG_MOSAIC = MOS_OH(2) | MOS_OV(2);
                }
                shadowOAM[1].attr0 |= ATTR0_MOSAIC;
            }
        }
    }
}

void initBush() {
    for (int i = 0; i < 5; i++) {
        bush[i].width = 32;
        bush[i].height = 32;
        bush[i].col = 20 + 80*i;
        bush[i].row = 220;
        bush[i].aniState = SPRITELEFT;
        bush[i].checked = 0;
        bush[i].curFrame = 0;
        bush[i].numFrames = 2;
        bush[i].aniCounter = 0;
    }
}

updateBush() {
    for (int i = 0; i < 5; i++) {
        if(BUTTON_PRESSED(BUTTON_A)) {
            if (seeker.col < (bush[i].col + bush[i].width - 1) && seeker.col + seeker.width - 1 > bush[i].col) {
                if (!bush[i].checked) {
                    bush[i].checked = 300;
                    bush[i].aniCounter = 15;
                }
            }
        }
        if (bush[i].checked && bush[i].aniCounter) {
            bush[i].aniCounter--;
        }
        if (bush[i].checked) {
            bush[i].checked--;
        }
    }
}

void drawBush() {
    if (lvl == ONE) {
        for (int i= 0; i < 5; i++) {
            shadowOAM[6+i].attr0 = ATTR0_SQUARE | (bush[i].row - vOff);
            shadowOAM[6+i].attr1 = ATTR1_MEDIUM | (bush[i].col - hOff) & 0x01ff;
            if (bush[i].aniCounter) {
                shadowOAM[6+i].attr2 = ATTR2_TILEID(0, 22) | ATTR2_PALROW(4);
            } else {
                shadowOAM[6+i].attr2 = ATTR2_TILEID(0, 18) | ATTR2_PALROW(4);
            }
        }
    } else if (lvl == TWO) {
        for (int i= 0; i < 5; i++) {
            shadowOAM[6+i].attr0 = ATTR0_SQUARE | (bush[i].row - vOff);
            shadowOAM[6+i].attr1 = ATTR1_MEDIUM | (bush[i].col - hOff) & 0x01ff;
            if (bush[i].aniCounter) {
                shadowOAM[6+i].attr2 = ATTR2_TILEID(4, 22) | ATTR2_PALROW(4);
            } else {
                shadowOAM[6+i].attr2 = ATTR2_TILEID(4, 18) | ATTR2_PALROW(4);
            }
        }
    } else {
        for (int i= 0; i < 5; i++) {
            shadowOAM[6+i].attr0 = ATTR0_SQUARE | (bush[i].row - vOff);
            shadowOAM[6+i].attr1 = ATTR1_MEDIUM | (bush[i].col - hOff) & 0x01ff;
            if (bush[i].aniCounter) {
                shadowOAM[6+i].attr2 = ATTR2_TILEID(8, 22) | ATTR2_PALROW(4);
            } else {
                shadowOAM[6+i].attr2 = ATTR2_TILEID(8, 18) | ATTR2_PALROW(4);
            }
        }
    }
    
}

void initTree(){
    for (int i = 0; i < 3; i++) {
        tree[i].width = 48;
        tree[i].height = 32;
        tree[i].col = 30 + 140*i;
        tree[i].row = 30;
        tree[i].aniState = SPRITELEFT;
        tree[i].checked = 0;
    }
}

void updateTree() {
    for (int i = 0; i < 3; i++) {
        if (BUTTON_HELD(BUTTON_L) && BUTTON_HELD(BUTTON_R) && i == 2) {
            if (collision(tree[i].col, tree[i].row, tree[i].width, tree[i].height, seeker.col, seeker.row, seeker.width, seeker.height)) {
                king = 1;
            }
        }
        if (collision(tree[i].col, tree[i].row, tree[i].width, tree[i].height, seeker.col, seeker.row, seeker.width, seeker.height) && BUTTON_PRESSED(BUTTON_A)) {
            if (!tree[i].checked) {
                playSoundB(rustle_data, rustle_length, 0);
                tree[i].aniCounter = 15;
                int found = rand() % hideCount;
                if (!found) {
                    mgba_printf("nothing");
                    //nothing
                } else if (found == 1) {
                    //strike snake
                    mgba_printf("snake!");
                    if (!snake.found) {
                        snake.col = tree[i].col;
                        snake.row = tree[i].row;
                        shadowOAM[1].attr0 = ATTR0_TALL | (snake.row - vOff);
                        snake.found = 1;
                        snake.aniCounter = 120;
                        stopSoundB();
                        playSoundB(hiss_data, hiss_length, 0);
                    }
                } else {
                    //draw friend
                    int who = rand() % (3 - friendsFound);
                    mgba_printf("%d", who);
                    if (hiders[who].found) {
                        if (hiders[(who + 1) % 3].found) {
                            hiders[(who + 2) % 3].found = 1;
                        } else {
                            hiders[(who + 1) % 3].found = 1;
                        }
                    } else {
                        hiders[who].found = 1;
                    }
                    friendsFound++;
                    hideCount--;
                    friendsRemaining--;
                }
                tree[i].checked = 300;
            }
        }
        if (tree[i].checked && tree[i].aniCounter) {
            tree[i].aniCounter--;
        }
        if (tree[i].checked) {
            tree[i].checked--;
        }
    }
}

void drawTree() {
    if (lvl == ONE) {
        for (int i; i < 3; i++) {
            shadowOAM[11+i].attr0 = ATTR0_WIDE | (tree[i].row - vOff);
            shadowOAM[11+i].attr1 = ATTR1_LARGE | (tree[i].col - hOff) & 0x01ff;
            if (tree[i].aniCounter) {
                shadowOAM[11+i].attr2 = ATTR2_TILEID(0, 14) | ATTR2_PALROW(4);
            } else {
                shadowOAM[11+i].attr2 = ATTR2_TILEID(0, 10) | ATTR2_PALROW(4);
            }
        }
    } else if (lvl == TWO) {
        for (int i; i < 3; i++) {
            shadowOAM[11+i].attr0 = ATTR0_WIDE | (tree[i].row - vOff);
            shadowOAM[11+i].attr1 = ATTR1_LARGE | (tree[i].col - hOff) & 0x01ff;
            if (tree[i].aniCounter) {
                shadowOAM[11+i].attr2 = ATTR2_TILEID(8, 14) | ATTR2_PALROW(4);
            } else {
                shadowOAM[11+i].attr2 = ATTR2_TILEID(8, 10) | ATTR2_PALROW(4);
            }
        }
    } else {
        for (int i; i < 3; i++) {
            shadowOAM[11+i].attr0 = ATTR0_WIDE | (tree[i].row - vOff);
            shadowOAM[11+i].attr1 = ATTR1_LARGE | (tree[i].col - hOff) & 0x01ff;
            if (tree[i].aniCounter) {
                shadowOAM[11+i].attr2 = ATTR2_TILEID(16, 14) | ATTR2_PALROW(4);
            } else {
                shadowOAM[11+i].attr2 = ATTR2_TILEID(16, 10) | ATTR2_PALROW(4);
            }
        }
    }
    
    
}

void initHiders() {
    for (int i; i<3; i++) {
        hiders[i].height = seeker.height;
        hiders[i].width = seeker.width;
        hiders[i].found = 0;
        hiders[i].row = 214;
        hiders[i].aniCounter = 0;
        hiders[i].curFrame = 0;
        hiders[i].numFrames = 3;
        hiders[i].aniState = SPRITERIGHT;
    }
}

void updateHiders(){
    for (int i = 0; i < HIDERCOUNT; i++) {
        if (hiders[i].found) {
            hiders[i].row = 214;
            if (seeker.col + seeker.width + 16*i <= hiders[i].col) {
                hiders[i].col = seeker.col + seeker.width + 16*i;
                if (seeker.aniState == SPRITELEFT) {
                    hiders[i].aniState = seeker.aniState;
                    hiders[i].curFrame = seeker.curFrame; 
                }
            }
            if (seeker.col >= hiders[i].col + seeker.width + 16*i) {
                hiders[i].col = seeker.col - seeker.width - 16*i;
                if (seeker.aniState == SPRITERIGHT) {
                    hiders[i].aniState = seeker.aniState;
                    hiders[i].curFrame = seeker.curFrame;
                }
            }
            if (seeker.col < hiders[i].col + seeker.width + 16*i && seeker.col + seeker.width + 16*i > hiders[i].col) {
                hiders[i].aniState = SPRITEIDLE;
            }
        }
    }
}

void drawHiders() {
    for (int i = 0; i < HIDERCOUNT; i++) {
        if (hiders[i].found) {
            shadowOAM[21+i].attr0 = ATTR0_SQUARE | (hiders[i].row - vOff);
            if (hiders[i].aniState == SPRITERIGHT) {
                shadowOAM[21+i].attr1 = ATTR1_SMALL | (hiders[i].col - hOff) | ATTR1_HFLIP;
            } else {
                shadowOAM[21+i].attr1 = ATTR1_SMALL | (hiders[i].col - hOff);
            }
            if (hiders[i].aniState == SPRITELEFT || hiders[i].aniState == SPRITERIGHT) {
                if (hiders[i].curFrame == 0) {
                    shadowOAM[21+i].attr2 = ATTR2_TILEID(2, 4+2*i) | ATTR2_PALROW(1+i);
                } else if (hiders[i].curFrame == 1) {
                    shadowOAM[21+i].attr2 = ATTR2_TILEID(0, 4+ 2*i) | ATTR2_PALROW(1+i);
                } else if (hiders[i].curFrame == 2) {
                    shadowOAM[21+i].attr2 = ATTR2_TILEID(4, 4 + 2*i) | ATTR2_PALROW(1+i);
                }
            } else {
                hiders[i].curFrame = 0;
            }
        }
    }
}

initStick() {
    stick.height = 8;
    stick.width = 4;
    stick.aniState = SPRITELEFT;
    stick.found = 0;
    manifestStick = 300;
    stick.row = 118 + vOff;
}

updateStick() {
    if (manifestStick) {
        shadowOAM[2].attr0 = ATTR0_HIDE;
        stick.col = rand() % 200 + 10;
        manifestStick--;
    } else {
        shadowOAM[2].attr0 = ATTR0_TALL | (stick.row - vOff);
        if (collision(seeker.col, seeker.row, seeker.width, seeker.height, stick.col, stick.row, stick.width, stick.height)) {
            stickTime = 600;
            manifestStick = 900;
        }
    }
}

drawStick() {
    if (shadowOAM[2].attr0 != ATTR0_HIDE) {
        shadowOAM[2].attr1 = ATTR1_TINY | (stick.col - hOff) & 0x01ff;
        shadowOAM[2].attr2 = ATTR2_TILEID(13, 0);
    }
}

initBG() {
    if (lvl == TWO) {
        PALETTE[3] = PALETTE[5];
        PALETTE[4] = PALETTE[6];
        PALETTE[10] = PALETTE[12];
        PALETTE[11] = PALETTE[13];

    } else if (lvl == THREE){
        PALETTE[3] = PALETTE[7];
        PALETTE[4] = PALETTE[8];
        PALETTE[10] = PALETTE[14];
        PALETTE[11] = PALETTE[15];
    }

}
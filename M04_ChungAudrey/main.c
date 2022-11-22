//Cheat code: Climb the last tree and press L and R at the same time to summon the King Staff.
//The King Staff grants you the eldritch powers to fly and shoot snakes.
//You still need to hold button R until the snake disappears
//or else you'll still enter the minigame without a stick

#include <stdlib.h>
#include <stdio.h>
#include "mode0.h"
#include "game.h"
#include "spritesheet.h"
#include "forest.h"
#include "instructions.h"
#include "instructions2.h"
#include "start.h"
#include "pause.h"
#include "win.h"
#include "gameover.h"
#include "snaketime.h"
#include "loseSong.h"
#include "winSong.h"
#include "startSong.h"
#include "gameSong.h"
#include "fightSong.h"
#include "bg2.h"
#include "sound.h"


void initialize();

void goToStart();
void start();
void goToInstructions();
void instr();
void goToGame();
void game();
void goToPause();
void pause();
void goToWin();
void win();
void goToLose();
void lose();
void goToFight();
void fight();

enum {START, INSTR, GAME, FIGHT, PAUSE, LOSE, WIN};
int state;

int lvl;
int curTime;
int bestTime;
int friendsFound;
int friendsRemaining;

unsigned short buttons;
unsigned short oldButtons;

OBJ_ATTR shadowOAM[128];

int main()
{
    mgba_open();
	mgba_printf("Debugging Initialized");	

    initialize();

    while (1)
    {
        // Update button variables
        oldButtons = buttons;
        buttons = BUTTONS;

        // State Machine
        switch (state)
        {
        case START:
            start();
            break;
        case INSTR:
            instr();
            break;
        case GAME:
            game();
            break;
        case FIGHT:
            fight();
            break;
        case PAUSE:
            pause();
            break;
        case WIN:
            win();
            break;
        case LOSE:
            lose();
            break;
        }
    }
}

// Sets up GBA
void initialize()
{
    REG_DISPCTL = MODE0| BG1_ENABLE | SPRITE_ENABLE | BG0_ENABLE | BG2_ENABLE;

    buttons = BUTTONS;
    oldButtons = 0;

    setupSounds();
    setupInterrupts();

    goToStart();


}

void goToStart() {
    hideSprites();
    lvl = ONE;
    stopSound();
    playSoundA(startSong_data, startSong_length, 1);
    state = START;
}

// Runs every frame of the start state
void start() {
    REG_BG0CNT = BG_CHARBLOCK(2) | BG_SCREENBLOCK(28) | BG_SIZE_SMALL | BG_8BPP;
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(30) | BG_SIZE_WIDE | BG_8BPP;

    DMANow(3, startPal, PALETTE, startPalLen /2);
    DMANow(3, startTiles, &CHARBLOCK[2], startTilesLen / 2);
    DMANow(3, startMap, &SCREENBLOCK[28], startMapLen / 2);

    

    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128 * 4);

    if (BUTTON_PRESSED(BUTTON_START)) {
        goToInstructions();
    }
}

void goToInstructions() {
    DMANow(3, instructionsPal, PALETTE, instructionsPalLen /2);
    DMANow(3, instructionsTiles, &CHARBLOCK[2], instructionsTilesLen / 2);
    DMANow(3, instructionsMap, &SCREENBLOCK[28], instructionsMapLen / 2);
    state = INSTR;
}

void instr() {
    if (BUTTON_PRESSED(BUTTON_R)) {
        // mgba_printf
        DMANow(3, instructions2Pal, PALETTE, instructions2PalLen /2);
        DMANow(3, instructions2Tiles, &CHARBLOCK[2], instructions2TilesLen / 2);
        DMANow(3, instructions2Map, &SCREENBLOCK[28], instructions2MapLen / 2);
    }
    if (BUTTON_PRESSED(BUTTON_L)) {
        DMANow(3, instructionsPal, PALETTE, instructionsPalLen /2);
        DMANow(3, instructionsTiles, &CHARBLOCK[2], instructionsTilesLen / 2);
        DMANow(3, instructionsMap, &SCREENBLOCK[28], instructionsMapLen / 2);
    }

    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128*4);

    if (BUTTON_PRESSED(BUTTON_START)){
        stopSound();
        goToGame();
        mgba_printf("start");
        initGame();
        friendsFound = 0;
        curTime = 0;
    }
}

// Sets up the game state
void goToGame() {
    waitForVBlank();

    REG_BG0CNT = 0;

    
    REG_DISPCTL = MODE0 | BG1_ENABLE | SPRITE_ENABLE | BG2_ENABLE;

    DMANow(3, forestPal, PALETTE, forestPalLen /2);
    DMANow(3, forestTiles, &CHARBLOCK[0], forestTilesLen / 2);
    DMANow(3, forestMap, &SCREENBLOCK[30], forestMapLen / 2);

    DMANow(3, bg2Tiles, &CHARBLOCK[3], bg2TilesLen / 2);
    DMANow(3, bg2Map, &SCREENBLOCK[20], bg2MapLen / 2);

    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(30) | BG_SIZE_WIDE | BG_8BPP;
    REG_BG2CNT = BG_CHARBLOCK(3) | BG_SCREENBLOCK(20) | BG_SIZE_WIDE | BG_8BPP;

    REG_BG1VOFF = vOff;
    REG_BG1HOFF = hOff;

    REG_BG2VOFF = vOff / 2;
    REG_BG2HOFF = hOff / 2;

    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen / 2);
    DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen / 2);
    hideSprites();
    DMANow(3, shadowOAM, OAM, 128 * 4);

    playSoundA(gameSong_data, gameSong_length, 1);

    state = GAME;
}

void game() {
    updateGame();
    drawGame();

    if (BUTTON_PRESSED(BUTTON_SELECT)){
        goToPause();
    }
    if (friendsFound == 3) {
        if (!buffer) {
            goToWin();
        }
    }
    if (fightTime) {
        goToFight();
    }
}

void goToFight(){
    mgba_printf("fight");
    hideSprites();
    REG_DISPCTL = MODE0 | SPRITE_ENABLE | BG0_ENABLE;
    DMANow(3, snaketimePal, PALETTE, snaketimePalLen /2);
    DMANow(3, snaketimeTiles, &CHARBLOCK[2], snaketimeTilesLen / 2);
    DMANow(3, snaketimeMap, &SCREENBLOCK[28], snaketimeMapLen / 2);
    REG_BG0CNT = BG_CHARBLOCK(2) | BG_SCREENBLOCK(28) | BG_SIZE_SMALL | BG_8BPP;
    waitForVBlank();
    initMiniGame();
    DMANow(3, shadowOAM, OAM, 128 * 4);

    stopSound();
    playSoundA(fightSong_data, fightSong_length, 1);
    setupInterrupts();
    state = FIGHT;
}

void fight(){
    
    updateMiniGame();
    drawMiniGame();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128 * 4);
    if (!countdown) {
        if (bit) {
            goToLose();
        } else {
            fightTime = 0;
            snake.found = 0;
            REG_DISPCTL = MODE0 | SPRITE_ENABLE | BG1_ENABLE | BG2_ENABLE;
            stopSound();
            goToGame();
            initBG();
        }
    }
    if (BUTTON_PRESSED(BUTTON_SELECT)){
        mgba_printf("select pressed");
        goToPause();
    }
}

void goToPause(){
    mgba_printf("paused");
    hideSprites();
    pauseSound();
    
    state = PAUSE;
}
void pause(){
    DMANow(3, pausePal, PALETTE, pausePalLen /2);
    DMANow(3, pauseTiles, &CHARBLOCK[2], pauseTilesLen / 2);
    DMANow(3, pauseMap, &SCREENBLOCK[28], pauseMapLen / 2);

    REG_DISPCTL = MODE0 | BG0_ENABLE;

    REG_BG0CNT = BG_CHARBLOCK(2) | BG_SCREENBLOCK(28) | BG_SIZE_SMALL | BG_8BPP;

    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128 * 4);
    if (BUTTON_PRESSED(BUTTON_START)){
        unpauseSound();
        goToGame();
        initBG();
    }
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToStart();
    }
}
void goToWin(){
    
    for (int i; i < HIDERCOUNT; i++) {
        hiders[i].found = 0;
    }
    friendsRemaining = 3;
    friendsFound = 0;
    if (lvl == ONE) {
        lvl = TWO;
        goToGame();
        initGame();
    } else if (lvl == TWO) {
        lvl = THREE;
        goToGame();
        initGame();
    } else {
        stopSound();
        playSoundA(winSong_data, winSong_length, 1);
        state = WIN;
        mgba_printf("win");
        REG_DISPCTL = MODE0 | SPRITE_ENABLE | BG0_ENABLE;
    }
}
void win(){
    DMANow(3, winPal, PALETTE, winPalLen /2);
    DMANow(3, winTiles, &CHARBLOCK[2], winTilesLen / 2);
    DMANow(3, winMap, &SCREENBLOCK[28], winMapLen / 2);
    hideSprites();

    REG_BG0CNT = BG_CHARBLOCK(2) | BG_SCREENBLOCK(28) | BG_SIZE_SMALL | BG_8BPP;
    REG_BG1CNT = 0;

    waitForVBlank();
    
    DMANow(3, shadowOAM, OAM, 128 * 4);

    if (BUTTON_PRESSED(BUTTON_START)){
        goToStart();
        lvl = ONE;
    }
}
void goToLose(){

    for (int i; i < HIDERCOUNT; i++) {
        hiders[i].found = 0;
    }
    friendsRemaining = 3;
    friendsFound = 0;

    stopSound();
    playSoundA(loseSong_data, loseSong_length, 1);
    state = LOSE;
}
void lose(){
    DMANow(3, gameoverPal, PALETTE, gameoverPalLen /2);
    DMANow(3, gameoverTiles, &CHARBLOCK[2], gameoverTilesLen / 2);
    DMANow(3, gameoverMap, &SCREENBLOCK[28], gameoverMapLen / 2);
    hideSprites();

    REG_BG0CNT = BG_CHARBLOCK(2) | BG_SCREENBLOCK(28) | BG_SIZE_SMALL | BG_8BPP;
    REG_BG1CNT = 0;

    waitForVBlank();

    DMANow(3, shadowOAM, OAM, 128 * 4);

    if (BUTTON_PRESSED(BUTTON_START)) {
        stopSound();
        goToStart();
        lvl = ONE;
    }
}

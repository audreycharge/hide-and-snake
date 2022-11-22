typedef struct {
    int row;
    int col;
    int rdel;
    int cdel;
    int width;
    int height;
    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;
    int checked;
    int found;
} ANISPRITE;

extern ANISPRITE seeker;
extern ANISPRITE snake;
extern ANISPRITE hiders[3];
extern ANISPRITE stick;
extern ANISPRITE bush[5];
extern ANISPRITE tree[3];
extern ANISPRITE hand;
extern ANISPRITE head;

#define HIDERCOUNT 3
#define MAPHEIGHT 256
#define MAPWIDTH 512

extern enum {ONE, TWO, THREE};

extern int lvl;
extern int curTime;
extern int bestTime;
extern int hOff;
extern int vOff;
extern friendsFound;
extern int fightTime;
extern int dodge;
extern int strike;
extern int bit;
extern int caught;
extern int king;
extern int buffer;

void initBG();

void initGame();
void updateGame();
void drawGame();

void initSeeker();
void updateSeeker();
void drawSeeker();

void initSnake();
void updateSnake();
void drawSnake();

void initHiders();
void updateHiders();
void drawHiders();

void initStick();
void updateStick();
void drawStick();

void initBush();
void updateBush();
void drawBush();

void initTree();
void updateTree();
void drawTree();


void initMiniGame();
void updateMiniGame();
void drawMiniGame();

void initHand();
void updateHand();
void drawHand();

void initHead();
void updateHead();
void drawHead();
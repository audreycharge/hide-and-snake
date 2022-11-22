
//{{BLOCK(gameover)

//======================================================================
//
//	gameover, 256x256@8, 
//	+ palette 256 entries, not compressed
//	+ 174 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 11136 + 2048 = 13696
//
//	Time-stamp: 2022-04-28, 01:11:43
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_GAMEOVER_H
#define GRIT_GAMEOVER_H

#define gameoverTilesLen 11136
extern const unsigned short gameoverTiles[5568];

#define gameoverMapLen 2048
extern const unsigned short gameoverMap[1024];

#define gameoverPalLen 512
extern const unsigned short gameoverPal[256];

#endif // GRIT_GAMEOVER_H

//}}BLOCK(gameover)


//{{BLOCK(forest)

//======================================================================
//
//	forest, 512x256@8, 
//	+ palette 256 entries, not compressed
//	+ 409 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x32 
//	Total size: 512 + 26176 + 4096 = 30784
//
//	Time-stamp: 2022-04-28, 00:29:26
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_FOREST_H
#define GRIT_FOREST_H

#define forestTilesLen 26176
extern const unsigned short forestTiles[13088];

#define forestMapLen 4096
extern const unsigned short forestMap[2048];

#define forestPalLen 512
extern const unsigned short forestPal[256];

#endif // GRIT_FOREST_H

//}}BLOCK(forest)

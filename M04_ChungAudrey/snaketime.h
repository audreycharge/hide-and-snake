
//{{BLOCK(snaketime)

//======================================================================
//
//	snaketime, 256x256@8, 
//	+ palette 256 entries, not compressed
//	+ 184 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 11776 + 2048 = 14336
//
//	Time-stamp: 2022-04-28, 02:15:02
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_SNAKETIME_H
#define GRIT_SNAKETIME_H

#define snaketimeTilesLen 11776
extern const unsigned short snaketimeTiles[5888];

#define snaketimeMapLen 2048
extern const unsigned short snaketimeMap[1024];

#define snaketimePalLen 512
extern const unsigned short snaketimePal[256];

#endif // GRIT_SNAKETIME_H

//}}BLOCK(snaketime)

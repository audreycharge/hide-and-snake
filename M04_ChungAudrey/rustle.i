# 1 "rustle.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "rustle.c"


const unsigned int rustle_sampleRate = 11025;
const unsigned int rustle_length = 10064;

const signed char rustle_data[] = {
0, 0, 0, 0, 0, -1, 0, -2, 0, -1, 0, -2, 0, -2, 0, 0, -2, 0, -1, 0, 0,
-1, -1, 0, -2, 0, -2, 0, -1, 0, -1, 0, -2, -1, 0, -1, 0, -1, 0, 0, 0,
-1, 0, -1, 0, -2, 0, -1, -1, 0, -2, 0, -2, 0, 0, -2, 0, -2, 0, -2, 0,
-2, 0, -2, -1, 0, -2, 0, -1, -1, 0, -1, -1, -1, -1, 0, -1, 0, -1, 0, 0,
-1, -1, -1, -1, 0, -2, 0, -2, 0, -1, -1, 0, -2, 0, -2, 0, -2, 0, -2, 0,
0, -1, 0, -1, -1, -1, -1, -1, -1, 0, -1, 0, -2, 0, -1, -1, -1, -1, 0, -2,
0, -2, 0, -2, 0, -1, -1, 0, -2, 0, -2, 0, -2, 0, 0, -1, -1, 0, -1, -1,
0, -2, 0, 0, 0, -2, 0, -2, 0, -2, 0, -2, 0, 0, 0, -2, 0, 0, -2, 0,
-2, 0, -1, 0, -2, 0, 0, 0, -1, 0, 0, -1, 0, -1, 0, -1, -1, 0, -2, 0,
-2, 0, -1, 0, 0, -1, 0, -1, -1, 0, -1, -1, 0, -1, 0, -1, 0, -1, 0, 0,
-2, 0, -1, 0, -1, 0, -1, 0, -1, 0, -2, 0, -1, 0, -1, 0, -2, -1, 0, -1,
0, 0, -2, 0, -1, -1, -1, -1, -1, 0, 0, -1, -1, -1, -1, -1, -2, -1, -2, 0,
-1, -1, -1, 0, -2, 0, -1, -1, -1, -2, 0, -1, -1, -1, -1, -2, -1, -2, -1, -2,
0, -2, -1, 0, -2, -1, -1, -1, -2, -1, -1, -1, -1, -2, -1, -2, -1, -2, -1, 0,
-2, -1, -1, -1, 0, -1, -2, 0, 0, -2, 0, -2, 0, -1, -1, 0, -1, 0, 0, -1,
-1, -2, 0, -2, -1, -1, 0, -2, -1, -1, 0, -2, -1, -1, 0, -2, -1, -1, 0, -2,
0, 0, -2, -1, 0, -1, -1, -1, 0, -1, -1, 0, -2, 0, 0, -2, 0, -1, -1, 0,
-1, -1, 0, -2, -1, -1, -1, -1, 0, -2, -1, -1, -1, -2, -1, -1, -1, -1, -1, 0,
0, -2, 0, -2, -2, 0, -2, -1, -2, -1, 0, -2, -1, -1, -1, -2, 0, -2, -1, -2,
0, -1, -2, 0, 0, -1, -1, -1, 0, -1, -1, 0, -2, 0, 0, -2, 0, -1, -1, 0,
-1, -1, -1, -1, -1, -1, -1, 0, -2, 0, -2, 0, 0, -2, 0, -1, -1, -1, -1, -1,
-1, -1, 0, -2, -1, 0, -1, 0, -1, 0, 0, -2, 0, -1, -1, -1, 0, -2, 0, -1,
-1, -1, -1, -2, 0, -1, 0, -1, -1, 0, -2, 0, -1, -1, -1, 0, -2, 0, -2, -1,
-2, 0, -1, -1, -1, -1, -2, -1, -2, 0, -2, -1, -1, 0, -2, -1, -2, 0, -2, -1,
-1, -2, -1, -1, -1, -1, -1, -1, 0, -1, -1, -1, -1, -1, -2, -1, -2, -1, -2, 0,
-2, 0, -1, -1, -1, 0, -2, -1, -2, -1, -1, 0, -1, -2, 0, -2, 0, -1, -1, -2,
0, -2, -1, -1, -1, -2, 0, -1, 0, -2, 0, -2, -1, -2, -1, -2, -1, -1, -1, -1,
-1, -1, -2, 0, 0, -2, -1, -1, 0, -2, 0, -1, -1, -1, -1, -1, 0, -2, 0, -2,
-1, -2, -2, 0, -1, -1, -2, 0, -1, -1, -1, 0, -2, -1, -2, 0, -2, -1, -1, -1,
-1, -1, 0, -2, 0, -1, -2, 0, -2, -1, 0, -2, 0, -2, -1, -1, -1, -1, -2, -1,
-1, 0, -1, -1, -1, -1, 0, -1, -2, 0, -1, -1, -1, 0, -1, -1, 0, -2, -1, 0,
-2, -1, -1, -1, 0, 0, -2, -1, 0, -2, -1, -1, 0, -2, 0, -1, 0, -2, 0, -2,
-1, -1, 0, -2, 0, -1, -2, 0, 0, 0, -2, 0, -1, -1, -1, 0, -1, 0, -1, -1,
-1, 0, -1, -1, -1, 0, -1, -1, -1, 0, -2, 0, -1, 0, -1, 0, -1, -2, 0, -2,
-2, 0, -2, -1, 0, -1, 0, -2, -1, 0, -2, 0, -1, -1, 0, 0, 0, -1, 0, 0,
0, 0, 0, 0, -1, -1, -2, 0, -1, -2, 0, 0, -2, 0, -1, -2, -1, -1, -1, -1,
-1, -2, -1, -2, -2, -1, -2, 0, -2, -1, 0, 0, -2, -1, -1, -2, -1, -2, 0, -1,
-2, 0, -1, -1, -2, 0, -2, -1, 0, -2, 0, 0, -2, 0, -2, 0, -1, -1, -1, -1,
-2, -1, 0, -1, -2, -1, -1, -1, -2, -1, -1, 0, -2, 0, -1, -1, -2, 0, -2, -1,
-1, 0, -2, 0, -1, -1, 0, 0, -2, 0, -2, -1, -1, -1, -1, -1, -1, 0, -1, -1,
0, -2, 0, -1, 0, -1, 0, -2, -1, 0, -1, 0, -1, 0, -1, 0, -2, 1, -2, -1,
-1, -1, -1, 0, 0, -1, 0, -1, 0, -1, 0, 0, -2, 0, -1, -2, 0, -1, -2, 0,
0, -2, 0, -2, -1, -1, -1, 0, 0, -1, 0, -1, -2, 0, -2, -1, -1, -1, -3, 0,
-2, -1, 0, 0, -2, 1, -1, -1, -1, 0, -2, 0, -1, -2, 0, -1, 0, -1, 0, -1,
-1, -1, 0, -1, -1, -1, -1, -2, -1, -1, -1, -1, -2, 1, -2, -1, 0, -2, -1, -1,
0, -1, -2, 0, -2, 0, -1, -2, 1, -2, 0, -1, -1, 0, -1, 0, -2, -1, -1, -1,
0, -2, 0, -1, 0, -1, -1, 0, -2, -1, -1, 0, -3, -1, -1, -1, -1, -2, 0, -2,
0, -2, 0, -2, 0, 0, -2, 1, -2, -1, 0, 0, -1, -1, -2, -1, -1, -1, -1, 0,
-1, 0, 0, 0, 0, -2, 0, -1, -1, -1, 0, -1, -1, 0, -1, -1, -1, 0, -2, 0,
-2, -1, -2, 0, -1, -1, 0, -3, 0, -1, -2, 0, 0, -2, -1, 1, -2, 0, 0, -3,
0, -1, -1, -2, -1, 0, -2, -1, 0, -3, 0, -3, 0, -1, -2, -1, -2, -1, -2, -1,
0, -2, -1, 0, -3, 0, -2, -1, -1, -2, 0, 0, -2, 0, 0, -3, 0, -1, -2, -1,
-2, -1, -3, -1, -1, -1, -2, -1, -2, 0, -1, -2, 0, -1, -1, -2, 0, -1, -3, -2,
-1, -1, -2, -1, -1, 0, -2, 0, -2, 0, 0, -2, 1, -2, -1, 0, -1, -2, 0, 0,
-1, 1, -1, -1, 1, -1, -1, -1, 0, -2, 0, -1, -1, -2, 1, -3, 0, 0, -2, 0,
0, -1, -1, 0, 0, -3, -1, -1, -1, -1, -1, 1, 0, -2, 1, -1, 0, 0, -1, 1,
-1, 0, -2, 0, 0, 0, -2, 0, -1, -1, -1, -1, -2, -1, -3, 0, -1, 0, -1, -3,
0, -1, -1, 0, -2, 0, -2, -1, 0, -2, -2, 0, -3, 0, -1, -2, -2, -2, 2, -3,
0, 0, -1, -1, 0, 0, -1, -1, 0, -1, -2, 0, -2, 0, -1, -2, 1, -3, 1, -3,
-1, -1, -1, -2, 0, -2, 0, -1, -3, 2, -4, 0, 0, -1, -2, -1, 0, -1, -1, -2,
1, -3, -1, -1, -1, 0, -1, -1, 0, -1, -2, 1, -1, -1, 1, -3, 0, 0, -2, -1,
0, 0, -2, 0, 0, -1, 0, 0, 0, -1, -2, 0, -1, -1, -1, -2, 0, -2, -2, 0,
0, -1, -1, 2, -1, -1, -1, 0, -1, -2, 0, 0, -2, 0, 1, -1, -2, 1, 0, -3,
0, 0, -2, 0, -3, 1, -4, 2, -1, -4, 3, -4, 2, -4, 0, -1, -4, 0, 0, -4,
1, 2, -6, 3, -2, 2, -5, 3, -1, -4, 0, 0, -1, -1, 0, -2, -1, -3, 1, -2,
-1, 0, -1, 1, 0, 0, 0, -1, -2, 0, -1, -3, 1, -1, -2, 0, -1, 0, -1, -4,
0, 1, -2, 1, -1, -2, -1, 0, -1, -1, -1, -3, 1, -2, -2, -1, -2, -3, 2, 0,
-3, 0, -1, -1, -1, -1, -3, 1, 0, -3, -1, -2, -2, 0, 0, -2, -1, 0, -1, -2,
0, -3, 0, -1, -1, 0, -1, 0, -1, -1, 1, -2, -2, 1, -1, 0, -4, 4, -3, -4,
3, -2, -1, 0, -1, 0, -1, 2, -2, 2, -2, -3, 3, -4, 1, -4, -1, 0, -3, 0,
-3, -3, 1, 0, -5, 3, -3, 0, -2, -1, -1, -3, 1, -3, 1, -2, 1, -1, -3, 3,
-3, 1, -1, -1, 2, -3, 2, -2, -2, 2, -2, 2, -7, 6, -4, -7, 11, -6, 1, 0,
-1, 0, -2, -3, 1, 2, -3, 0, -3, 5, -1, 0, -1, 0, -2, 3, 1, -5, 7, -4,
0, 3, -5, 1, -2, -1, 4, -5, 1, 1, -4, -2, -2, -2, 0, 0, -2, 0, -5, 0,
0, -3, 0, -3, -2, 1, 0, -2, 0, -1, -1, -2, 1, -4, -2, 1, -5, -2, -1, -2,
-4, 0, -2, -3, -2, -4, 3, -7, -2, 2, -5, 0, -4, 2, -3, -5, 3, -4, -3, 1,
-2, -3, 0, -1, -2, -1, -1, 0, -2, -1, 1, -2, 0, -2, 2, -5, -4, 1, -2, -1,
1, 0, 1, -1, -1, 0, -2, 1, -3, 0, -2, -2, 0, -1, 0, -1, -2, -1, 1, -4,
-1, 0, -2, -2, -3, 1, -4, -1, 4, -1, -1, 2, 1, -1, 2, -2, 0, -1, -3, 5,
-3, -4, 4, -5, -2, 2, -2, -1, 1, -1, -2, 0, -2, 0, -2, -2, 3, -4, -1, 3,
-5, -2, -1, -1, -2, -1, -3, 2, -5, 2, -1, -2, 1, -1, 0, -3, 1, -3, 1, -3,
0, -3, 0, 1, -2, 3, -3, -1, 0, -1, 0, -1, 0, -2, 1, -3, 0, 0, -3, 1,
0, -3, 2, 1, -1, -5, 3, -3, 0, 4, -7, 1, 4, -6, 2, 0, 0, 0, -4, 3,
-4, -1, -3, 0, -1, -2, -1, -2, -1, 0, -1, -2, 1, -1, -1, 1, -1, 1, -1, 0,
-1, -4, 4, -5, 3, 1, -3, 5, -3, 1, 0, 1, -2, 0, -1, 0, 2, 0, -1, 0,
-3, 0, 0, -4, -1, 1, -3, -1, 1, -4, -4, 1, -2, -3, 2, -2, -2, 1, -2, -1,
-3, 2, -1, -2, 2, -4, 2, -1, -5, 1, 0, -4, -1, -1, -1, -1, -2, 0, -2, -1,
-1, -1, -2, -4, 2, -4, -3, 0, -2, -2, -2, -2, -2, -2, -2, -1, -5, 1, 0, -4,
3, -2, -4, 1, -1, -5, 2, 1, -6, 2, -3, -4, 0, 1, -6, -3, 1, -3, -2, 0,
1, -5, 2, -1, -3, 2, -3, 2, -4, -1, 1, -5, -2, 0, -1, -1, 0, 0, -1, -1,
1, -2, -1, 1, -4, 3, -5, 2, -3, 1, -2, -1, 3, -2, 3, -7, 5, -1, -2, 0,
0, 1, -1, 2, -1, 3, -7, 4, -1, -2, 2, -6, 2, 0, -3, 1, 3, -3, 1, 0,
-2, -1, -2, 3, -5, 2, 4, -3, 5, -3, -2, 3, -1, -1, -4, 4, 1, -6, 2, -3,
0, -2, -3, 1, -1, 2, 4, -2, 0, 3, -2, 0, 0, 0, 0, -2, 2, -2, 2, -3,
-1, -2, -5, -5, 5, -6, -4, 5, 0, 4, -7, -1, 4, 1, -6, 4, -2, 0, 0, -5,
1, 0, -6, -1, 3, -7, -1, 4, -3, -2, 2, -1, 5, -3, 1, 1, -6, -1, 3, 0,
-1, 3, -5, -1, -1, -3, -1, -2, 0, 0, -8, 5, 0, -6, 3, -4, 1, -3, -1, 4,
-4, 0, 0, -2, 1, -4, -1, 0, 1, 0, -1, -3, 2, 1, -2, 0, -2, 0, -1, -1,
-3, 2, -5, -5, 2, 0, -3, -1, -7, -3, -1, -7, 2, -7, -2, -2, -6, -2, -2, -2,
-4, -1, 1, -6, -2, 0, -2, -2, -2, 0, -3, 0, 0, -7, 0, 1, -6, 3, -4, -4,
4, -5, -4, 4, -5, -2, 0, -4, -2, -3, -2, 0, -1, -2, 2, -3, -2, -1, -6, 1,
0, -2, 0, -2, 2, -2, -5, 4, -2, -2, 1, -2, -1, 1, 0, -2, -1, 4, -7, 0,
4, -6, 2, -1, 1, -3, 0, 2, -7, 5, 2, -7, 1, 1, -6, 6, -1, -9, 4, -1,
-7, 7, -2, -5, 2, -4, 0, -2, -3, -1, 0, -1, 1, -2, 0, -1, -2, 2, -1, -1,
3, -4, 1, 1, -3, 0, 2, -4, -2, 4, -4, -3, 3, -4, 2, -2, -3, 1, -1, -1,
-2, -1, -1, 3, -2, 2, 0, -1, 2, -5, -2, -2, 0, -1, -4, 10, -6, -3, 11, -6,
3, 2, -5, -2, -1, -1, -3, -1, -2, -2, 0, -1, -5, 3, -4, -1, -2, -2, 0, -3,
2, -3, -2, 1, 1, -5, 0, -1, 1, -4, -2, 1, -6, -1, 0, -3, -1, -1, -3, -1,
-3, -3, 2, -3, -3, 0, -1, -2, -4, -1, -2, -1, 0, -4, -3, -3, -3, -2, -3, -2,
1, -5, -3, -1, -2, -4, 0, -1, -2, -1, 0, -1, -1, -4, 1, -3, -3, 2, -3, 0,
0, -1, -1, -4, 2, -2, -1, -1, 0, 1, -3, 2, -3, -4, 2, 0, -5, 4, -2, -6,
1, 0, 1, -3, 0, 2, -3, 1, -2, 1, 2, -6, 2, 3, -2, -2, -2, 1, -1, -5,
-1, 3, -3, 1, -2, 0, -1, 1, -3, 1, 3, -2, -1, 0, 0, -1, 1, -4, 2, 1,
-5, 3, 1, -1, 0, -1, 4, -1, 0, -1, 0, 2, -2, 2, -1, -2, 3, -1, 1, -2,
3, -3, -2, 1, -5, -3, 4, -2, 0, -1, -3, 2, -2, 0, -2, -4, 4, -2, -2, 1,
1, -1, -3, -1, -1, 1, -2, 0, 2, -2, 1, 2, -1, 0, 0, 2, -3, 0, 4, -3,
-2, 2, 1, -1, 1, -2, -1, 2, -1, -4, 6, -2, -4, 4, 0, -3, 0, -2, -1, -2,
-3, -1, 0, -1, -1, 2, 0, -4, 1, -1, 0, -1, 1, -1, 0, 2, -1, -3, -3, 2,
-3, -4, 1, -2, 0, -1, -2, 1, -3, 0, 2, 0, 1, -4, 1, 1, -6, -2, 0, -2,
-1, 0, -2, -5, 3, -1, -1, 0, -1, -2, -1, 2, -4, 0, 2, -2, -2, 2, -5, -1,
1, -4, 0, 0, -5, 4, -1, -2, 1, 1, -1, 1, 3, -2, 3, 0, -4, 2, -1, -2,
3, -3, 0, 2, -2, -2, -2, 1, -1, -1, -4, 1, -2, 0, -3, -1, 0, -2, -2, -3,
-1, -2, -3, -3, 1, -5, 1, -2, -1, 2, -5, -1, 0, -2, -5, 1, -2, -5, 5, -3,
-4, 1, -1, 1, -4, 1, 3, -2, 0, 0, -2, 1, -1, 0, -2, -3, 2, -2, -3, 1,
-1, 0, -2, -4, 0, 0, -1, -4, 1, -2, -2, -1, 2, -1, -1, -5, 1, -2, -1, 0,
0, 1, -1, -2, -2, 4, -6, -4, 3, -2, -5, -1, 0, 0, -3, -2, 2, -1, 0, 1,
-2, 1, -3, 1, 3, -2, 3, 0, -3, 1, 0, 1, -2, -2, 5, -2, -4, 0, 2, -4,
-3, 1, -4, 0, 0, 0, -2, 2, -1, -5, 1, 4, -5, -5, 9, -7, -5, 3, 0, -3,
4, -1, -4, 2, -2, -5, 1, -3, -6, 4, -4, -3, 3, -3, -6, -2, 6, -7, -5, 7,
-6, -5, 4, -3, -4, 1, -2, -1, -4, -3, 1, -1, -6, -3, 5, -11, 6, 9, -7, 0,
5, -4, -5, 8, -8, -6, 6, -11, -6, 8, -2, -8, 7, -9, -6, 8, -12, 2, -1, -4,
6, -8, -5, 7, -4, -5, 5, 5, -4, -3, 5, 2, -3, 0, -3, 3, -1, -5, 1, 0,
0, -3, -7, 6, 2, -5, 1, -2, -4, -3, 1, 0, -4, -2, 6, -5, -5, 4, -1, -4,
-2, 6, -1, -4, -1, 6, -6, -1, 0, -1, -1, -6, 0, 1, 1, -3, 1, 0, -4, 2,
-3, -4, 3, 0, -4, -1, 2, -3, -1, 1, 2, 0, -1, -3, 0, 4, -5, 2, 0, -6,
1, 2, -4, -1, 0, -2, -3, -4, -2, -1, -5, -1, -2, -3, -4, 0, -1, 1, -7, 1,
3, -5, -3, -2, -2, 1, 2, -5, 0, 1, -6, -5, 8, -2, -11, 4, 7, -8, -2, 7,
-1, -2, 6, -7, 2, 3, -8, 7, -3, -4, 6, -3, -3, 3, -3, 3, 2, -5, 1, -3,
3, -4, 0, 3, -1, -3, -2, 9, -8, -5, 13, -11, 3, 8, -11, 4, 2, -4, -1, 3,
-3, 1, 3, 1, -3, 4, 0, -1, 1, -4, 2, 3, -1, -4, -3, 0, 0, 1, -5, 0,
-3, 0, -4, -2, 2, -3, 0, -4, -1, -4, -1, 5, 0, -3, -4, 3, 6, -9, 4, 7,
-10, 0, 2, -3, 1, 6, -7, 0, 2, -6, 4, -5, -6, 5, -3, -5, -1, -1, 2, -5,
-6, -2, -3, -2, 1, -5, 0, 2, -3, -1, -2, -1, 0, -3, 1, -3, 1, -1, -5, 0,
0, -3, 1, -1, -6, 2, -6, -2, 8, -4, -3, 4, -4, -3, 3, -1, 4, -1, 0, -2,
1, 4, -7, -4, 3, 1, -2, -1, 4, 1, -2, -3, 3, -1, 1, -3, 2, 5, -6, 3,
5, 2, -8, 1, 0, -3, -2, -4, 0, 4, -3, -7, 3, -4, -2, 1, 1, 0, -3, 4,
1, -5, 2, 3, -2, -5, 0, -2, -6, 6, -3, -4, 6, -3, -2, -2, -5, 2, 2, -7,
3, 3, -9, 1, 2, -5, 0, 2, -5, -3, -4, -2, -1, -1, -5, 1, 0, -1, 0, -4,
0, -4, -3, 1, -4, -8, 7, -4, -3, -1, 0, -7, 3, 4, -11, 10, 0, -5, 5, -4,
-10, 7, 2, -12, 1, -1, -6, -4, 0, 4, -7, -12, 7, -7, -6, 1, 1, 1, -6, -3,
1, 7, -9, 6, -4, -4, 3, 3, -5, -5, 11, -9, -2, 4, -4, -3, 9, 0, -5, 9,
-1, -5, 4, -8, -7, 2, -2, -3, 4, 4, 1, -1, 2, 2, -2, 1, 1, -3, 2, -5,
-5, 0, -3, -8, 6, 2, -14, 10, -4, -8, 10, -1, -10, 12, 5, -1, 1, -9, 5, -13,
1, -4, 1, 3, -2, 8, 0, 3, -6, -6, 7, -6, -4, 2, -3, -5, -3, -2, 1, 1,
-6, 1, 0, 0, -1, -6, 6, 0, -9, 9, -4, -1, -6, -9, 12, -6, -1, 5, -3, 0,
0, -1, -3, 0, 0, 1, -3, -3, 1, 4, -8, -3, 4, 2, 4, -5, 4, -5, -1, -6,
-6, 6, 4, 1, -3, 3, -3, -2, -7, -2, 4, -1, 0, 7, -8, 5, -1, -16, 4, 2,
-7, 0, -3, -4, 4, -4, -5, 7, -3, -13, 9, -6, -2, 1, -7, 0, -1, -4, -1, 0,
-6, 1, 2, -11, 3, 3, -8, 5, -4, 6, -1, -4, 4, -4, -8, -1, 7, -3, -13, 2,
2, -7, 8, -13, -5, 2, -4, -2, -3, 2, 1, 2, 1, 2, 3, 4, 5, -4, -5, 10,
-3, 0, 4, -8, 8, -4, -7, 5, 11, -13, -4, 28, -21, -3, 5, -7, 4, -6, 0, 0,
-1, 0, 0, -8, 4, 1, -9, 5, 5, -8, -5, 2, 7, -1, -10, 4, 5, -4, -4, 0,
-2, 6, -3, -1, 0, 2, -4, -1, 2, -3, 4, -10, 5, 3, -11, 3, 6, -8, 2, 1,
-6, -2, 4, -5, -4, 3, -1, -1, 0, -1, 2, -8, 0, 8, -4, 3, -1, -6, -2, -1,
-4, -2, 3, -3, -1, -4, 3, -4, -4, 1, 7, -9, -1, 7, -14, 10, -9, -2, 1, 0,
4, -4, 0, 0, -1, -6, -1, -2, -5, 1, 2, -10, 8, -1, -8, 6, -4, -3, 2, -8,
1, -4, 2, -3, -5, 11, -7, 0, 2, -12, -3, 7, -1, -8, 5, 14, -9, -2, 6, -2,
10, -3, -4, 1, 4, -2, -2, -4, 0, 0, 4, 6, -6, 1, 5, 4, -6, -3, 3, 12,
-11, 2, 9, -7, -1, 4, 1, -7, 5, -5, -6, 0, 3, -6, 3, -1, -10, 0, 7, -6,
-8, 13, -4, 6, -5, 5, 4, -12, 3, 6, -4, -8, -7, 6, 3, -7, 5, -3, 0, 7,
-13, -1, 18, -18, -7, 10, -7, -5, 0, -16, 4, -4, -3, 5, -12, 7, -9, -6, 10, -6,
-6, 13, -4, -9, 1, -5, -14, 9, -1, -3, -1, -8, -3, -16, 0, -5, -5, -1, 6, -8,
2, 15, -4, -3, -1, 3, 0, -8, -1, 3, -5, 4, -5, -4, 2, -4, -7, 7, 4, -5,
3, -4, 6, 0, -1, 6, 5, -2, 7, -7, 0, 0, -2, 5, -12, 6, -6, -11, 6, 10,
-3, -4, 3, -1, -5, -12, 7, 1, -4, 3, -8, -2, 5, -1, 6, 4, -10, -1, 4, -9,
3, -9, -7, -3, 5, 7, -7, 5, -1, 0, -1, -4, 3, -1, -1, -5, -2, -3, 5, 0,
-8, 3, -4, -1, -2, -1, 3, -2, -4, 4, 3, -4, -1, 4, 0, -8, 3, -1, 0, -2,
3, -2, -2, 0, 5, 1, -5, 4, -3, -3, 4, -2, -5, 5, 2, -5, -2, 8, -3, 0,
-3, -6, -4, 3, -5, -1, 1, -4, -1, -8, 3, 1, 4, -5, -1, 3, -3, -4, 1, 5,
-10, -5, 0, -2, -7, 4, -8, 1, 6, -13, -4, 6, -2, -7, 0, 6, -4, 0, -3, -5,
5, -3, 0, 0, -1, -1, 0, -1, 1, 0, 1, 3, 0, 2, -5, 4, 0, -11, 0, 0,
-8, -5, 0, -2, -1, -3, 5, -5, -9, 3, 1, -2, -4, 4, 2, -6, -2, 4, -8, 4,
1, -2, 4, -4, 5, -2, 5, -3, -3, 3, -1, -2, 4, -1, 3, 0, -3, 2, -1, -1,
0, -4, -1, -2, -2, 6, -7, -2, 6, -5, -4, 5, 1, -10, -5, 6, -7, -7, 1, -4,
-4, 0, -4, -4, 1, -5, 3, -5, -2, 0, 0, -3, -3, -1, -2, 5, -4, -1, 3, -1,
1, -2, 4, -4, -7, 7, -4, -6, -1, -1, -4, -2, 0, 3, -3, -3, 8, -4, 0, -5,
5, 4, -9, -2, 3, -5, 1, 2, -1, 4, -2, 0, -1, -1, -2, -3, -2, -3, 1, -1,
-2, -3, -5, 2, 0, 3, 0, -4, 4, 0, -2, 3, -4, -1, 3, -3, 2, 2, -2, 5,
6, 5, 3, 3, 0, 1, -3, -7, 7, 1, -5, 11, -3, -1, 6, 0, 0, -9, 2, 6,
4, -1, -2, 3, -4, -4, 1, -4, 1, 5, -5, 0, -5, 1, -1, -3, -2, 1, 0, -6,
4, -2, -10, 0, -3, -7, -4, -1, 1, -11, -4, 8, -4, -2, 5, -9, -1, -10, -5, -4,
-17, 4, -3, 4, -2, -5, -9, -7, 9, -10, -1, 0, -6, 5, -5, -7, 8, -6, 6, 5,
-9, 5, -3, 0, 2, 2, -4, 6, 3, 2, 5, -7, 1, -9, 4, 3, -1, -7, 2, 8,
-6, 0, 3, -3, 1, 4, 1, 0, 2, 2, 3, 1, 4, 4, -1, -1, 5, 7, -13, -1,
5, 4, -10, -18, 8, -3, -2, -8, -4, 8, -5, -11, 7, -6, 1, 3, 3, 4, -16, 5,
-4, -8, -3, 1, -10, 0, 5, -12, 3, 3, -3, -6, 2, 2, -2, -4, 7, 4, -2, 2,
2, -7, 8, -7, 1, 0, 0, -1, -7, 3, -5, 2, -4, 4, -9, -1, -2, 3, -2, -1,
-2, -11, 0, -4, -1, -8, 0, -5, 2, -2, 2, -7, -3, 6, -2, -7, -3, 1, -12, 7,
1, -9, -1, 3, -5, 1, -2, -4, -3, -8, 4, -3, -4, 0, 0, -7, 0, 1, -4, -4,
-9, 4, 2, -10, 1, 1, -3, -4, 0, -2, -3, 1, 2, -6, -1, 3, -1, -5, -8, 2,
6, -6, -4, 2, -7, -3, 0, 5, -3, -5, 6, 2, -2, -5, 2, 6, -3, 3, 8, 1,
-5, 8, -6, -1, 4, -6, 5, -10, 1, 5, 2, 0, 0, -1, -3, 7, -4, -7, 1, 0,
-7, 11, -4, -7, 8, -1, -5, 0, -4, -2, 1, 1, -1, -5, 7, 1, -8, 3, 4, 1,
-1, 1, 1, -2, 1, 0, 4, -6, 3, 0, 1, -1, -3, -1, -6, 4, -1, 4, -2, -2,
-4, 0, 4, -6, -6, 6, -2, -4, -4, -1, -4, -2, -2, -3, -3, 2, -1, -9, 1, -4,
2, 4, -2, -5, -3, 6, -2, 1, 1, -3, 2, -6, -5, 5, -1, -2, -8, 2, -2, 0,
5, 2, -2, -2, -2, 5, -5, -4, 0, -8, 8, -6, -3, 0, -5, -1, -3, -1, -1, 2,
-5, 0, 4, -2, -4, 4, 2, -3, 6, -3, -6, 0, -1, 0, -1, -2, -2, 4, 1, 1,
2, 3, -6, -2, 6, -6, -6, 13, -2, -9, 6, -6, -1, -2, 0, 0, -5, -1, -5, 0,
2, -2, -4, 2, -1, 2, -1, 4, -3, -3, -1, -5, 8, -14, 10, 3, -6, 6, -7, 6,
2, -2, -7, -3, 4, -6, -2, -5, 3, 0, 0, 17, -6, 6, 10, 5, -18, 0, 16, -14,
0, 4, 6, -6, -16, 18, 1, -12, 10, 6, -7, 14, 2, -4, 9, -25, 5, 13, 5, -8,
-1, -3, 10, -3, -10, 5, -4, -1, 8, -8, 0, 5, 0, 8, -16, 5, -1, 4, -19, 10,
-1, -14, 5, -5, 15, -23, 10, 6, -24, 12, -8, -5, 1, 1, 4, -4, 3, -2, 1, 0,
13, -13, 9, 10, -24, 1, 13, -18, -11, 14, 0, -2, 3, -1, 0, -1, -15, -6, 1, 10,
-13, 5, -11, -6, 7, 2, 8, -13, 1, 2, 8, -4, 1, 1, 1, -3, -1, 9, -3, -6,
11, 0, 5, -3, -7, 8, 3, -2, -11, -1, 8, 6, -18, -2, 3, 4, 3, -1, 10, 0,
-10, 3, -3, -6, -1, -3, 3, -3, 6, -3, -9, -3, -10, -2, 5, -5, -16, 6, 3, -1,
3, -6, 0, -4, 2, -9, -1, 0, -8, 8, 0, -10, -6, 0, 0, -1, -8, -2, 0, -3,
-4, -4, -3, -2, -3, -4, -8, -3, -8, -12, 6, -5, 2, -5, -5, -4, 0, -5, -9, 6,
-2, 1, 4, -1, 3, -1, -2, -4, 7, -7, -7, 6, -4, -5, 2, -1, -10, 5, -3, -2,
-6, -1, 6, -5, -6, 2, -4, 0, 2, -2, -3, -2, 0, -5, 10, -2, -4, 2, 8, 3,
-6, -3, 1, 3, -1, -6, -8, 11, -6, 1, 4, -5, -3, -10, 7, -7, 0, 1, -10, 8,
-2, 5, -4, -3, 11, -10, 0, 2, 0, -1, -7, -9, -1, -2, -6, 5, -8, 12, -5, -9,
14, -6, -4, -3, 6, 8, -1, -1, -6, 9, -1, -7, 6, -6, -11, -10, 14, 4, -4, -18,
-5, 20, -14, 3, -9, 3, 7, -15, 5, -11, -3, 3, 1, -1, -4, 5, -15, 10, 4, -6,
8, -8, -1, 7, 3, 5, -4, -1, 1, -6, 6, -5, -2, 2, -1, 5, -1, -2, -1, 0,
9, 4, -6, 3, 5, -3, 4, -2, 3, 10, -9, -7, 1, 11, -4, -3, 1, -5, 9, -5,
0, -3, -4, 1, -6, 6, -15, 3, -2, 12, -1, -3, 8, -10, 8, -2, 9, -7, -3, 4,
-6, 5, -2, -8, 7, -11, -7, 3, -1, 6, -5, 6, -12, 7, -5, 1, 2, -11, 8, -10,
-4, -1, 8, -2, -3, -4, 0, 8, -4, -5, 0, 12, -12, 1, 4, -9, 3, 1, -2, 1,
-2, -1, -4, 1, 7, -15, 2, -5, -3, 9, 5, -2, -12, 16, -11, 6, 1, -7, 5, -1,
-6, -7, 3, -3, 4, -14, 12, -4, -3, 9, -8, -4, -4, 13, -6, 4, -2, 2, 3, 0,
1, 2, 6, -6, 4, -2, -4, 2, 1, 4, 2, -3, 6, -1, 0, -5, 5, 3, -4, 0,
0, 10, -10, -3, 12, 2, -7, 8, -5, -3, 1, -5, 3, -2, 2, -8, 4, -2, 16, -16,
-8, 25, -30, 12, -1, -7, 8, -6, 0, -6, 1, -2, 0, -2, -1, -3, -1, 1, -1, 4,
2, -18, 8, 2, 2, -5, -7, 4, -1, -2, 3, 2, -7, 9, -6, -1, 1, -3, -3, 2,
2, -3, 1, -4, -1, 1, 1, -7, -8, 0, 3, 0, -4, -2, -1, -2, 0, 4, -4, -1,
-7, 3, -2, -6, 3, -4, -1, -1, 3, -3, 5, -1, -1, 0, -1, 5, 0, -1, -6, 0,
2, -2, -3, -2, -5, 1, 0, 0, 4, -8, 0, 3, -9, -3, 0, 1, -1, -6, -6, 3,
6, -10, -2, -2, -6, 6, 1, -4, -5, 0, 1, 0, -10, 0, 3, -6, -5, -1, 4, 6,
-5, 1, -1, 0, -1, -5, 2, -9, -2, 4, 1, -11, 0, 5, -9, -2, 3, -1, -5, -5,
0, 5, -3, -2, 5, -3, 5, -5, 0, 3, -5, 4, 2, 3, -7, -2, 0, 4, -1, -6,
1, -3, -3, -3, -1, -4, -4, 4, 1, -3, -7, 4, 0, 0, 5, -3, -2, -4, 1, -4,
-1, -4, -2, 2, -2, -3, -6, -2, 3, 1, 4, -6, 1, 1, -1, 0, 2, -2, 4, -7,
-1, 4, -9, 0, 3, 2, -10, 4, 1, -2, -12, 2, 5, -3, -6, 0, 4, -2, -1, 0,
-3, 4, -6, -4, 4, -8, 6, -7, -2, 1, -3, -3, 0, -9, -6, 6, -7, 3, -7, -5,
5, -8, 1, -7, -4, 4, -5, -1, 0, -7, 1, -8, -1, 4, -9, -4, 2, -4, 2, -5,
-1, 4, -6, 1, -1, 0, -2, -6, 4, 2, -11, -3, 1, -2, -2, 0, -4, -3, -7, -5,
7, -4, 3, -8, 0, 1, 3, -2, 1, -2, 3, -4, -5, 5, -6, 2, -5, -3, 1, 0,
0, -2, -5, -2, 5, -3, 0, -4, 4, 1, -6, -2, 1, -3, -3, 2, -1, -3, 1, 1,
-1, 2, 0, 0, 1, -4, -2, 3, -4, 1, -4, -7, 3, 4, 1, -5, 1, -4, 2, 1,
-1, 0, -5, 1, -2, 3, 1, -7, -2, 4, -2, -1, -5, 0, 2, 0, 2, -8, 3, -2,
-4, 1, -7, 6, -1, -3, 3, -10, 0, 2, -6, 1, -6, 0, -5, -6, 1, 4, 5, -6,
2, -4, 1, -1, -4, 4, 0, 2, -2, 3, -6, 2, 1, -3, -8, 0, 2, -12, 11, -3,
-2, -3, -1, -1, -1, 4, -3, 1, 3, -2, -2, 4, -3, 5, 1, -7, 2, -7, 4, 9,
-8, 0, -1, 1, -3, -5, 3, -3, -3, -4, 0, -1, 1, -5, -2, 7, -5, -3, 5, -2,
0, 5, -12, 5, -3, -7, 7, -1, -2, -2, 1, 0, -6, -4, -1, 5, 3, -2, 2, -5,
2, 3, -2, 1, 1, -4, 6, -6, -7, 4, -2, 1, -4, 0, 1, 1, 1, 2, 0, -3,
0, -1, -4, 2, 2, -6, 4, -2, -7, 1, -3, -2, 0, 7, -5, -3, 2, 1, -5, 1,
-6, 3, -3, 0, 13, -11, 1, -6, 8, -2, -6, 6, -4, -2, 3, -6, -1, -8, 4, -6,
-5, -5, -5, 9, -12, 8, -6, 1, -1, -2, 1, 0, -3, 6, -2, -3, 5, -12, -1, -2,
7, -4, 0, -3, -7, 3, 3, 0, 4, 3, -3, 8, -6, -4, -3, 6, 1, -5, 4, 2,
0, 0, -1, -1, 1, -2, -2, -4, -4, -2, -1, 0, -2, 1, -1, -2, 1, 3, -1, -10,
-1, 6, 6, 2, -2, 2, -2, -3, 1, -7, -2, -5, -3, 5, 1, 0, -2, 3, 0, 2,
-5, 9, 0, -9, 1, -3, 5, -5, 2, -4, -4, 5, 3, -11, 1, 5, -7, 2, -3, 1,
1, -4, 0, 3, -8, -8, 6, 1, 0, -6, -6, 8, -4, -5, 0, -5, -1, 0, -7, -6,
7, -7, 2, -4, -4, -1, -3, -2, -2, 10, -5, -3, 1, 1, -3, 0, 3, -3, 1, 2,
-5, -4, 4, -4, 0, -2, -2, -3, 3, -2, 0, -5, 1, 1, -5, 0, -4, 5, -2, -4,
-1, -5, -2, -2, -1, -2, -3, -2, -7, -1, -1, -4, 4, -6, -2, 2, 0, -1, 3, -7,
4, 1, -6, 0, -2, 4, -5, 0, 0, -5, 0, 0, -7, 4, -6, -2, 1, -4, 3, -3,
0, 2, -3, 1, 3, 0, -11, 4, 1, -4, 4, -7, 4, -3, 2, -3, 3, 4, -5, 0,
-7, 4, 1, -2, -2, -1, 0, -1, -4, 1, -2, 1, 0, -2, 0, -4, 1, 0, -4, -3,
-5, -2, -2, -5, -2, -3, 1, -3, 0, 0, 3, -4, 0, -3, 3, -5, -1, 4, -9, 4,
-8, 1, 4, -8, -1, 4, -2, -2, -2, -4, 3, -6, -1, -6, -3, 5, -7, 0, 0, -7,
1, -5, 1, -5, -3, -3, 1, 1, -2, 0, -4, 4, -3, 1, 1, 1, 3, -3, 5, 0,
-1, 2, -3, 1, 0, -3, -4, 4, 1, -5, 0, 3, 2, -2, 0, 1, 2, 0, 1, 0,
-4, 3, 3, -2, -3, -4, 4, 2, 2, -8, -8, 5, 1, -4, -1, 3, -1, 3, 0, -4,
0, 1, 0, 2, 0, -1, 2, 2, -2, -1, 3, -3, 1, -3, -1, -1, 1, 2, -4, 2,
-5, -3, 6, -6, -2, 2, 2, -4, -2, 4, -2, 1, -3, -2, -4, -2, 3, -1, 1, 0,
-3, -1, -5, 0, -4, -1, 0, -9, 0, -8, -1, -3, -1, 1, -6, 2, -3, -1, -2, 0,
0, 1, 3, -4, 1, 0, -3, 4, -2, 0, -4, 1, 0, -5, 2, 2, 1, 1, -1, -2,
-2, -1, 2, 1, 1, -1, -2, -3, 4, -4, 4, -3, -1, 1, -2, 2, 2, 4, -3, 3,
2, -4, 1, 1, -1, -1, -1, 0, 0, 0, 3, 1, -2, 0, 4, -2, -2, 3, 1, -6,
7, -2, -2, 2, 0, 2, 0, -3, 2, 4, -1, 0, 2, -6, -2, 0, 0, 2, -9, 0,
3, 0, -2, -1, 1, -3, 0, 0, -1, -1, -3, 0, 2, 1, -1, -5, 2, 5, -2, 1,
-1, -3, 4, -6, 0, 2, -2, -5, -4, 0, -3, -1, -3, 0, -1, -3, -3, -1, -6, -1,
-2, -3, -1, -2, -4, -3, 2, -7, 1, -3, 0, 2, -4, 0, 2, -5, -1, 1, -4, -2,
3, -6, 0, -2, -5, 0, -4, 1, -5, -1, 0, -1, -2, 2, -2, -5, 8, -3, -4, -1,
-4, 3, -3, -3, 1, -9, 0, 2, -2, 0, 0, -4, -4, 2, -1, -2, 1, -1, -6, 2,
0, 0, 1, -3, 0, -1, 0, -4, 3, -1, -3, 1, 1, -3, -1, 0, 1, -1, -1, -3,
-2, -1, -2, 1, -4, 0, -1, -4, 4, -3, -3, -1, -2, 2, -3, -2, -1, -1, 3, -5,
-3, 0, 1, -1, -2, 1, -1, -3, 3, 1, -1, 1, 1, -1, 3, -4, 0, 3, -2, -1,
-2, -2, 1, -4, 0, 0, -2, 1, -1, 2, -4, -2, 1, -2, -2, 1, -4, -3, -3, 3,
0, -4, 3, -1, -1, 2, 0, 0, 0, -4, 3, -2, 0, 1, -4, 0, -1, 2, -4, -3,
1, -4, -1, -4, -1, -2, -3, -2, -1, 0, -2, -1, -4, 0, -1, 0, -4, 0, -1, -2,
2, -4, -1, 0, 2, -4, -1, 1, 2, -3, 1, -4, 2, -1, -1, 1, -2, -3, -2, -1,
-3, -1, -2, 2, -3, -1, -2, 4, -2, -1, -3, -1, 0, -5, 0, -2, 4, -3, -1, -1,
2, -2, -2, 3, 1, 0, -3, 0, -1, -3, 0, -2, -2, -2, -2, -1, -2, -2, 0, -2,
-3, 1, -2, -7, -2, 0, -3, -3, -1, -2, -2, 0, -1, 0, 1, -6, 2, 0, -1, 2,
-4, -2, 0, 1, -2, -1, -1, 1, 0, 0, -3, 2, -3, 0, 0, 0, 2, -1, 0, -3,
1, 1, 0, -2, -1, 1, -1, -2, 1, -1, 0, 0, 1, -3, 0, -4, 1, -1, -2, -1,
-2, 1, -3, -1, -4, 1, -3, 0, -3, -3, 2, 0, -4, -2, 3, 0, -3, 2, 0, -6,
1, -3, 0, -2, -1, -1, -1, 1, -1, -1, 3, -5, 0, -2, -3, -2, -3, 2, 0, -2,
0, 1, 0, -1, -1, 0, -2, 0, -2, 1, 2, -3, 0, 2, -2, 3, -4, 3, 1, -2,
5, -2, 0, 0, 1, 1, 0, 0, 0, 1, -2, -1, -4, 2, -1, -4, -1, -1, -4, 0,
1, -4, -2, 0, -2, -3, -1, 0, 0, 1, -4, 1, -1, -3, 4, -3, 1, 3, -5, -1,
1, 1, 2, 0, 1, -2, 0, 1, -5, 1, -2, 1, -4, -1, -1, -2, -1, 0, -3, -3,
-2, -4, -2, -2, -3, -1, -4, -3, -3, -3, -1, -2, -3, -2, -1, -3, -1, -3, -3, 0,
-3, -3, -2, -3, -2, -1, -1, -1, -2, -2, -2, 1, 0, -2, -2, 0, -2, -3, 0, -2,
-3, -2, -2, 0, -4, 0, -4, 0, -3, -2, -1, -3, -2, -2, -2, -1, -3, -1, 0, -3,
-1, -1, 0, -2, 0, -2, -2, 2, -2, -1, 0, 0, -1, -2, 2, 1, -1, 0, 1, 1,
3, -2, 2, 4, -1, -1, 2, -1, 2, -1, 2, -1, -1, 3, -1, -1, -2, -1, -2, 0,
-1, 0, -1, 0, -4, 0, 3, -6, 2, -3, -3, -1, -1, -3, -2, 2, -1, -1, 1, -3,
-1, 2, -3, -3, -1, -2, 0, 0, -2, -1, -4, 3, 0, -4, 3, -2, -2, 1, -2, -2,
-1, 0, -2, -1, -2, 0, 0, -4, -1, -1, -3, -3, -4, -2, -3, -3, -7, -1, -2, -2,
-1, -5, -1, -1, 1, -2, 1, 1, -1, -3, 1, 0, -1, 0, -1, 0, 0, 0, 0, -2,
4, -1, -2, 1, -4, -1, -2, -1, -3, 2, 2, -1, -2, -3, 0, -1, 2, -3, -2, -4,
2, 0, -10, 4, -2, -6, 2, -1, -1, 0, 1, -2, 1, 1, 2, 2, 3, 1, 0, -1,
1, 0, 2, 1, 1, 1, -2, 1, -1, -2, -1, 0, 0, 0, -1, -1, -1, -1, -2, 0,
2, -2, 2, -1, -2, 2, 0, 2, -1, 1, 2, -2, 0, -1, 0, 1, 0, -2, -1, -1,
1, -3, 1, -2, -1, 0, -1, 0, -2, -1, 1, -1, -1, -2, 0, 0, 0, 2, -2, -1,
-1, -2, -2, -3, -1, -3, 0, -2, -1, 3, -3, 0, 1, -1, 1, 1, 1, -1, 2, 1,
3, 1, -3, 1, 2, 0, -1, -2, 1, -2, 1, 2, -4, -1, -2, 1, -4, -2, -2, -1,
-2, -1, -3, -1, -1, -2, -1, 0, -3, -2, -3, -2, -1, -2, -1, -1, -3, 1, -2, 1,
-3, 0, 1, -1, 0, -3, 3, -2, -1, -3, -1, 2, 1, -1, -1, 1, 3, 1, -5, 0,
0, -2, 0, 0, -1, -2, -1, -4, -3, 1, -2, -4, 1, -2, -1, -3, -2, -1, -3, 1,
0, -2, 1, -2, 0, 1, -4, 0, -1, -2, -1, -4, -2, 3, -3, -3, 0, 2, -1, -6,
-5, 5, 2, -6, -2, -3, 2, -1, -6, 4, -4, -5, 1, -10, 1, -2, -4, -3, -7, -1,
-1, -4, -3, 0, -1, -1, -2, -1, -2, -5, 0, -5, -1, -3, -2, 1, -5, 2, -5, -3,
0, -1, 3, -8, -2, 7, -2, -5, 0, -5, 6, 5, -3, 0, -5, -2, 4, 0, -3, 0,
-1, 0, 1, -2, -2, -1, 0, 1, -4, -1, 3, -6, -2, 1, -3, -6, 2, -5, 4, 1,
-8, 5, -7, 3, -2, -2, 0, -3, 2, -4, -1, 3, 1, -1, 1, 0, 2, -2, 2, 1,
-1, 2, 2, 3, 0, 1, 2, 1, 1, 0, -1, 1, 0, 0, 4, -1, -1, 2, -2, -1,
1, 0, 0, -1, 0, -3, 0, -3, 1, 1, -1, 0, 0, 0, -2, 1, 2, -3, -1, -1,
0, 0, -1, 4, -3, -4, 4, -1, -1, 3, -2, -2, 2, 0, 0, -3, 0, -3, 0, 2,
-3, -2, 0, -3, -3, -1, -1, -3, -1, -4, -2, 0, -2, -4, 1, -3, 0, -2, -2, 3,
-4, 2, 1, -3, 2, -1, -2, 1, -2, 0, 1, -2, 2, -2, -4, 3, 2, 2, 0, -2,
-3, 1, -2, -2, 0, -2, 1, -2, 1, 1, 0, 1, -4, 0, -1, 0, 0, -4, -1, 2,
-2, -2, -4, -2, 2, -3, -4, 3, -2, 0, 3, -4, -1, -1, -2, 0, -1, -3, 0, -2,
2, -3, -1, 0, -3, -1, -1, -4, 1, -3, -2, 3, -3, -1, -3, -1, -2, -3, 0, -1,
-3, -2, -1, -2, -1, -5, 2, -4, -2, 2, -5, -2, 0, -3, -2, -1, -1, 1, -3, 0,
-4, -4, 0, 0, -1, -5, -1, -5, -4, -1, -3, -1, -4, -2, -1, -1, -2, -4, -1, -1,
-4, 2, -4, -2, -2, 0, -1, -3, 4, -5, -1, -2, -2, -1, -6, 2, -1, 0, -5, 0,
-5, -2, 2, -6, 2, -1, -3, 1, 0, -3, 1, 0, 1, -3, 2, -2, 0, 1, -2, -1,
-1, 0, -2, -3, 1, 0, -2, 0, -1, 1, -1, -1, -1, 0, 1, 0, 0, -2, 3, -2,
-1, 2, -3, -2, 1, -2, -1, -2, 1, 0, -4, -1, -1, -3, 0, 0, -2, -2, -1, 2,
-1, 2, 0, 0, -1, -2, 0, -1, -1, -2, -1, -2, -1, -1, -1, -2, 0, 0, 0, 0,
0, -2, 0, -3, 0, -1, -1, 0, 0, -1, -3, -2, 0, -1, -1, 0, -3, -3, -3, -1,
-2, -1, 0, -4, -1, -1, -2, 0, -1, -1, -3, 0, -3, 0, 0, -2, -1, -1, -2, 1,
-3, -1, 0, -3, 0, 0, -2, 1, -2, 0, 0, -1, -1, -1, 0, -1, 1, -3, 1, 0,
-2, 2, -4, 0, 1, -1, 0, -1, -4, 1, 2, -4, 1, -3, -1, -2, -2, 0, -1, 1,
-2, -1, 0, -1, 1, 1, -1, -2, -2, 0, -2, 0, -1, -1, 1, -1, -1, 1, -1, -1,
-1, -1, 1, -3, 0, 0, -3, -2, -1, -1, -2, -1, 1, -1, -1, 0, -2, -2, 0, -1,
0, -2, -1, 0, -1, -1, 0, -2, 0, 0, -4, -2, 1, 0, -2, 0, -3, -1, 0, -2,
1, -1, -1, -2, 0, -2, -1, 1, 0, -2, -1, -2, -1, 1, -4, 2, -1, -2, 2, -2,
0, -3, -1, -1, -2, -1, -3, 0, -2, -4, -1, -2, 0, 3, 3, -3, -7, 9, -8, -4,
6, -6, 6, -4, -3, 2, -4, 0, 2, 0, -1, -2, 1, -1, -1, 0, -3, 2, -4, -1,
-1, 1, -2, -1, -1, -1, -2, -2, -2, 0, 1, -2, -3, 0, 0, -3, 1, 0, 0, -1,
-1, 0, -2, 0, -1, -1, 0, -2, 1, -2, 0, -1, -2, 0, -1, 0, -1, -1, -1, 0,
-2, 0, -1, 0, 0, 0, 0, -1, -1, 0, 0, 1, -2, -1, -1, 0, 1, -1, 0, -3,
-1, 2, 0, -1, 1, -3, -1, 1, 1, -1, 1, -1, -3, 0, 1, 0, -2, 2, 0, -2,
3, -2, 0, -1, 1, -1, 1, -1, -1, 0, 0, -1, -1, 0, -2, -2, 0, -1, -1, 1,
-3, -1, 1, -1, -1, 0, -2, -1, -1, -2, -1, -1, -1, -1, 1, -3, 1, 0, -1, 0,
2, -2, 0, 0, 0, 0, -2, 0, 0, -3, 0, -2, -1, -3, -1, 0, -2, -1, -2, 0,
-1, -2, -1, 0, -2, -1, -3, 0, 0, -2, 1, -3, -2, 0, -1, -1, -1, -2, 0, -2,
0, 0, -2, 1, -1, 0, 0, -2, -1, -2, -1, -1, 3, -2, -2, -1, 0, 0, 0, 1,
-4, 1, -1, 0, -1, 0, 1, -1, -1, -3, 1, 1, -1, -2, -1, -3, -1, 2, -3, -2,
0, -3, 0, 0, -1, -2, 0, -2, 0, 1, -2, 1, 1, 0, -1, -1, 0, 0, -1, -1,
0, 0, -3, 1, 0, -1, 1, -2, 0, -2, -1, 0, -2, -1, -2, -1, -3, 2, -3, -1,
-2, -1, -2, -2, 0, -3, -1, -3, -3, -1, -1, -2, -1, -2, 0, -2, -1, -1, 0, -1,
-2, 0, -2, 0, 0, -2, -1, 1, -2, 1, -2, 0, 0, 0, 0, 0, 1, 0, 0, -1,
1, 2, 1, -2, 0, 1, -1, 1, 1, -2, -1, 2, 0, -2, 0, 1, -1, -1, 0, -1,
-1, 0, -2, 0, -2, 0, -1, -2, 0, 0, -1, -2, 1, -1, -1, -1, 0, 0, -2, 0,
0, -1, 0, 0, -1, 2, -1, -1, -1, 0, -1, 2, -1, 0, -1, -1, 0, 0, 0, 0,
-2, -1, -1, -1, -1, -1, -3, -1, -2, 0, -2, -3, -2, -2, 1, -5, -2, -1, -2, -2,
-1, -4, 0, -3, -1, -1, -4, 0, -3, 0, -4, -2, -2, -2, -1, -3, -2, -2, -2, -3,
0, -3, -3, 0, -2, -1, -2, -3, -3, -1, -2, -2, -1, -2, -4, -2, -2, -2, -3, -2,
-2, -3, -2, -1, -3, 0, -4, -2, 0, -3, -1, 1, -3, -1, -1, -2, -2, -1, -3, 1,
-2, -1, 0, -1, -1, 0, -2, 0, -5, 4, 4, -3, 3, -5, 2, 0, -2, 0, 2, -2,
-3, -1, -2, -1, 0, 0, -1, 1, -2, 1, -1, -1, 2, -3, 0, 1, 1, -2, -1, 1,
-2, -1, 1, -1, 0, -1, -1, -1, 0, -1, -1, 0, -2, 0, -4, 1, 1, -4, 1, -2,
-2, 0, 0, 0, 1, -1, -2, -1, 0, -2, 0, -1, -1, -1, 0, 0, -1, 0, -1, 0,
1, -1, 1, -2, -1, 0, -1, -1, 2, -1, -1, 0, -3, -1, -1, -2, -1, 0, -4, -2,
-1, -1, -2, 0, -3, -3, 0, -3, -1, -3, -3, -1, -4, 1, 1, -4, -1, -4, 0, 0,
-1, -2, 0, 0, 0, 1, -1, 0, -2, 0, -1, 0, -2, -2, -1, -1, -2, 0, -4, 0,
1, -4, -1, 1, -1, -1, 0, -1, -2, -2, 2, -2, -1, 0, -3, 1, -3, 0, 0, -3,
0, -1, -2, 0, -1, 0, -1, 0, -1, -2, 1, 1, -1, 0, -2, 3, 0, -1, -1, 0,
-2, 0, 1, -2, 1, -1, -1, -1, -3, 1, -2, -1, 0, -1, -2, -2, 0, -3, 0, -1,
-2, -1, 0, -2, -1, -2, -1, 0, -2, -1, 0, -2, 2, 0, -2, 1, 2, -3, 1, 2,
-6, 5, -3, 0, 0, -3, 3, -6, 4, -1, -2, 1, -3, 2, -2, -3, 2, -2, -3, 0,
-4, 2, -3, -1, -1, -5, 0, 1, -4, -2, -2, -1, -1, -2, -1, 1, -2, -2, -1, -1,
-2, -1, -1, 1, -1, -1, -3, 2, 1, -3, 2, -1, -2, 2, -3, 0, 0, -1, 0, -1,
0, -1, 0, -2, -1, 1, 0, -1, -1, -1, -2, 1, -2, -1, 0, -1, -3, 1, -3, -1,
-2, -2, -2, -4, 1, -2, -1, -3, 1, -1, -3, 1, -4, 0, -1, -1, -5, -2, -1, 0,
0, -2, -2, -1, -2, 2, -4, -1, -2, -3, 3, -3, -1, 2, -3, -1, -1, -3, -2, 1,
-1, -1, -1, -4, 0, 4, -6, -1, -2, -2, 1, -5, 0, -1, 1, -5, -2, 1, -2, -2,
0, -3, -2, -1, 0, -2, 1, -5, -2, 4, -3, 0, -2, -1, -2, 3, 1, 0, -2, -1,
-1, -4, 1, 1, -3, -3, -4, -2, -1, -3, 2, -4, -3, -6, 0, 0, -3, 2, -2, -2,
0, -3, -3, -2, 1, 1, -3, -4, 1, 0, -4, 0, -2, -2, -5, 3, -3, -4, -1, -3,
-1, -2, -3, 1, -4, -4, 0, -2, -1, -2, -3, -1, -2, 2, -2, -3, -1, -3, 0, 0,
0, -2, -2, -2, -3, 1, -1, -2, -2, 0, -2, -1, 1, -2, -2, -1, -1, -4, 0, -3,
0, -2, -1, -2, -1, -2, 0, -1, 4, -2, -3, 3, -2, -1, 0, 0, -2, -2, -2, 1,
-3, 0, 0, -2, -2, 0, -2, 0, -1, -4, 1, -2, -3, 2, -2, -4, 1, -4, -2, 0,
-1, -2, 0, -3, 1, -3, -2, 0, -3, 0, -3, 3, -1, -2, -3, 0, -1, 1, 0, 0,
5, -2, -2, -1, 2, -3, 3, -2, -1, 0, -4, -1, 1, -4, -2, -3, 3, 1, -8, 9,
-4, 0, -9, -14, 28, -19, 2, 16, -14, 8, -7, 3, 6, -2, 3, 2, -13, 0, 8, -2,
5, -7, 0, -2, -2, 0, -3, 7, -3, 0, -1, -3, -5, 4, 3, -10, -2, -1, -6, 1,
-1, -7, 4, -7, 6, -5, -1, 6, -17, 3, 0, 2, -2, -3, -3, -6, -4, 1, 4, -5,
2, -5, -2, 5, -7, 4, 6, -2, -1, 0, -5, 0, 1, -1, -1, 0, -4, 1, -5, 0,
3, -7, 8, -2, -2, -3, 2, -3, -3, 3, -5, -1, 1, 0, -3, 0, 1, 1, -4, 7,
0, -4, 2, 1, -3, -6, 2, 2, -3, -3, -3, 0, -2, -5, 2, -1, -2, 1, -2, 1,
-4, 1, 4, -8, 3, 0, -4, -2, 3, 1, -4, 0, 3, -3, -1, 1, -1, -2, 1, 0,
-4, 4, -3, -1, -1, 3, -3, -3, 2, -3, -2, 1, 0, -2, 2, -1, 2, 0, 0, -1,
2, -1, 1, -1, -2, -1, 0, -2, -2, -3, 2, 0, -4, -1, -2, 0, -2, 1, 0, -3,
0, -2, -4, 1, -1, 0, 1, -1, -2, 0, 1, -1, -4, 0, 1, -2, 1, 2, -3, 2,
1, -1, 1, 0, -1, 1, -1, 0, 0, -1, 1, -6, 4, -5, 1, -2, 0, 5, -7, 0,
-1, -1, 1, -2, -7, 1, 2, -3, -1, 4, -4, -4, 3, -5, 0, 2, -1, -3, -2, 0,
-3, 1, -2, -1, 2, -1, -2, 0, -1, 0, 1, 0, -3, 1, -1, -2, -1, -1, -2, 0,
-1, -2, -3, 3, -2, -1, 1, 0, -1, -1, 0, -4, 4, -5, -2, 4, -4, 1, -1, -3,
1, -4, 1, 0, -4, 2, -8, 1, -2, -5, 2, -3, 1, 2, -6, 0, 0, -1, 1, -3,
1, 1, 0, 1, -2, 0, 3, -2, 1, -5, -3, -1, 3, -3, -1, -1, 0, 0, -1, 2,
-3, -1, 2, 1, -1, 0, 0, 0, 0, 1, -3, 2, 3, -4, -1, 1, -4, 4, 1, -6,
2, -1, 1, 1, -4, 3, -4, -2, 4, -2, -1, 2, -3, 1, 2, -4, 0, -2, -1, 0,
-3, 0, -3, -1, -3, 1, -2, -1, -1, -3, 2, 0, -1, -1, -2, -1, 2, -2, 2, -1,
-3, 2, -2, 1, 2, -1, 1, -5, 2, -6, -8, 9, -9, 2, 6, -10, -2, -4, 1, 2,
-1, 1, 1, -3, -3, 0, 2, 0, -5, -1, -2, 1, -2, -1, -1, 0, -2, -2, 1, 0,
1, 0, -1, 1, 0, -2, -1, 0, -2, 0, 3, -3, 0, 1, -2, -3, 0, -2, 2, -2,
-2, -2, -4, 2, -5, 1, 1, -4, 1, -3, -2, 2, -3, -2, 1, 0, 0, -1, -2, -2,
-1, -3, 1, -1, -3, 0, -5, 0, -2, -2, 1, -6, -3, 0, -2, -2, -3, 0, -1, -3,
0, -1, -1, -3, -2, -1, -2, -2, -2, 0, -4, -3, 0, -2, 1, -1, 0, 2, -2, 0,
-2, 1, 0, -1, -1, 4, -2, -1, 1, -3, 0, 0, -3, 0, -2, -4, 0, -2, -3, -3,
-1, 1, -7, 1, -2, -5, -1, -3, -2, -3, 2, -4, 1, -1, -5, -2, -1, 2, 0, 0,
0, -2, -1, 0, 0, 0, 2, -1, 0, 1, 0, 1, 2, 0, -2, 0, 1, -1, 1, 2,
-1, 0, -2, 0, 1, -2, -1, 1, -2, -1, 2, -3, -1, -3, 0, 0, 0, -1, -1, 1,
-5, 0, 1, -3, 0, 1, -5, 1, -2, 3, -3, -5, 1, -4, -2, 1, -4, -2, 0, -2,
-3, 1, -1, 1, 1, 1, -2, 2, 0, -3, 4, 0, -1, 0, -2, -1, 1, -2, 1, -1,
-6, 3, -3, -3, 0, -5, 0, -3, 0, -4, -2, 0, -1, -2, -1, -1, -2, 0, 0, -1,
1, -2, 0, -2, -1, -4, -1, -2, -3, 0, 0, -3, -4, 0, -4, -2, 2, -3, -1, -3,
-3, -3, 3, -4, 0, 0, -4, 1, -2, -1, -2, 0, -2, -1, -2, -2, -3, 2, -2, 2,
-2, 0, -5, -5, 6, -3, 5, -2, -4, 1, -1, 0, 3, -2, 1, -2, 1, 0, -2, 3,
1, -1, 2, -3, 1, 0, 1, 2, -2, 2, -3, -1, 0, 1, 3, -1, 2, -4, 1, 1,
-3, 1, 0, -1, 1, 0, 0, -2, 1, 0, -3, -1, 1, -2, 0, -3, -1, 2, -1, -1,
2, -2, 0, -3, -1, 1, -5, 1, -1, -3, -1, -3, -3, 0, -1, -1, -2, -1, -1, 0,
-3, -1, 1, -1, 3, -1, 0, 0, 0, 1, -1, -3, 2, -2, -1, 0, -4, -1, -2, -3,
1, -2, -3, -1, 0, -4, -1, -3, -2, -2, -3, -2, -2, -2, -1, -2, -3, 1, -3, -1,
0, -2, -3, -1, -1, -2, 1, -3, 0, 0, -1, 1, -2, 1, -2, -2, -3, 0, -1, -2,
-1, -1, -2, -1, -4, 0, -2, 0, -1, -3, -2, 1, -2, -1, -1, -3, -2, 1, -1, -2,
0, -2, 0, -4, -2, 0, -1, -3, -1, -3, -2, 1, -3, -1, -3, -1, 1, -3, 0, -1,
-2, 1, -2, -1, 0, 0, -2, 0, -1, -3, 1, -2, 0, -2, -1, 1, -3, 0, 0, -2,
0, -1, -3, 0, -2, -1, -2, -1, -1, -1, -2, 0, -3, -1, -1, -2, -2, 0, -2, -1,
1, -2, 0, 0, -2, -1, 0, -1, -1, 1, -3, 0, -3, -1, 2, -2, 1, 0, -1, 1,
-1, -2, 1, 0, -1, 0, -1, 1, 0, 0, 0, -3, -1, 1, -3, 1, -1, -1, -1, 0,
-2, -3, -1, -3, 0, -1, -3, -1, 0, -4, -1, 0, -1, 0, -3, 1, 1, -1, -1, -1,
4, -3, -3, 1, -2, -2, -1, 3, -5, 0, -1, -3, 0, -3, 2, -4, -2, 1, -3, 2,
-1, -3, -3, -2, 1, -3, -2, -2, -4, -1, -2, 0, -1, -3, -1, -2, -2, 0, -2, -2,
0, -2, -1, 0, -1, 1, -1, -1, -2, -2, 0, -3, 0, -1, -2, -1, -1, 0, -1, -2,
-1, 0, -3, 0, 0, -1, 0, -2, 0, 0, -2, 0, 0, -1, 1, 1, -1, 0, -1, -2,
-2, -1, -2, -2, 0, -2, -1, -1, -5, 1, -1, -1, 1, -8, 0, -2, 2, 1, -4, 0,
-6, 1, -1, -2, 1, -3, -1, -1, -1, 1, -1, -2, 1, -2, -1, -2, -1, -1, -1, -1,
-2, 1, -4, 0, -1, -1, -1, -1, -1, -3, -1, -2, 0, 0, -2, -2, -1, -2, 0, -3,
-1, -2, 0, -1, -2, -2, -2, -1, -1, 0, -3, -2, 0, -2, 0, -2, -2, 0, -4, 0,
-1, -1, -3, -1, -2, 0, 0, 0, -2, 0, 0, -3, -1, -1, 2, -2, -1, 2, -2, 1,
0, 0, 1, 0, 1, -1, -2, 1, -2, -1, 0, -1, -1, 0, -1, 1, -1, 1, -2, -2,
3, -2, 0, 0, 0, -2, 0, 0, -3, 2, 0, -3, -1, -1, -1, -3, -1, -2, -1, -2,
0, -2, 0, 0, -2, 1, -1, 0, 1, 0, 0, 0, -1, 0, 1, 0, 0, -1, -1, 1,
0, -1, -1, -1, 0, 0, -2, 0, -1, -1, 0, -2, 0, -1, 0, -3, -1, -3, -2, -2,
-2, -2, -2, -2, -2, -4, -2, 0, -2, 0, -1, -3, -1, 1, 0, -1, 1, 1, -3, 1,
0, -2, 0, -1, -1, -4, 0, -1, -1, -1, -2, -3, -2, 1, -4, -1, -2, -2, -1, -2,
0, -1, -3, 0, -2, 1, -1, -2, 2, -2, 0, 0, 0, -1, 1, -1, 2, -2, -2, 2,
-2, 0, -1, -2, 0, 1, -1, -1, 0, -2, 1, 1, -2, 0, 0, -2, 0, -2, 1, 0,
-2, 1, -2, -1, -1, -1, 0, 0, 0, -1, -2, -2, 1, -2, -1, 0, -1, 0, 0, -2,
1, 0, 0, -1, -2, 0, -2, 1, -1, -2, 0, -1, 0, -2, 0, -3, 0, -2, -2, -2,
-2, -1, -2, 0, -1, -3, 0, -1, -2, -2, -1, -2, 2, -3, 0, -1, -1, -3, 0, -1,
-3, 1, -6, 1, 4, -2, -3, -2, 0, 0, -3, 0, 1, -2, 0, -1, 2, 0, -2, 0,
-2, 1, 0, -1, 0, -4, -1, 0, -1, -1, -1, 0, 0, -2, 0, 1, -1, 0, -1, -2,
0, 0, 0, -4, 0, 0, 0, -1, -4, 0, -1, 1, -2, 2, 0, -1, -1, 1, 1, 0,
-1, 1, -2, -1, 2, -1, 3, -4, 0, 1, 0, 2, -3, 1, -1, 0, 2, 0, 0, -1,
2, 2, -3, -2, -1, 2, -3, -1, -1, -4, -1, -2, -3, 3, -2, -2, -1, -5, 1, 0,
-3, -2, -3, 1, -5, -1, -2, -9, 4, -4, -2, 0, -2, -4, -3, 4, -6, -2, -4, -2,
-1, -2, -2, -4, 0, 0, -5, 0, 0, -2, -4, -2, -2, -1, -3, 0, -5, -2, 1, -2,
-1, -4, 0, -3, -2, -2, -2, -2, 0, -1, -3, 0, -2, -2, -1, 0, -2, 0, 0, -2,
-3, -1, 0, -1, -1, -3, 0, -1, -4, -2, 2, -1, 0, 0, -1, -2, 2, 0, -5, 0,
0, -1, -1, -2, 3, -2, 1, -1, -2, 0, -3, 1, -1, 1, -3, 0, -1, -2, 1, 2,
-4, 1, -1, -2, 1, 0, 0, 0, 0, 1, 2, 0, -1, -2, 0, 2, 1, -2, 1, -3,
2, 0, -3, 2, 1, -1, 0, -1, 0, 1, 1, 4, -5, 1, 0, 0, 3, -4, 0, 0,
-1, 3, -1, -4, 2, 3, 0, -1, -1, -2, 1, 1, -2, 1, -3, 0, 1, -3, 0, -1,
-1, 0, -1, 0, -2, -1, 0, -2, -3, 0, -1, -3, -2, -3, 0, -2, -2, -1, -3, 0,
-2, 0, -4, 0, 0, -2, 0, 0, -2, -1, -1, -1, -1, -1, -3, -1, 0, -2, -1, -2,
-1, 0, -3, -2, -3, -3, 0, -4, -3, -3, -2, -1, -2, 0, -2, -3, -1, -2, 0, -1,
-1, -2, -2, 1, -3, 0, 0, -2, 0, 0, 0, 1, -2, 1, 0, 0, -1, 0, 1, -1,
0, -1, 1, 0, 1, 0, -1, 0, -1, 1, -3, -1, 0, 0, 0, -2, -1, -1, -1, 0,
-2, -1, -2, -1, 1, 0, 0, -2, -1, 1, -1, -1, 2, -1, 0, 2, -1, 0, 0, -1,
0, -2, -1, 0, -2, -1, 0, -2, -1, -2, 0, -1, -2, -2, -1, -1, -1, -2, -2, 0,
-3, -2, -1, -2, -3, 0, -3, -2, -2, -2, -1, -2, -2, -1, -1, -2, 0, -2, 0, 0,
-1, -1, -1, 0, -1, 1, 0, 1, -1, 0, -1, -1, 1, -1, 0, 0, 0, -2, 1, 0,
-1, -1, 0, -1, 0, 0, 0, 0, -1, 0, 1, -3, 1, -2, 0, 0, -2, 2, -1, 0,
1, -2, 0, 0, 0, 0, 0, -1, 1, -1, -1, 0, -2, 0, -1, -1, 0, 0, -1, 0,
-2, 0, 0, 0, 0, 1, -2, 1, -1, 2, 1, -1, 1, -2, -1, 2, 0, -1, -1, -1,
-1, -2, -2, 0, -1, -1, -1, -2, -2, 0, -1, -2, 0, -2, -2, -2, -2, -3, -1, -3,
-2, -3, -3, -2, -2, -2, -2, -1, -3, 0, -1, -3, -1, -4, -1, 1, -1, -1, -3, -1,
-4, -1, 0, -3, -2, -3, -1, -2, -1, -2, -2, 0, -2, -2, 1, -2, 0, 0, -2, 0,
0, 0, -1, -1, 1, 0, 0, -1, 0, -1, 0, 0, -2, -1, -1, -2, 1, -1, 1, -2,
0, 0, 1, };

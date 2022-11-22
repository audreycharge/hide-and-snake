# 1 "game.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "game.c"
# 1 "game.h" 1
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
# 2 "game.c" 2
# 1 "mode0.h" 1




typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
# 64 "mode0.h"
extern volatile unsigned short *videoBuffer;
# 85 "mode0.h"
typedef struct {
 u16 tileimg[8192];
} charblock;


typedef struct {
 u16 tilemap[1024];
} screenblock;



void setPixel3(int col, int row, unsigned short color);
void drawRect3(int col, int row, int width, int height, volatile unsigned short color);
void fillScreen3(volatile unsigned short color);
void drawImage3(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage3(const unsigned short *image);


void setPixel4(int col, int row, unsigned char colorIndex);
void drawRect4(int col, int row, int width, int height, volatile unsigned char colorIndex);
void fillScreen4(volatile unsigned char colorIndex);
void drawImage4(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage4(const unsigned short *image);


void waitForVBlank();
void flipPage();





typedef struct {
    unsigned short attr0;
    unsigned short attr1;
    unsigned short attr2;
    unsigned short fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[];
# 157 "mode0.h"
void hideSprites();
# 202 "mode0.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 213 "mode0.h"
typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;


extern DMA *dma;
# 253 "mode0.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);
# 289 "mode0.h"
typedef void (*ihp)(void);
# 309 "mode0.h"
int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB);
# 3 "game.c" 2
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 1 3
# 10 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/ieeefp.h" 1 3
# 11 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_ansi.h" 1 3
# 10 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_ansi.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/newlib.h" 1 3
# 14 "/opt/devkitpro/devkitARM/arm-none-eabi/include/newlib.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_newlib_version.h" 1 3
# 15 "/opt/devkitpro/devkitARM/arm-none-eabi/include/newlib.h" 2 3
# 11 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_ansi.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/config.h" 1 3



# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/ieeefp.h" 1 3
# 5 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/config.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 1 3
# 6 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/config.h" 2 3
# 12 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_ansi.h" 2 3
# 12 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 2 3




# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 1 3 4
# 209 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 3 4

# 209 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 321 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 3 4
typedef unsigned int wchar_t;
# 17 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 2 3

# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 1 3
# 13 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_ansi.h" 1 3
# 14 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 2 3
# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 1 3 4
# 143 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 15 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 1 3
# 24 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_types.h" 1 3



# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 1 3
# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 103 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 200 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 5 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_types.h" 2 3


typedef __int64_t _off_t;


typedef __int64_t _fpos_t;


typedef __uint32_t __ino_t;


typedef __uint32_t __dev_t;
# 25 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/lock.h" 1 3




# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 1 3 4
# 9 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 1 3 4
# 13 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 1 3 4
# 35 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 187 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 14 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 1 3 4
# 20 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 3 4
typedef __int8_t int8_t ;



typedef __uint8_t uint8_t ;







typedef __int16_t int16_t ;



typedef __uint16_t uint16_t ;







typedef __int32_t int32_t ;



typedef __uint32_t uint32_t ;







typedef __int64_t int64_t ;



typedef __uint64_t uint64_t ;






typedef __intmax_t intmax_t;




typedef __uintmax_t uintmax_t;




typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;
# 15 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4






typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;




typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;




typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;




typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
# 51 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
# 61 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
# 71 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 81 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
# 10 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 2 3 4
# 6 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/lock.h" 2 3

typedef int32_t _LOCK_T;

struct __lock_t {
 _LOCK_T lock;
 uint32_t thread_tag;
 uint32_t counter;
};

typedef struct __lock_t _LOCK_RECURSIVE_T;

extern void __libc_lock_init(_LOCK_T *lock);
extern void __libc_lock_init_recursive(_LOCK_RECURSIVE_T *lock);
extern void __libc_lock_close(_LOCK_T *lock);
extern void __libc_lock_close_recursive(_LOCK_RECURSIVE_T *lock);
extern void __libc_lock_acquire(_LOCK_T *lock);
extern void __libc_lock_acquire_recursive(_LOCK_RECURSIVE_T *lock);
extern void __libc_lock_release(_LOCK_T *lock);
extern void __libc_lock_release_recursive(_LOCK_RECURSIVE_T *lock);


extern int __libc_lock_try_acquire(_LOCK_T *lock);
extern int __libc_lock_try_acquire_recursive(_LOCK_RECURSIVE_T *lock);
# 26 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 2 3


typedef long __blkcnt_t;



typedef long __blksize_t;



typedef __uint64_t __fsblkcnt_t;



typedef __uint32_t __fsfilcnt_t;
# 50 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef int __pid_t;







typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



typedef __uint32_t __id_t;
# 88 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef __uint32_t __mode_t;





__extension__ typedef long long _off64_t;





typedef _off_t __off_t;


typedef _off64_t __loff_t;


typedef long __key_t;
# 129 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef unsigned int __size_t;
# 145 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef signed int _ssize_t;
# 156 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef _ssize_t __ssize_t;


# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 1 3 4
# 350 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 3 4
typedef unsigned int wint_t;
# 160 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 2 3



typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;



typedef _LOCK_RECURSIVE_T _flock_t;




typedef void *_iconv_t;






typedef unsigned long __clock_t;






typedef __int_least64_t __time_t;





typedef unsigned long __clockid_t;


typedef unsigned long __timer_t;


typedef __uint8_t __sa_family_t;



typedef __uint32_t __socklen_t;


typedef int __nl_item;
typedef unsigned short __nlink_t;
typedef long __suseconds_t;
typedef unsigned long __useconds_t;




typedef char * __va_list;
# 16 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 2 3






typedef unsigned long __ULong;
# 38 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct _reent;

struct __locale_t;






struct _Bigint
{
  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  __ULong _x[1];
};


struct __tm
{
  int __tm_sec;
  int __tm_min;
  int __tm_hour;
  int __tm_mday;
  int __tm_mon;
  int __tm_year;
  int __tm_wday;
  int __tm_yday;
  int __tm_isdst;
};







struct _on_exit_args {
 void * _fnargs[32];
 void * _dso_handle[32];

 __ULong _fntypes;


 __ULong _is_cxa;
};
# 93 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct _atexit {
 struct _atexit *_next;
 int _ind;

 void (*_fns[32])(void);
        struct _on_exit_args _on_exit_args;
};
# 117 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 181 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;






  void * _cookie;

  int (*_read) (struct _reent *, void *,
        char *, int);
  int (*_write) (struct _reent *, void *,
         const char *,
         int);
  _fpos_t (*_seek) (struct _reent *, void *, _fpos_t, int);
  int (*_close) (struct _reent *, void *);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  _off_t _offset;


  struct _reent *_data;



  _flock_t _lock;

  _mbstate_t _mbstate;
  int _flags2;
};
# 287 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 319 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;




};
# 610 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct _reent
{
  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;
  char _emergency[25];


  int _unspecified_locale_info;
  struct __locale_t *_locale;

  int __sdidinit;

  void (*__cleanup) (struct _reent *);


  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;


  int _cvtlen;
  char *_cvtbuf;

  union
    {
      struct
        {
          unsigned int _unused_rand;
          char * _strtok_last;
          char _asctime_buf[26];
          struct __tm _localtime_buf;
          int _gamma_signgam;
          __extension__ unsigned long long _rand_next;
          struct _rand48 _r48;
          _mbstate_t _mblen_state;
          _mbstate_t _mbtowc_state;
          _mbstate_t _wctomb_state;
          char _l64a_buf[8];
          char _signal_buf[24];
          int _getdate_err;
          _mbstate_t _mbrlen_state;
          _mbstate_t _mbrtowc_state;
          _mbstate_t _mbsrtowcs_state;
          _mbstate_t _wcrtomb_state;
          _mbstate_t _wcsrtombs_state;
   int _h_errno;
        } _reent;



      struct
        {

          unsigned char * _nextf[30];
          unsigned int _nmalloc[30];
        } _unused;
    } _new;



  struct _atexit *_atexit;
  struct _atexit _atexit0;



  void (**(_sig_func))(int);




  struct _glue __sglue;

  __FILE __sf[3];

  void *deviceData;
};
# 817 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
extern struct _reent *_impure_ptr ;
extern struct _reent *const _global_impure_ptr ;

void _reclaim_reent (struct _reent *);





  struct _reent * __getreent (void);
# 19 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h" 1 3
# 47 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h" 3
# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 1 3 4
# 48 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h" 2 3
# 20 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/stdlib.h" 1 3
# 21 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 2 3
# 33 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3


typedef struct
{
  int quot;
  int rem;
} div_t;

typedef struct
{
  long quot;
  long rem;
} ldiv_t;


typedef struct
{
  long long int quot;
  long long int rem;
} lldiv_t;




typedef int (*__compar_fn_t) (const void *, const void *);







int __locale_mb_cur_max (void);



void abort (void) __attribute__ ((__noreturn__));
int abs (int);





int atexit (void (*__func)(void));
double atof (const char *__nptr);



int atoi (const char *__nptr);
int _atoi_r (struct _reent *, const char *__nptr);
long atol (const char *__nptr);
long _atol_r (struct _reent *, const char *__nptr);
void * bsearch (const void *__key,
         const void *__base,
         size_t __nmemb,
         size_t __size,
         __compar_fn_t _compar);
void *calloc(size_t, size_t) __attribute__((__malloc__)) __attribute__((__warn_unused_result__))
      __attribute__((__alloc_size__(1, 2))) ;
div_t div (int __numer, int __denom);
void exit (int __status) __attribute__ ((__noreturn__));
void free (void *) ;
char * getenv (const char *__string);
char * _getenv_r (struct _reent *, const char *__string);
char * _findenv (const char *, int *);
char * _findenv_r (struct _reent *, const char *, int *);




long labs (long);
ldiv_t ldiv (long __numer, long __denom);
void *malloc(size_t) __attribute__((__malloc__)) __attribute__((__warn_unused_result__)) __attribute__((__alloc_size__(1))) ;
int mblen (const char *, size_t);
int _mblen_r (struct _reent *, const char *, size_t, _mbstate_t *);
int mbtowc (wchar_t *restrict, const char *restrict, size_t);
int _mbtowc_r (struct _reent *, wchar_t *restrict, const char *restrict, size_t, _mbstate_t *);
int wctomb (char *, wchar_t);
int _wctomb_r (struct _reent *, char *, wchar_t, _mbstate_t *);
size_t mbstowcs (wchar_t *restrict, const char *restrict, size_t);
size_t _mbstowcs_r (struct _reent *, wchar_t *restrict, const char *restrict, size_t, _mbstate_t *);
size_t wcstombs (char *restrict, const wchar_t *restrict, size_t);
size_t _wcstombs_r (struct _reent *, char *restrict, const wchar_t *restrict, size_t, _mbstate_t *);
# 134 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
char * _mkdtemp_r (struct _reent *, char *);
int _mkostemp_r (struct _reent *, char *, int);
int _mkostemps_r (struct _reent *, char *, int, int);
int _mkstemp_r (struct _reent *, char *);
int _mkstemps_r (struct _reent *, char *, int);
char * _mktemp_r (struct _reent *, char *) __attribute__ ((__deprecated__("the use of `mktemp' is dangerous; use `mkstemp' instead")));
void qsort (void *__base, size_t __nmemb, size_t __size, __compar_fn_t _compar);
int rand (void);
void *realloc(void *, size_t) __attribute__((__warn_unused_result__)) __attribute__((__alloc_size__(2))) ;
# 156 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
void srand (unsigned __seed);
double strtod (const char *restrict __n, char **restrict __end_PTR);
double _strtod_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR);

float strtof (const char *restrict __n, char **restrict __end_PTR);







long strtol (const char *restrict __n, char **restrict __end_PTR, int __base);
long _strtol_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR, int __base);
unsigned long strtoul (const char *restrict __n, char **restrict __end_PTR, int __base);
unsigned long _strtoul_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR, int __base);
# 188 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
int system (const char *__string);
# 199 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
void _Exit (int __status) __attribute__ ((__noreturn__));




int _putenv_r (struct _reent *, char *__string);
void * _reallocf_r (struct _reent *, void *, size_t);



int _setenv_r (struct _reent *, const char *__string, const char *__value, int __overwrite);
# 221 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
char * __itoa (int, char *, int);
char * __utoa (unsigned, char *, int);
# 260 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
long long atoll (const char *__nptr);

long long _atoll_r (struct _reent *, const char *__nptr);

long long llabs (long long);
lldiv_t lldiv (long long __numer, long long __denom);
long long strtoll (const char *restrict __n, char **restrict __end_PTR, int __base);

long long _strtoll_r (struct _reent *, const char *restrict __n, char **restrict __end_PTR, int __base);

unsigned long long strtoull (const char *restrict __n, char **restrict __end_PTR, int __base);

unsigned long long _strtoull_r (struct _reent *, const char *restrict __n, char **restrict __end_PTR, int __base);
# 281 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
int _unsetenv_r (struct _reent *, const char *__string);







char * _dtoa_r (struct _reent *, double, int, int, int *, int*, char**);

void * _malloc_r (struct _reent *, size_t) ;
void * _calloc_r (struct _reent *, size_t, size_t) ;
void _free_r (struct _reent *, void *) ;
void * _realloc_r (struct _reent *, void *, size_t) ;
void _mstats_r (struct _reent *, char *);

int _system_r (struct _reent *, const char *);

void __eprintf (const char *, const char *, unsigned int, const char *);
# 319 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
extern long double _strtold_r (struct _reent *, const char *restrict, char **restrict);

extern long double strtold (const char *restrict, char **restrict);
# 336 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3

# 4 "game.c" 2
# 1 "forest.h" 1
# 22 "forest.h"

# 22 "forest.h"
extern const unsigned short forestTiles[13088];


extern const unsigned short forestMap[2048];


extern const unsigned short forestPal[256];
# 5 "game.c" 2
# 1 "forestCM.h" 1
# 21 "forestCM.h"
extern const unsigned short forestCMBitmap[65536];


extern const unsigned short forestCMPal[256];
# 6 "game.c" 2
# 1 "sound.h" 1
void setupSounds();
void playSoundA(const signed char* sound, int length, int loops);
void playSoundB(const signed char* sound, int length, int loops);

void setupInterrupts();
void interruptHandler();

void pauseSound();
void unpauseSound();
void stopSound();
void stopSoundA();
void stopSoundB();
# 50 "sound.h"
extern int countdown;

typedef struct{
    const signed char* data;
    int length;
    int frequency;
    int isPlaying;
    int loops;
    int duration;
    int priority;
    int vBlankCount;
} SOUND;

SOUND soundA;
SOUND soundB;
# 7 "game.c" 2
# 1 "rustle.h" 1


extern const unsigned int rustle_sampleRate;
extern const unsigned int rustle_length;
extern const signed char rustle_data[];
# 8 "game.c" 2
# 1 "hiss.h" 1


extern const unsigned int hiss_sampleRate;
extern const unsigned int hiss_length;
extern const signed char hiss_data[];
# 9 "game.c" 2

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

    for (int i = 0; i < 3; i++) {
        int col = 15 + 9*i;
        if (!hiders[i].found) {
            shadowOAM[17+i].attr0 = (0<<14) | 15;
            shadowOAM[17+i].attr1 = (0<<14) | col;
            shadowOAM[17+i].attr2 = ((4 + 2*i)*32+(0)) | ((i+1)<<12);
        } else {
            shadowOAM[17+i].attr0 = (2<<8);
        }
    }

    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);

    (*(volatile unsigned short *)0x04000014) = hOff;
    (*(volatile unsigned short *)0x04000016) = vOff;

    (*(volatile unsigned short *)0x0400001A) = vOff / 2;
    (*(volatile unsigned short *)0x04000018) = hOff / 2;
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

    seeker.row = 118 + vOff;
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
        if((~((*(volatile unsigned short *)0x04000130)) & ((1<<6)))) {
            if (collisionCheck(collisionMap, 512, seeker.col, seeker.row, seeker.width, seeker.height, 0, -seeker.rdel) == 2 && seeker.row > 0) {
                seeker.row -= seeker.rdel;


                if (vOff - 1 >= 0 && (seeker.row - vOff) <= (160 / 2)) {
                    vOff--;
                }
                seeker.aniState = SPRITEBACK;
            }
        }
        if((~((*(volatile unsigned short *)0x04000130)) & ((1<<7)))) {

            if (collisionCheck(collisionMap, 512, seeker.col, seeker.row, seeker.width, seeker.height, 0, seeker.rdel)==2 && seeker.row + seeker.height < 256) {
                seeker.row += seeker.rdel;

                if (vOff+1 < (256 - 160) && (seeker.row - vOff) > (160 / 2)) {
                    vOff++;
                }
                seeker.aniState = SPRITEBACK;
            }
        }
        if((~((*(volatile unsigned short *)0x04000130)) & ((1<<5)))) {
            if (collisionCheck(collisionMap, 512, seeker.col, seeker.row, seeker.width, seeker.height, -seeker.cdel, 0) && seeker.col > 0) {
                seeker.col -= seeker.cdel;

                if (hOff - 1 >= 0 && (seeker.col - hOff) <= (240 / 2)) {
                    hOff--;
                }
                seeker.aniState = SPRITELEFT;
            }
        }
        if((~((*(volatile unsigned short *)0x04000130)) & ((1<<4)))) {
            if (collisionCheck(collisionMap, 512, seeker.col, seeker.row, seeker.width, seeker.height, seeker.cdel, 0) && seeker.col + seeker.width < 512) {
                seeker.col += seeker.cdel;

                if (hOff + 1 < (512 - 240) && (seeker.col - hOff) > (240 / 2)) {
                    hOff++;
                }
                seeker.aniState = SPRITERIGHT;
            }
        }
    } else {
        if((~((*(volatile unsigned short *)0x04000130)) & ((1<<6)))) {
            if (seeker.row > 0) {
                seeker.row -= seeker.rdel;


                if (vOff - 1 >= 0 && (seeker.row - vOff) <= (160 / 2)) {
                    vOff--;
                }
            }
        }
        if((~((*(volatile unsigned short *)0x04000130)) & ((1<<7)))) {

            if (seeker.row < 214) {
                seeker.row += seeker.rdel;

                if (vOff+1 < (256 - 160) && (seeker.row - vOff) > (160 / 2)) {
                    vOff++;
                }
            }
        }
        if((~((*(volatile unsigned short *)0x04000130)) & ((1<<5)))) {
            if (seeker.col > 0) {
                seeker.col -= seeker.cdel;

                if (hOff - 1 >= 0 && (seeker.col - hOff) <= (240 / 2)) {
                    hOff--;
                }
                seeker.aniState = SPRITELEFT;
            }
        }
        if((~((*(volatile unsigned short *)0x04000130)) & ((1<<4)))) {
            if (seeker.col + seeker.width < 512) {
                seeker.col += seeker.cdel;

                if (hOff + 1 < (512 - 240) && (seeker.col - hOff) > (240 / 2)) {
                    hOff++;
                }
                seeker.aniState = SPRITERIGHT;
            }
        }
    }

    if ((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0))))) {
        for (int i; i < 5; i++) {
            if (collision(bush[i].col, bush[i].row, bush[i].width, bush[i].height, seeker.col, seeker.row, seeker.width, seeker.height)) {
                if (!bush[i].checked) {
                    int found = rand() % hideCount;
                    if (!found) {

                        mgba_printf("nothing");
                        stopSoundB();
                        playSoundB(rustle_data, rustle_length, 0);
                    } else if (found == 1) {
                        int pop = seeker.row;
                        if (!snake.found) {
                            snake.col = bush[i].col;
                            snake.row = bush[i].row;
                            shadowOAM[1].attr0 = (2<<14) | (snake.row - vOff);
                            snake.found = 1;
                            snake.aniCounter = 120;
                            stopSoundB();
                            playSoundB(hiss_data, hiss_length, 0);
                        }

                        mgba_printf("snake!");
                    } else {

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
    shadowOAM[20].attr0 = (0<<14) | (seeker.row - vOff);
    if (seeker.aniState == SPRITERIGHT) {
        shadowOAM[20].attr1 = (1<<14) | (seeker.col - hOff) | (1<<12);
    } else {
        shadowOAM[20].attr1 = (1<<14) | (seeker.col - hOff);
    }

    if (king) {
        if (seeker.aniState == SPRITEBACK) {
            if (seeker.curFrame == 0) {
                shadowOAM[20].attr2 = ((0)*32+(17));
            } else if (seeker.curFrame == 1) {
                shadowOAM[20].attr2 = ((2)*32+(17));
            } else if (seeker.curFrame == 2) {
                shadowOAM[20].attr2 = ((2)*32+(17));
            }
        } else if (seeker.aniState == SPRITELEFT || seeker.aniState == SPRITERIGHT) {
            if (seeker.curFrame == 0) {
                shadowOAM[20].attr2 = ((0)*32+(8));
            } else if (seeker.curFrame == 1) {
                shadowOAM[20].attr2 = ((0)*32+(6));
            } else if (seeker.curFrame == 2) {
                shadowOAM[20].attr2 = ((0)*32+(10));
            }
        } else {
            seeker.curFrame = 0;
        }
    } else if (!stickTime) {
        if (seeker.aniState == SPRITEBACK) {
            if (seeker.curFrame == 0) {
                shadowOAM[20].attr2 = ((0)*32+(15));
            } else if (seeker.curFrame == 1) {
                shadowOAM[20].attr2 = ((2)*32+(15));
            } else if (seeker.curFrame == 2) {
                shadowOAM[20].attr2 = ((2)*32+(15));
            }
        } else if (seeker.aniState == SPRITERIGHT || seeker.aniState == SPRITELEFT) {
            if (seeker.curFrame == 0) {
                shadowOAM[20].attr2 = ((0)*32+(2));
            } else if (seeker.curFrame == 1) {
                shadowOAM[20].attr2 = ((0)*32+(0));
            } else if (seeker.curFrame == 2) {
                shadowOAM[20].attr2 = ((0)*32+(4));
            }
        } else {
            seeker.curFrame = 0;
        }
    } else {
        if (seeker.aniState == SPRITEBACK) {
            if (seeker.curFrame == 0) {
                shadowOAM[20].attr2 = ((0)*32+(15));
            } else if (seeker.curFrame == 1) {
                shadowOAM[20].attr2 = ((2)*32+(15));
            } else if (seeker.curFrame == 2) {
                shadowOAM[20].attr2 = ((2)*32+(15));
            }
        } else if (seeker.aniState == SPRITELEFT || seeker.aniState == SPRITERIGHT) {
            if (seeker.curFrame == 0) {
                shadowOAM[20].attr2 = ((2)*32+(2));
            } else if (seeker.curFrame == 1) {
                shadowOAM[20].attr2 = ((2)*32+(0));
            } else if (seeker.curFrame == 2) {
                shadowOAM[20].attr2 = ((2)*32+(4));
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
    snake.row = 256 / 2;
    snake.col = 512 / 2;
    snake.found = 0;
    snake.aniCounter = 0;
    snake.curFrame = 0;
    snake.numFrames = 2;
}
void updateSnake(){
    if (snake.aniCounter && snake.found) {
        snake.aniCounter--;
    } else if (snake.found && !snake.aniCounter) {
        if (king && (~((*(volatile unsigned short *)0x04000130)) & ((1<<8)))) {
            mgba_printf("magic");
            snake.found = 0;
            shadowOAM[1].attr0 = (2<<8);
        } else if (stickTime) {
            mgba_printf("go away");
            stickTime = 0;
            snake.found = 0;
            shadowOAM[1].attr0 = (2<<8);
        } else {
            fightTime = 1;
            mgba_printf("go to minigame");
        }
    }
}
void drawSnake(){
    if (shadowOAM[1].attr0 != (2<<8)) {
        shadowOAM[1].attr0 = (2<<14) | (snake.row - vOff);
        shadowOAM[1].attr1 = (0<<14) | (snake.col - hOff) & 0x01ff;
        shadowOAM[1].attr2 = ((0)*32+(12)) | ((5)<<12);

        if (king) {
            if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<8)))) {
                if (snake.aniCounter / 20 % 2 == 0) {
                    (*(volatile unsigned short *)0x400004C) = (1 << 8) | (1 << 12);
                } else {
                    (*(volatile unsigned short *)0x400004C) = (2 << 8) | (2 << 12);
                }
                shadowOAM[1].attr0 |= (1<<12);
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
        if((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0))))) {
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
            shadowOAM[6+i].attr0 = (0<<14) | (bush[i].row - vOff);
            shadowOAM[6+i].attr1 = (2<<14) | (bush[i].col - hOff) & 0x01ff;
            if (bush[i].aniCounter) {
                shadowOAM[6+i].attr2 = ((22)*32+(0)) | ((4)<<12);
            } else {
                shadowOAM[6+i].attr2 = ((18)*32+(0)) | ((4)<<12);
            }
        }
    } else if (lvl == TWO) {
        for (int i= 0; i < 5; i++) {
            shadowOAM[6+i].attr0 = (0<<14) | (bush[i].row - vOff);
            shadowOAM[6+i].attr1 = (2<<14) | (bush[i].col - hOff) & 0x01ff;
            if (bush[i].aniCounter) {
                shadowOAM[6+i].attr2 = ((22)*32+(4)) | ((4)<<12);
            } else {
                shadowOAM[6+i].attr2 = ((18)*32+(4)) | ((4)<<12);
            }
        }
    } else {
        for (int i= 0; i < 5; i++) {
            shadowOAM[6+i].attr0 = (0<<14) | (bush[i].row - vOff);
            shadowOAM[6+i].attr1 = (2<<14) | (bush[i].col - hOff) & 0x01ff;
            if (bush[i].aniCounter) {
                shadowOAM[6+i].attr2 = ((22)*32+(8)) | ((4)<<12);
            } else {
                shadowOAM[6+i].attr2 = ((18)*32+(8)) | ((4)<<12);
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
        if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<9))) && (~((*(volatile unsigned short *)0x04000130)) & ((1<<8))) && i == 2) {
            if (collision(tree[i].col, tree[i].row, tree[i].width, tree[i].height, seeker.col, seeker.row, seeker.width, seeker.height)) {
                king = 1;
            }
        }
        if (collision(tree[i].col, tree[i].row, tree[i].width, tree[i].height, seeker.col, seeker.row, seeker.width, seeker.height) && (!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0))))) {
            if (!tree[i].checked) {
                playSoundB(rustle_data, rustle_length, 0);
                tree[i].aniCounter = 15;
                int found = rand() % hideCount;
                if (!found) {
                    mgba_printf("nothing");

                } else if (found == 1) {

                    mgba_printf("snake!");
                    if (!snake.found) {
                        snake.col = tree[i].col;
                        snake.row = tree[i].row;
                        shadowOAM[1].attr0 = (2<<14) | (snake.row - vOff);
                        snake.found = 1;
                        snake.aniCounter = 120;
                        stopSoundB();
                        playSoundB(hiss_data, hiss_length, 0);
                    }
                } else {

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
            shadowOAM[11+i].attr0 = (1<<14) | (tree[i].row - vOff);
            shadowOAM[11+i].attr1 = (3<<14) | (tree[i].col - hOff) & 0x01ff;
            if (tree[i].aniCounter) {
                shadowOAM[11+i].attr2 = ((14)*32+(0)) | ((4)<<12);
            } else {
                shadowOAM[11+i].attr2 = ((10)*32+(0)) | ((4)<<12);
            }
        }
    } else if (lvl == TWO) {
        for (int i; i < 3; i++) {
            shadowOAM[11+i].attr0 = (1<<14) | (tree[i].row - vOff);
            shadowOAM[11+i].attr1 = (3<<14) | (tree[i].col - hOff) & 0x01ff;
            if (tree[i].aniCounter) {
                shadowOAM[11+i].attr2 = ((14)*32+(8)) | ((4)<<12);
            } else {
                shadowOAM[11+i].attr2 = ((10)*32+(8)) | ((4)<<12);
            }
        }
    } else {
        for (int i; i < 3; i++) {
            shadowOAM[11+i].attr0 = (1<<14) | (tree[i].row - vOff);
            shadowOAM[11+i].attr1 = (3<<14) | (tree[i].col - hOff) & 0x01ff;
            if (tree[i].aniCounter) {
                shadowOAM[11+i].attr2 = ((14)*32+(16)) | ((4)<<12);
            } else {
                shadowOAM[11+i].attr2 = ((10)*32+(16)) | ((4)<<12);
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
    for (int i = 0; i < 3; i++) {
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
    for (int i = 0; i < 3; i++) {
        if (hiders[i].found) {
            shadowOAM[21+i].attr0 = (0<<14) | (hiders[i].row - vOff);
            if (hiders[i].aniState == SPRITERIGHT) {
                shadowOAM[21+i].attr1 = (1<<14) | (hiders[i].col - hOff) | (1<<12);
            } else {
                shadowOAM[21+i].attr1 = (1<<14) | (hiders[i].col - hOff);
            }
            if (hiders[i].aniState == SPRITELEFT || hiders[i].aniState == SPRITERIGHT) {
                if (hiders[i].curFrame == 0) {
                    shadowOAM[21+i].attr2 = ((4+2*i)*32+(2)) | ((1+i)<<12);
                } else if (hiders[i].curFrame == 1) {
                    shadowOAM[21+i].attr2 = ((4+ 2*i)*32+(0)) | ((1+i)<<12);
                } else if (hiders[i].curFrame == 2) {
                    shadowOAM[21+i].attr2 = ((4 + 2*i)*32+(4)) | ((1+i)<<12);
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
        shadowOAM[2].attr0 = (2<<8);
        stick.col = rand() % 200 + 10;
        manifestStick--;
    } else {
        shadowOAM[2].attr0 = (2<<14) | (stick.row - vOff);
        if (collision(seeker.col, seeker.row, seeker.width, seeker.height, stick.col, stick.row, stick.width, stick.height)) {
            stickTime = 600;
            manifestStick = 900;
        }
    }
}

drawStick() {
    if (shadowOAM[2].attr0 != (2<<8)) {
        shadowOAM[2].attr1 = (0<<14) | (stick.col - hOff) & 0x01ff;
        shadowOAM[2].attr2 = ((0)*32+(13));
    }
}

initBG() {
    if (lvl == TWO) {
        ((unsigned short *)0x5000000)[3] = ((unsigned short *)0x5000000)[5];
        ((unsigned short *)0x5000000)[4] = ((unsigned short *)0x5000000)[6];
        ((unsigned short *)0x5000000)[10] = ((unsigned short *)0x5000000)[12];
        ((unsigned short *)0x5000000)[11] = ((unsigned short *)0x5000000)[13];

    } else if (lvl == THREE){
        ((unsigned short *)0x5000000)[3] = ((unsigned short *)0x5000000)[7];
        ((unsigned short *)0x5000000)[4] = ((unsigned short *)0x5000000)[8];
        ((unsigned short *)0x5000000)[10] = ((unsigned short *)0x5000000)[14];
        ((unsigned short *)0x5000000)[11] = ((unsigned short *)0x5000000)[15];
    }

}

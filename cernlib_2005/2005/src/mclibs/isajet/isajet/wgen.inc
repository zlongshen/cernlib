#ifndef CERNLIB_ISAJET_WGEN_INC
#define CERNLIB_ISAJET_WGEN_INC
*
*
* wgen.inc
*
      COMMON/WGEN/PTGN(3,3),QGEN(3,3),PTSEL(3),QSEL(3),SIGSL(3),NKL,NKH
     1,EMSQ,EMGAM,KSEL,QSELWT(3)
      SAVE /WGEN/
      INTEGER   NKL,NKH,KSEL
      REAL      PTGN,QGEN,PTSEL,QSEL,SIGSL,EMSQ,EMGAM,QSELWT

#endif
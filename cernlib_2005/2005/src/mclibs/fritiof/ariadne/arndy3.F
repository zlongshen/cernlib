*
* $Id: arndy3.F,v 1.1.1.1 1996/01/11 14:05:18 mclareni Exp $
*
* $Log: arndy3.F,v $
* Revision 1.1.1.1  1996/01/11 14:05:18  mclareni
* Fritiof
*
*
C***********************************************************************
 
      REAL FUNCTION ARNDY3()
 
C...Ariadne function RaNDom Y version 3
 
C...Generates a properly distributed Y
C...Suitable for q-qbar emission
 
 
      PARAMETER(MAXDIP=500,MAXPAR=500,MAXSTR=100)
 
      IMPLICIT DOUBLE PRECISION (D)
      IMPLICIT DOUBLE PRECISION (B)
      IMPLICIT LOGICAL (Q)
 
      COMMON /ARINT1/ BC1,BC3,BZM,BZP,BP1,BM1,BP3,BM3,
     $                B1,B2,B3,XT2,XT,Y,QQ1,QQ3,NE1,NE3,
     $                S,W,C,CN,ALPHA0,XLAM2,IFLG,
     $                XT2MP,XT2ME,XT2M,XT2C,XTS,XT3,XT1,
     $                YINT,YMAX,YMIN,
     $                Y1,Y2,Y3,SY1,SY2,SY3,SSY,
     $                AE1,AE3,NXP1,NXP3,FQ1,FQ3
      SAVE /ARINT1/
 
 
      ZMAX=SQRT(XTS/XT2)+SQRT(MAX(XTS/XT2-1.0,0.0))
      ZMIN=MIN(ZMAX,XT1/XT)
      ZMAX=MIN(ZMAX,XT3/XT)
 
      YMAX=LOG(ZMAX)
      YMIN=-LOG(ZMIN)
 
      ARNDY3=-LOG(1.0/ZMAX+RLU(IDUM)*(ZMIN-1.0/ZMAX))
 
      RETURN
 
C**** END OF ARNDY3 ****************************************************
      END

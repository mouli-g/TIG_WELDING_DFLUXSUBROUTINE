      subroutine DFLUX(FLUX,SOL,KSTEP,KINC,TIME,NOEL,NPT,COORDS,
     &                 JLTYP,TEMP,PRESS,SNAME)
C


      include 'ABA_PARAM.INC'
	  dimension FLUX(2), TIME(2), COORDS(3)
      CHARACTER*80 SNAME
C
      X = COORDS(1)
      Y = COORDS(2)
      z = COORDS(3)

      vx = 0.0
      vy = 0.001
      vz = 0.0

      Xstart = 0.0
      Ystart = 0.0
      Zstart = 0.0104
      Dist = 0.0

      Xcentre = Xstart + vx * Time(2)
      Ycentre = Ystart + vy * Time(2)
      Zcentre = Zstart + vz * Time(2)

      XT = Xcentre-X
      YT = Ycentre-Y
      Dist = SQRT((YT*YT)+(XT*XT))

      voltage = 11
      current = 80
      etaeff = 0.48
      rh = 0.005
      FLUX(1) = ((etaeff*voltage*current)/(3.141592654*rh**2.))*exp(-(Dist**2)/(rh**2))



      RETURN
      END


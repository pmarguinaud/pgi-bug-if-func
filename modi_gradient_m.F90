!     ######spl
      MODULE MODI_GRADIENT_M
!     ###################### 
!
CONTAINS
      FUNCTION GZ_M_W(KKA,KKU,KL,PY,PDZZ) RESULT(PGZ_M_W)
!  
IMPLICIT NONE
!
                                                          ! Metric coefficient:
INTEGER,              INTENT(IN)     :: KKA, KKU ! near ground and uppest atmosphere array indexes
INTEGER,              INTENT(IN)     :: KL     ! +1 if grid goes from ground to atmosphere top, -1 otherwise
REAL*8, DIMENSION(:,:,:), INTENT(IN)  :: PDZZ                   !d*zz
!
REAL*8, DIMENSION(:,:,:), INTENT(IN)                :: PY       ! variable at mass
                                                              ! localization
REAL*8, DIMENSION(SIZE(PY,1),SIZE(PY,2),SIZE(PY,3)) :: PGZ_M_W  ! result at flux
                                                              ! side
!
END FUNCTION GZ_M_W
!
END MODULE MODI_GRADIENT_M

FC = pgf90

main.x: main.o turb_ver1.o turb_ver2.o modi_gradient_m.o mode_prandtl.o
	$(FC) -o main.x main.o turb_ver1.o turb_ver2.o modi_gradient_m.o mode_prandtl.o

turb_ver2.o: turb_ver2.F90 modi_gradient_m.o mode_prandtl.o
	$(FC) -c turb_ver2.F90

turb_ver1.o: turb_ver1.F90 modi_gradient_m.o mode_prandtl.o
	$(FC) -c turb_ver1.F90

%.o : %.F90
	$(FC) -c $<
	
clean:
	\rm -f *.x *.o *.mod

#*********************************************************
# Makefile for XFOIL V6.93 programs
# H.Youngren 4/24/01
# M.Drela
#*********************************************************
RM       = /bin/rm -rf
FC       = gfortran
FFLAGS   = -O3 -fdefault-real-8 -fPIC -shared

OBJ =	xfoil.o\
	 xpanel.o\
	 xoper.o\
	 xsolve.o\
	 xgdes.o\
	 xbl.o\
	 xblsys.o\
	 xgeom.o\
	 xutils.o\
	 aread.o\
	 userio.o\
	 spline.o\
	 naca.o\
	 xdriver.o\

default: libxfoil

clean:
	$(RM) *.o libxfoil.a

libxfoil: $(OBJ)
	$(FC) -O3 -shared -fPIC -o $(XFOIL_LIB) $(OBJ)

.SUFFIXES: .o .f .f90

.f.o:
	$(FC) $(FFLAGS) -c $< -o $*.o
	@echo
	@echo "        --- Compiled $*.f successfully ---"
	@echo

.f90.o:
	$(FC) $(FFLAGS) -c $< -o $*.o
	@echo
	@echo "        --- Compiled $*.f90 successfully ---"
	@echo

install:
	install $(XFOIL_LIB) $(INSTALL_DIR)

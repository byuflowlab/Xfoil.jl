#*********************************************************
# Makefile for XFOIL V6.93 programs
# H.Youngren 4/24/01
# M.Drela
#*********************************************************
RM       = /bin/rm -rf
FC       = gfortran
FFLAGS   = -O3 -fdefault-real-8 -fPIC -shared
LIB = libxfoiljl
SUFFIX = .so

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
	$(RM) *.o $(LIB).$(SUFFIX)

libxfoil: $(OBJ)
	$(FC) -O3 -shared -fPIC -o $(LIB).$(SUFFIX) $(OBJ)

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
	install $(LIB).$(SUFFIX) $(INSTALL_DIR)

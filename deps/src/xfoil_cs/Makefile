#*********************************************************
# Makefile for XFOIL V6.93 programs
# H.Youngren 4/24/01
# M.Drela
#*********************************************************
RM	= /bin/rm -rf
FC	= gfortran
FFLAGS	= -O3 -fdefault-real-8 -fPIC -shared
LIB	= libxfoil_cs
SUFFIX	= so

OBJ =	complexify.o\
	c_xfoil.o\
	c_xpanel.o\
	c_xoper.o\
	c_xsolve.o\
	c_xgdes.o\
	c_xbl.o\
	c_xblsys.o\
	c_xgeom.o\
	c_xutils.o\
	c_aread.o\
	c_userio.o\
	c_spline.o\
	c_naca.o

default: libxfoil_cs

clean:
	$(RM) *.o $(LIB).$(SUFFIX)

libxfoil_cs: $(OBJ)
	$(FC) -O3 -shared -fPIC -o $(LIB).$(SUFFIX) $(OBJ)

%.o : %.f
	$(FC) $(FFLAGS) -c $< -o $*.o
	@echo
	@echo "        --- Compiled $*.f successfully ---"
	@echo

%.o : %.f90
	$(FC) $(FFLAGS) -c $< -o $*.o
	@echo
	@echo "        --- Compiled $*.f90 successfully ---"
	@echo

install:
	install $(LIB).$(SUFFIX) $(INSTALL_DIR)

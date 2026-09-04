CC=g++
MINGW=x86_64-w64-mingw32-g++ -static
CFLAGS=-O3 -ffast-math
LDFLAGS=#-static# -lm
PROGRAM=USFlexalign

all: ${PROGRAM}

USFlexalign: USFlexalign.cpp param_set.h basic_fun.h Kabsch.h NW.h TMalign.h pstream.h se.h NWalign.h BLOSUM.h flexalign.h
	${CC} ${CFLAGS} $@.cpp -o $@ ${LDFLAGS}

USFlexalign.exe: USFlexalign.cpp param_set.h basic_fun.h Kabsch.h NW.h TMalign.h pstream.h se.h NWalign.h BLOSUM.h flexalign.h
	${MINGW} ${CFLAGS} USalignFlex.cpp -o $@ ${LDFLAGS}

clean:
	rm -f ${PROGRAM}

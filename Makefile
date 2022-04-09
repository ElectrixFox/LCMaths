CXX = gcc
CXXFLAGS = -I. -g

APPNAME = main
LIBS = -L. -lLCMaths -lm

SRCFILES := $(wildcard *.c)
OBJFILES := $(addprefix obj/, $(patsubst %.c, %.o, $(SRCFILES)))
SRCFILES := $(filter-out LCMaths.c, $(SRCFILES))

obj/%.o: %.c
	$(CXX) $(CXXFLAGS) -c -o $@ $^

all: $(OBJFILES)
	$(CXX) $(CXXFLAGS) $^ -o $(APPNAME) $(LIBS)

lib:
	$(CXX) $(CXXFLAGS) LCMaths.c -c -o obj/LCMaths.o -lm
	ar rcs libLCMaths.a obj/LCMaths.o

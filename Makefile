CXX = gcc
CXXFLAGS = -I. -g

APPNAME = main
LIBS = -L.

SRCFILES = $(wildcard *.c)
OBJFILES = $(addprefix obj/, $(patsubst %.c, %.o, $(SRCFILES)))

obj/%.o: %.c
	$(CXX) $(CXXFLAGS) -c -o $@ $^

all: $(OBJFILES)
	$(CXX) $(CXXFLAGS) $^ -o $(APPNAME) $(LIBS)

lib:
	ar rcs LCMaths.lib obj/LCMaths.o
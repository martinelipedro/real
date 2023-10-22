SOURCES = $(shell find . -type f -name '*.c')
HEADERS = $(shell find . -type f -name '*.h')
OBJECTS = $(SOURCES:.c=.o)

INCDIR = include
EXE = real

.PHONY: all clean

all: $(OBJECTS)
	gcc $^ -o $(EXE)

%.o: %.c
	gcc -c $< -o $@
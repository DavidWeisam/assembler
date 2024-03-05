# Makefile for compiling main.c with globals.h

# Compiler and flags
CC = gcc
CFLAGS = -ansi -Wall -pedantic

# Target executable
TARGET = my_program

# Source files
SRC = main.c utils.c 
HEADERS = globals.h

# Default target
all: $(TARGET)

# Rule to build the executable
$(TARGET): $(SRC)
	$(CC) $(CFLAGS) -o $@ $^

# Rule to compile source file
$(SRC): $(HEADERS)

# Clean up
clean:
	rm -f $(TARGET)

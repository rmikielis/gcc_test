PROJECT = workbench

CC = gcc
CFLAGS = -Wall -std=c99 -g -O2 

SRC = main.c lib/utils.c
OBJ = $(SRC:.c=.o)
ASM = $(SRC:.c=.s)

TARGET = $(PROJECT)

include lib/Makefile

# default rule
all: $(TARGET) $(ASM)

# .o into exe
$(TARGET): $(OBJ)
	$(CC) $(OBJ) $(LDFLAGS) -o $(TARGET).elf
	@echo "Linking complete..."

# src into .o
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@
	@echo "Compiling $<"

# src into .s
%.s: %.c
	$(CC) $(CFLAGS) -S $< -o $@
	@echo "Compiling $<"	

# clean rule
clean:
	rm -f $(OBJ) $(TARGET) $(ASM)
	@echo "Cleaning done..."

.PHONY: all clean

help:
	@echo "LDFLAGS = $(LDFLAGS)"

PROJECT = workbench

CC = gcc
CFLAGS = -Wall -std=c99 -g

SRC = main.c lib/utils.c
OBJ = $(SRC:.c=.o)

TARGET = $(PROJECT)

include lib/Makefile

# default rule
all: $(TARGET)

# .o into exe
$(TARGET): $(OBJ)
	$(CC) $(OBJ) $(LDFLAGS) -o $(TARGET)
	@echo "Linking complete..."

# src into .o
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@
	@echo "Compiling $<"

# clean rule
clean:
	rm -f $(OBJ) $(TARGET)
	@echo "Cleaning done..."

.PHONY: all clean

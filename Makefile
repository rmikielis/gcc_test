PROJECT = workbench

CC = gcc
CFLAGS = -Wall -std=c99 -g
LDFLAGS = -Wl,--defsym=_memset=my_memset,--defsym=_memcpy=my_memcpy
 
SRC = main.c lib/utils.c
OBJ = $(SRC:.c=.o)

TARGET = $(PROJECT)

# default rule
all: $(TARGET)

# .o into exe
$(TARGET): $(OBJ)
	$(CC) $(LDFLAGS) $(OBJ) -o $(TARGET)
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

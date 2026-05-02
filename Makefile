# =============================================
# Makefile for a standard C program
# =============================================

# Compiler and flags
CC       := gcc
CFLAGS   := -Wall -Wextra -Wpedantic -std=c11 -O2
# CFLAGS   += -g          # Uncomment for debugging
# CFLAGS   += -fsanitize=address -fsanitize=undefined  # Uncomment for sanitizers

# Target executable name
TARGET   := program

# Source files (add more .c files as needed)
SRCS     := main.c
# SRCS     := main.c utils.c another.c

# Object files (automatically derived from SRCS)
OBJS     := $(SRCS:.c=.o)

# Default target
all: $(TARGET)

# Link the executable
$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^

# Compile each .c file into .o
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Clean build artifacts
clean:
	rm -f $(OBJS) $(TARGET)

# Rebuild everything from scratch
rebuild: clean all

# Phony targets (not real files)
.PHONY: all clean rebuild

# Makefile for Student Management System
CC = gcc
CFLAGS = -Wall -Wextra -std=c11
OBJ = main.o student.o grade.o utils.o menu.o
TARGET = student_app

all: $(TARGET)
$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJ)
clean:
	rm -f $(OBJ) $(TARGET)

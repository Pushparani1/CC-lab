<<<<<<< HEAD
# Makefile

CC = gcc
CFLAGS = -Wall -g
OBJ = main.o student.o
TARGET = grade_manager

$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJ)

%.o: %.c
	$(CC) $(CFLAGS) -c $<

clean:
	rm -f *.o $(TARGET) students.txt
=======
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
>>>>>>> 9948b04 (added test-2 files)

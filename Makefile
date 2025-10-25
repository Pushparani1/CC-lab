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

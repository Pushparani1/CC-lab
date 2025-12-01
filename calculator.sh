#! /usr/bin/env bash

MAKEFILE="makefile.txt"

echo " a - searching extra _1 "
sed -i 's/main_1\.c/main.c/g' $MAKEFILE
sed -i 's/math_ops_1\.c/math_ops.c/g' $MAKEFILE
sed -i 's/config_1\.h/config.h/g' $MAKEFILE
sed -i 's/logger_1\.c/logger.c/g' $MAKEFILE

echo " done -a "

echo " b - incomplete and incorrect "
sed -i 's/^OBJ.*/OBJ = main.o utils.o math_ops.o io.o config.o logger.o/' $MAKEFILE
sed -i '/^all:/c\all: program' $MAKEFILE
sed -i '/^program:/c\program: $(OBJ)\n\t$(CC) $(CFLAGS) -o program $(OBJ)' $MAKEFILE
sed -i '/^main.o:/c\main.o: main.c common.h utils.h math_ops.h io.h config.h logger.h' $MAKEFILE
sed -i '/^utils.o:/c\utils.o: utils.c utils.h' $MAKEFILE
sed -i '/^math_ops.o:/c\math_ops.o: math_ops.c math_ops.h' $MAKEFILE
sed -i '/^config.o:/c\config.o: config.c config.h' $MAKEFILE
sed -i '/^logger.o:/c\logger.o: logger.c logger.h' $MAKEFILE

echo " done -b "

echo " c - label with mylabel "

for file in *.c *.h; do
    sed -i 's/\blabel\b/mylabel/g' "$file"
done

echo " d - adding comment "

echo -e "\n# All bugs are fixed" >> $MAKEFILE

echo "bugs fixed "

echo " makefile finished "

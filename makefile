#
CC=g++
CFLAGS=-I.

prog: func.o prog.o
	$(CC) $(CFLAGS) -o prog func.o prog.o
	
func.o: func.cpp
	$(CC) $(CFLAGS) -c -o func.o func.cpp
	
prog.o: prog.cpp
	$(CC) $(CFLAGS) -c -o prog.o prog.cpp
	
clean:
	rm -rf *.o prog

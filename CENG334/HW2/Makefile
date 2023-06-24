CC = gcc
CFLAGS =
LIBS = -pthread

all: hw2.c hw2_output.c
	$(CC) $(CFLAGS) $(LIBS) hw2.c hw2_output.c -o hw2

test: hw2copy.c hw2_output.c
	$(CC) $(CFLAGS) $(LIBS) hw2copy.c hw2_output.c -o hw2test

clean:
	rm hw2
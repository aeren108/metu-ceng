CC = gcc
CFLAGS = -g
LIBS = 

all: controller.c message.c logging.c
	$(CC) $(CFLAGS) $(LIBS) controller.c logging.c message.c -o bgame

clean:
	rm bgame
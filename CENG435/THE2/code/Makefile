all: server client

server: server.c packet.c
	gcc -g -o server server.c packet.c -lpthread
client: client.c packet.c
	gcc -g -o client client.c packet.c -lpthread
clean:
	rm server
	rm client

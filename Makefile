CC=gcc
CFLAGS=-ggdb -std=gnu99 

all: client server getaddrinfo

client: TCPEchoClient.c TCPClientUtility.c DieWithMessage.c AddressUtility.c
	$(CC) $(CFLAGS) -o client  TCPEchoClient.c TCPClientUtility.c DieWithMessage.c AddressUtility.c

server: TCPEchoServer.c TCPServerUtility.c DieWithMessage.c AddressUtility.c
	$(CC) $(CFLAGS) -o server  TCPEchoServer.c TCPServerUtility.c DieWithMessage.c AddressUtility.c

getaddrinfo: GetAddrInfo.c DieWithMessage.c AddressUtility.c
	$(CC) $(CFLAGS) -o getaddrinfo GetAddrInfo.c DieWithMessage.c AddressUtility.c

clean:
	rm -rf getaddrinfo client server

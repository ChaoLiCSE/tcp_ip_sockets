CC=gcc
CFLAGS=-ggdb -std=gnu99 

all: getaddrinfo

getaddrinfo: GetAddrInfo.c DieWithMessage.c AddressUtility.c
	$(CC) $(CFLAGS) -o getaddrinfo GetAddrInfo.c DieWithMessage.c AddressUtility.c

clean:
	rm -rf getaddrinfo

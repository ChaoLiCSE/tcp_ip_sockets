#ifndef PRACTICAL_H
#define PRACTICAL_H

#include <stdio.h>
#include <stdbool.h>
#include <sys/socket.h>

void DieWithUserMessage(const char *msg, const char *detail);
void DieWithSystemMessage(const char *msg);

void PrintSocketAddress(const struct sockaddr *address, FILE *stream);

#endif

#ifndef _UTILS
#define _UTILS

#include <stdio.h>

void *my_memset(void *s, int c, size_t n);
void *my_memcpy(void *d, const void *s, size_t n);
int my_memcmp(const void *s, const void *d, size_t n);


void *_memset(void *s, int c, size_t n);
void *_memcpy(void *d, const void *s, size_t n);


#endif
#ifndef _UTILS
#define _UTILS

#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

void *my_mem_set(void *s, int c, size_t n);
void *my_mem_cpy(void *d, const void *s, size_t n);
int my_mem_cmp(const void *s, const void *d, size_t n);

void *memcpy(void *dest, const void *src, __SIZE_TYPE__ n);
void *memset(void *s, int c, __SIZE_TYPE__ n);
int memcmp(const void *s1, const void *s2, __SIZE_TYPE__ n);

int foo(void);

struct my_data {

    char data[8192];

};


#endif
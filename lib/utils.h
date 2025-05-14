#ifndef _UTILS
#define _UTILS

#include <stdio.h>

void *my_mem_set(void *s, int c, size_t n);
void *my_mem_cpy(void *d, const void *s, size_t n);
int my_mem_cmp(const void *s, const void *d, size_t n);


struct my_data {

    char data[4096];

};

void zeroing (struct my_data* var);
void copying (struct my_data *p1, struct my_data *p2);

#endif
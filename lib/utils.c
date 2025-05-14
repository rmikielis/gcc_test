#include <stdint.h>
#include "utils.h"


void __attribute__((hot)) zeroing (struct my_data *var)
{
    *var = (struct my_data){0};
}

void __attribute__((hot)) copying (struct my_data *p1, struct my_data *p2)
{
    *p2 = *p1;
}


void *my_mem_set(void *s, int c, size_t n) {

    uint8_t *p = s;

    while(n > 0) {
        *p = (uint8_t)c;
        p++;
        n--;
    }

    return s;
}

void *my_mem_cpy(void *d, const void *s, size_t n) {

    if (d == s) {
        /* GCC demand to nop overlaping memcpy regions */
        return d;
    }

    uint8_t *dst = d;
    uint8_t const *src = s;

    while(n > 0) {
        *dst = (uint8_t)(*src);
        dst++;
        src++;
        n--;
    }

    return d;
}

int my_mem_cmp(const void *s1, const void *s2, size_t n) {

    uint8_t const *t1 = s1;
    uint8_t const *t2 = s2;

    while (n > 0) {
        if (*t1 != *t2) 
            return *t1 > *t2? 1 : -1;

        t1++;
        t2++;
        n--;
    }

    return 0;
}



/*
void *_memset(void *s, int c, size_t n) __attribute__((alias("*my_memset")));
void *_memcpy(void *d, const void *s, size_t n) __attribute__((alias("my_memcpy")));
*/


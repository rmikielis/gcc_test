#include <stdint.h>
#include "utils.h"



void show_alias(void) {
    printf("show() from alias...\n");
}


void *my_memset(void *s, int c, size_t n) {

    uint8_t *p = s;

    while(n > 0) {
        *p = (uint8_t)c;
        p++;
        n--;
    }

    return s;
}

void *my_memcpy(void *d, const void *s, size_t n) {

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

int my_memcmp(const void *s1, const void *s2, size_t n) {

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



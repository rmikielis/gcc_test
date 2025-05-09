#include <stdint.h>
#include "lib/utils.h"

void main() {

    uint8_t data1[10];
    uint8_t data2[10];

    _memset(data1, 9, sizeof(data1));
    _memcpy(data2, data1, sizeof(data1));

    for (int i = 0; i < 10; i++)
        printf("%d ", data2[i]);

    printf("\n");    

    #ifdef __GNUC__
    printf("Inside GNU...\n");
    #endif
}
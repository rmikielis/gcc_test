#include <stdint.h>
#include "lib/utils.h"

void main() {

    struct my_data f1;
    struct my_data f2;

    zeroing(&f1);

    f1.data[0] = 'a';
    f1.data[13] = 'a';
    f1.data[66] = 'a';
    f1.data[983] = 'a';
    f1.data[2099] = 'a';
    f1.data[3889] = 'a';
    f1.data[4000] = 'a';
    

    copying(&f1, &f2);
}
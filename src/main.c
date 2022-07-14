#include "../lib/console.h"

void main() {
    __putc('O');
    __putc('S');
    __putc('1');

    while(1) {
        char character = __getc();
        __putc(character + 30);
    }
}
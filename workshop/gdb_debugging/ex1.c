#include <stdio.h>
#include <stdlib.h>

int main() {
    char *buf;
    buf = malloc(1024);
    printf("Enter some text: ");
    fgets(buf, 1024, stdin);
    printf("You wrote: %s\n", buf);
    return 0;
}
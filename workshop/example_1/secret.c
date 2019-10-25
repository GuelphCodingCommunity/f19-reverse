#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char a[100] = "### secre";

int main() {
  char *b = "t key! ###";
  strcpy(&a[9], b);

  for (int x = 0; x < strlen(a); x++)
    a[x] += x % 4;

  printf("%s\n", a);
  return 0;
}

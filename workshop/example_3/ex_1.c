#include <stdio.h>
#include <string.h>

int main() {
  asm ("nop");

  int a = 10;
  int b = 30;
  int c = 15;
  int d = 22;
  int *e = {&a,&b,&c,&d};

  char flag[100] = "#7&<Sqfne`%Zlub<6-$<#7&";

  int f = 0;
  int g = 1;

  if (g == f) {
    for (int x = 0; x < 10; x++) {
      for (int y = 0; y < strlen(flag); ++y) {
        flag[y] = flag[y] ^ (e[x*y % 4]);
      }
    }
  }

  printf("%s\n", flag);

  asm ("nop");
  return 0;
}

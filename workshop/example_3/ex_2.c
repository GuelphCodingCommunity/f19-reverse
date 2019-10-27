#include <stdlib.h>
#include <stdio.h>
#include <string.h>

int main() {
  asm ("nop");

  int a, b, c, d, e;
  a = 4;
  b = 2;
  c = 0;
  d = 6;
  e = 9;

  if (a == 5) {
    if (b > 5) {
      if (c <= 6) {
        if (d == 0) {
          if (e >= 10) {
            char a[100] = "#\"!#5753=?3+/.-";
            
            for (int x = 0; x < strlen(a); ++x) {
              a[x] = (a[x]) ^ x;
            }
            
            printf("%s\n", a);
          }
        }
      }
    }
  }


  asm ("nop");
  return 0;
}

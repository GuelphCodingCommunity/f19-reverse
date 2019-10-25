int main() {
  asm ("nop");
  asm ("nop");
  asm ("nop");
  int a;
  int b;

  a = 5;
  b = 6;

  a = a - 5;

  if (a == 0) {
    a++;
  }

  if (b > 0) {
    b++;
  }

  b = b - 2;

  asm ("nop");
  asm ("nop");
  asm ("nop");

  return 0;
}

int main() {
  asm ("nop");
  int a = 1;
  int b = 2 + a;
  asm ("nop");
  a = 1;
  b = 2 - a;
  asm ("nop");
  int *c = &b;
  asm ("nop");
  if (a > 5)
    b = 5;
  else
    b = 4;
  asm ("nop");
  a = 0;
  for (;a < 3; a++)
    b += 1;
  asm ("nop");
  a = 0;
  while(a < 3) {
    b += 1;
    a++;
  }
  asm ("nop");
  return 0;
}

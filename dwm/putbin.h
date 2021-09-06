
static void 
printbinary(char *b, int num, int width)
{
  for(int i = 0; i < width; i++) {
    int mask = 2 << (width - 1 - i);
    b[i] = '0'+ ( (num&mask) >> (width - 1 - i) );
  }
  b[width] = 0;
}

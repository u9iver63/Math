#include <stdio.h>

int main() {
  int num[] = {1, 3, 4, 5, 6, 9, 11};
  int i = 0, x = 12, loc;

  while (i <= 6 && x != num[i]) {
    i = i + 1;
    printf("%d\n",i);
  }
  if (i <= 6) {
    loc = i + 1;
  } else {
    loc = 0;
  }
  printf("Postion of x in the list is: %d ",loc);
  return 0;
}

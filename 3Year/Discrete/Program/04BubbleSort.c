#include <stdio.h>

int main() {
  int num[5] = {3, 2, 4, 1, 5}, temp;
  int i, j;
  for (j = 1; j <= 5 ; j++) {
    for (i = 0; i <= 3; i++) {
      if (num[i] > num[i + 1]) {
        temp = num[i];
        num[i] = num[i + 1];
        num[i + 1] = temp;
      }
    }
  }
  printf("1st Pass:\n");
  for (i = 0; i <= 4; i++) {
    printf("%d\n", num[i]);
  }
}

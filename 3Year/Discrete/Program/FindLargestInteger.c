#include <stdio.h>
int main() {
  int num[] = {1, 8, 12, 9, 11, 2, 14, 5, 10, 4};
  int max = 1, i;
  for (i = 1; i <= 9; i++) {
      if (max < num[i]) {
          max = num[i];
      }
  }
  printf("Maxinum Number is : %d",max);
}

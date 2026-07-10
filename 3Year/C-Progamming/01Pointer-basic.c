#include <stdio.h>

int main() {
    int a=5,b=6,*p;
    p = &a;
    *p = 25;
    printf("%d\n",*p);
    return 0;
}

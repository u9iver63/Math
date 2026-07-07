#include <stdio.h>
int main(){
    int a,b,sum,x;
    x = scanf("%d %d",&a,&b);
    sum = a + b;
    printf("sum:%d \n",sum);
    printf("a: %d \n",a);
    printf("b: %d \n",b);
    printf("\n Number of input or Return of Scanf: %d \n",x);
    return 0;
}

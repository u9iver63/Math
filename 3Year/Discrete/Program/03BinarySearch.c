#include <stdio.h>
int main(){
    int list[] = {1,2,3,5,6,7,8,10,12,13,15,16,18,19,20,22};
    int i=0,j=15,m,loc;

    while (i<j){
        m = (i+j)/2;
        if (19> list[m]){
            i = m +1;
        }
        else{
            j = m;
       }
    }
    if(list[i]==19){
        loc = i + 1;
    }else{
        loc = 0;
    }
    printf("loc:%d",loc);
}


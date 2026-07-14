#include <stdio.h>

int main(){
    char letter[]={'d','f','k','m','a','b'};
    int i,j;
    char temp;
    for(j=0;j<=5;j++){
        for(i=0;i<=4;i++){
            if(letter[i] > letter[i+1]){
                temp = letter[i];
                letter[i] = letter[i+1];
                letter[i+1] = temp;
            }
        }
    }
    for(i=0;i<=5;i++){
        printf("%c, ",letter[i]);

    }
}

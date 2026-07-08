
# Array in C programming
1. Array is collection of more than one data  item of same type.
2. All data items  are stored in *contiguous* memory location.
3. know as the derived data type in C programming language which can store the primitive type of data such as int, char, double, float, etc.
4. it can store the collection of derived data types such as pointers, structure, etc.
5. simplest data structure where each data element can be randomly accessed by using its index number.
#### Advantage of array
1. **Code Optimization**: less code to access the data.
2. **Ease of traversing**: Can be  retrieve the elements of array easily using for loop.
3. **Ease of sorting**.
4. **Random access**: Can be access any element randomly using the array.

#### Disadvantage of array
1. **Fixed sized**: Doesn't grow the size dynamically like linked list.
## Types of Array.
1. Single Dim Array(1-D array).
2. Two Dim Array(2-D array).

## 1.Declaration of 1D Array.


```C
#include <stdio.h>

int main(){
    // declaration of array
    int age[10];
    //char name[-2]; // size of array 'name' is negative
    printf("Size of age in bytes: %d\n",sizeof(age)); // 40 bytes
    // we can also do this
    int name[11/6];
    printf("sizeof name in bytes: %d \n. 11/6 = %d",sizeof(name),11/6);
    return 0;
}
```

```output
46IntroArray
-----------------------
Size of age in bytes: 40
sizeof name in bytes: 4 
. 11/6 = 1
```

### 2. Initialization of array
-  At compile time.
```C
#include <stdio.h>

int main(){
    int a[4] = {1,2,4};
    int b[2];
    printf("%d\n",a[4]);
    printf("address of a:= %p \n",a);
    printf("address of a[0]:= %p \n",&a[0]);
    printf("address of a[1]:= %p \n",&a[1]);
    printf("address of a[2]:= %p \n",&a[2]);
    printf("address of a[3]:= %p \n",&a[3]);
    printf("b[0]=%d,\nb[1]=%d\n",b[0],b[1]);
    return 0;
}

```
***

```bash
47InitializationOfArray.c
-----------------------
0
address of a:= 0x7ffc9ef427b0 
address of a[0]:= 0x7ffc9ef427b0 
address of a[1]:= 0x7ffc9ef427b4 
address of a[2]:= 0x7ffc9ef427b8 
address of a[3]:= 0x7ffc9ef427bc 
b[0]=0,
b[1]=0

```


| Address | 0x7ffc9ef427b0 | 0x7ffc9ef427b4 | 0x7ffc9ef427b8 | 0x7ffc9ef427bc |
| ------- | -------------- | -------------- | -------------- | -------------- |
| value   | 1              | 2              | 4              | 0              |
| index   | 0              | 1              | 2              | 3              |

- At run-time
```C
#include <stdio.h>
int main() {
  int a[5], i;
  printf("Enter the value of array:\n");

  for (i = 0; i <= 4; i++) {
    printf("Enter the value for a[%d]\n", i);
    scanf("%d", &a[i]);
  };
  for (i = 0; i <= 4; i++) {
    printf("a[%d]=%d \n", i, a[i]);
  }
  return 0;
}

```
****
```bash
47InitializationOfArray.c
-----------------------
Enter the value of array:
Enter the value for a[0]
Enter the value for a[1]
Enter the value for a[2]
Enter the value for a[3]
Enter the value for a[4]
a[0]=2 
a[1]=4 
a[2]=1 
a[3]=2 
a[4]=5 
```


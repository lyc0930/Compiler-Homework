#include<stdio.h>
union var{
    char c[5];
    int i;
};
int main(){
    union var data;
    char *c;
    data.c[0] = '2';
    data.c[1] = '0';
    data.c[2] = '1';
    data.c[3] = '6';
    data.c[4] = '\0';
    c = (char*)&data;
    printf("%x %s\n", data.i, c);
    return 0;
}
// \songti \upshape 第一题C程序

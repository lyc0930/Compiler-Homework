#include <stdio.h>
int main()
{
    int a = 0, b = 0;
    { int a = 1; }
    { int b = 2;
        { int a = 3; }
    }
    return 0;
}// \songti \upshape 第四题C程序

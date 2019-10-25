#include <stdio.h>
int main()
{
    int a[6] = {0, 1, 2, 3, 4, 5};
    int i = 6, j = 7;
    int *p = (int*)(&a + 1);
    printf("%d\n",*(p - 1));
    return 0;
} // \upshape \songti 第五题C程序

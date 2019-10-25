void g(int**);
int main()
{
    int line[10], i;
    int *p = line;
    for (i = 0; i < 10; i++)
    {
        *p = i;
        g(&p);
    }
    return 0;
}
void g(int**p)
{
    (**p)++;
    (*p)++;
}
// \songti \upshape 第三题C程序

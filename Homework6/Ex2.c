#define N 2
// \upshape \ttfamily \#define N 11
typedef struct POINT {
    int x, y ;
    char z[ N ];
    struct POINT *next;
} DOT;
void f(DOT p)
{
    p.x = 100;
    p.y = sizeof(p);
    p.z[1] = 'A';
    f(*(p.next));
}
// \songti \upshape 第二题C程序

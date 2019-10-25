#include <stdio.h>
int main()
{
    int f(int level, int (*arg)(void))
    {
        int local()
        {
            return level;
        }

        if (level > 10)
            return f(level - 1, local);
        else if (level > 1)
            return f(level - 1, arg);
        else
            return arg();
    }

    int dummy(){}

    printf("%d", f(17, dummy));

    return 0;
}
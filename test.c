#include <stdio.h>

int main()
{
    int p = 3;
    int apple = sizeof(int) * p;
    printf("%d\n", apple);
    return 0;
}
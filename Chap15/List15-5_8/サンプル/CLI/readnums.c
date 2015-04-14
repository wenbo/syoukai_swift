#include <stdio.h>

int readnums(int n, double p[]) {
    int x = 0;
    while (x < n) {
        if (scanf("%lf", &p[x]) != 1)
            break;
        x++;
    }
    return x;
}

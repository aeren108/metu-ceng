#include<stdio.h>

int main() {
    int x, y, n, xtemp, ytemp;
    char dir;

    scanf("%c %d %d %d", &dir, &x, &y, &n);
    xtemp = x;
    ytemp = y;

    if (dir == 'N') ytemp--;
    else if (dir == 'S') ytemp++;
    else if (dir == 'W') xtemp--;
    else if (dir == 'E') xtemp++;

    if (xtemp < n && xtemp >= 0 && ytemp < n && ytemp >=0) {
        x = xtemp;
        y = ytemp;
    }

    printf("%d %d\n", x, y);
    return 0;
}
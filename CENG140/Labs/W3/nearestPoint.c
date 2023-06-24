#include <stdio.h>
#include <math.h>
/* you can add math library */

#define dist(x1, y1, x2, y2) (sqrt((x1-x2)*(x1-x2) + (y1-y2)*(y1-y2)))

int main() {
    int i;
    int xcoors[10];
    int ycoors[10];
    /* declare your variables */
    int x, y, mini;
    double min, dist;

    for (i=0; i<10; i++){
        scanf("%d ", &xcoors[i]);
    }
    
    for (i=0; i<10; i++){
        scanf("%d ", &ycoors[i]);
    }
    
    scanf("%d %d", &x, &y);
    min = dist(x, y, xcoors[0], ycoors[0]);
    /* implement your loop then */
    for (i = 0; i < 10; ++i) {
        dist = dist(x, y, xcoors[i], ycoors[i]);
        if (dist < min) {
            min = dist;
            mini = i;
        }
    }
    /* print the result */
    printf("P = (%d,%d), nearest point index = %d, distance = %.1f", x, y, mini, min);
    return 0;
}
/* put your code here */
#include<stdio.h>

int main() {
    int mon, tue, wed, thu, fri;
    float monf, tuef, wedf, thuf, frif, avg;
    
    scanf("%d %d %d %d %d", &mon, &tue, &wed, &thu, &fri);
    monf = (mon - 32) / 1.8;
    tuef = (tue - 32) / 1.8;
    wedf = (wed - 32) / 1.8;
    thuf = (thu - 32) / 1.8;
    frif = (fri - 32) / 1.8;
    avg = (monf+tuef+wedf+thuf+frif) / 5.0;

    printf("Celsius on Mon: %.2f\n", monf);
    printf("Celsius on Tue: %.2f\n", tuef);
    printf("Celsius on Wed: %.2f\n", wedf);
    printf("Celsius on Thu: %.2f\n", thuf);
    printf("Celsius on Fri: %.2f\n", frif);
    printf("Average: %.2f\n", avg);

    return 0;
}
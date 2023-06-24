#include <stdlib.h>
#include <stdio.h>

char** split(char *str, char delimeter) {
    char *c = str;
    char **result;
    char *begin = str;
    int len = 0;
    int height = 1;
    int control = 0;
    while (*c != '\0') {
        if (*c == delimeter) height++;
        c++;
    }
    result = (char **) malloc(height * sizeof(char*));
    c = str;
    while(*c != '\0') {
        len++;
        if (*c == delimeter || *(c+1) == '\0') {
            int i;
            printf("Dangg\n");
            *(result + control) = (char *) malloc(len);
            printf("Selamm\n");
            for (i = 0; i < len - 1; ++i) {
                *(*(result + control) + i) = *(begin + i);
                printf("%d %c \n", i, *(*(result + control) + i));
            }
            printf("\nHeyy\n");
            *(*(result + control) + len - 1) = '\0';
            printf("\nQeyy\n");
            begin = c + 1;
            len = 0;
            control++;
        }
        c++;
    }

    return result;
}

main() {
    int i, j;
    char *str = "May the force be with you.";
    char **res = split(str, ' ');
    char *den = malloc(3);
    *den = 'm';
    *(den+1)= 'k';
    *(den+2) = '\0';
    printf("%c\n", **res);


}
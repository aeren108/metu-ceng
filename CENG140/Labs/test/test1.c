#include <stdio.h>
#include <stdlib.h>

char* intersect(char* str1, char* str2);

void findgreatest(int **ptr, int x, int y) {
    int i, j, max = **ptr;
    
    for (i = 0; i < x; ++i) {
        for (j = 0; j < y; ++j) {
            int cur = *(*(ptr + i) + j);
            if (cur > max) {
                max = cur;
            }
        }
    }
    printf("%d", max);
}

int** onedtotwod(int *ptr1, int *ptr2, int size) {
    int **result = malloc(2*sizeof(int*));
    *result = ptr1;
    *(result + 1) = ptr2;
    return result;
}

void concatwithreverse(char* ptr) {
    int size = 0, i;
    char *c = ptr;
    while (*c) {
        ++size;
        ++c;
    }
    
    ptr = realloc(ptr, size * 2 + 1);
    for (i = size; i < size * 2 + 1; ++i) {
        *(ptr + i) = *(ptr + size - (i - size) - 1);
    }
    *(ptr + 2*size) = 0;
}

void printifinside(char **list, char *word, int list_size) {
    int li, not_found = 1;
    char* wc = word, *lc;
    for (li = 0; li < list_size; ++li) {
        int is_inside = 1;
        wc = word;
        while (is_inside && *wc) {
            lc = *(list + li);
            is_inside = 0;
            while (*lc) {
                if (*lc == *wc) {
                    is_inside = 1;
                    break;
                }
                ++lc;
            }
            ++wc;
        }
        
        if (is_inside) {printf("%s\n", *(list + li)); not_found = 0;};
    }
    if (not_found) printf("Not found!\n");
}

char** intersection(char** message1, char** message2) {
    char **str1 = message1, **str2 = message2, **result;
    int size = 0, i = 0;
    while (*str1 || *str2) {
        size++; 
        if (*str1 != NULL) str1++;
        if (*str2 != NULL) str2++;
    }

    result = malloc(size * sizeof(char*) + 1);
    str1 = message1; str2 = message2;
    while (i < size) {
        *(result + i) = intersect(*str1, *str2);
        ++i;
        if (*str1 != NULL) ++str1; 
        if (*str2 != NULL) ++str2;
    }

    *(result + size) = NULL;
    return result;
}

char* intersect(char* str1, char* str2) {
    char *c1 = str1, *c2 = str2, *res;
    int size, i = 0;
    
    if (str1 == NULL || str2 == NULL) return NULL;
    while (*c1 && *c2) {
        ++size; ++c1; ++c2;
    }
    
    res = malloc(size + 1);
    c1 = str1; c2 = str2;
    while (*c1) {
        c2 = str2;
        while(*c2) {
            if (*c1 == *c2) {
                *(res + i) = *c1;
                ++i;
                break;
            }
            ++c2;
        }
        ++c1;
    }
    *(res + i) = 0;
    return res;
}

void print_contents(char** message) {
    char** msg = message;
    while (*msg != NULL) {
        printf("%s\n", *msg);
        msg++;
        printf("%d\n", *msg == NULL);
    }
}

int main(){
    char *message1[] = {"ABC", "DEFG", "CODE", NULL};
    char *message2[] = {"ENRYPT", "DECRYPT", "KEY", "EXAM", NULL};
    char **newmessage;
    print_contents(message1);
    print_contents(message2);

    printf("%s\n", intersect("CODE", "KEY"));

    newmessage = intersection(message1, message2);
    print_contents(newmessage);
    printf("a\n");
    return 0;
}
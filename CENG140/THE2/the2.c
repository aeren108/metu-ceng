#include <stdio.h>
#include <stdlib.h>

char execute_op(char opr1, char opr2, char op);

char* pos;
char* replaced;

char evaluate_wfplf() {
    char first_exp, second_expr;
    char op = 0, res;
    int negate = 0;

    if (*pos == '(') {
        pos++;

        first_exp = evaluate_wfplf();
        pos++;
        
        op = *pos;
        pos++;
        
        second_expr = evaluate_wfplf();
        pos++;

        res = execute_op(first_exp, second_expr, op);
        return res;
    } else if (*pos == 'T' || *pos == 'F') return *pos;
    else if (*pos == '-') {
        char r;
        while (*pos == '-') {
            negate = !negate;
            pos++;
        }

        r = evaluate_wfplf();
        if (negate) return (r == 'T') ? 'F' : 'T';
        return r;
    }
    else return 'L'; /*in case of anything return L */
}

char execute_op(char opr1, char opr2, char op) {
    if (op == '&') {
        if (opr1 == 'T' && opr2 == 'T') return 'T';
        else if (opr1 == 'T' && opr2 == 'F') return 'F';
        else if (opr1 == 'F' && opr2 == 'T') return 'F';
        else return 'F';
    } else if (op == '|') {
        if (opr1 == 'T' && opr2 == 'T') return 'T';
        else if (opr1 == 'T' && opr2 == 'F') return 'T';
        else if (opr1 == 'F' && opr2 == 'T') return 'T';
        else return 'F';
    } else if (op == '>') {
        if (opr1 == 'T' && opr2 == 'T') return 'T';
        else if (opr1 == 'T' && opr2 == 'F') return 'F';
        else if (opr1 == 'F' && opr2 == 'T') return 'T';
        else return 'T';
    } else if (op == '=') {
        if (opr1 == 'T' && opr2 == 'T') return 'T';
        else if (opr1 == 'T' && opr2 == 'F') return 'F';
        else if (opr1 == 'F' && opr2 == 'T') return 'F';
        else return 'T';
    } else return 'J';
}

int is_lower(char c) { return (c <= 122 && c >= 97) ? 1 : 0; }

char* remove_empty(char* str) {
    char* c = str;
    char* result;
    int size, i, j;
    while (*c != 0) {
        size++;
        c++;
    }

    result = malloc((size + 1) * sizeof(char));

    for (i = 0, j = 0; i < size; ++i) {
        if (*(str + i) != ' ' && *(str + i) != '\n') {
            *(result + j) = *(str+i);
            ++j;
        }
    }

    *(result + j + 1) = 0;
    return result;
}

int is_inside(char c, char *arr) {
    char *d = arr;
    while (*d != 0) {
        if (*d == c)
            return 1;
        ++d;
    }
    return 0;
}

char* set_vars(char* str) {
    char* c = str, *arr;
    int i = 0, j = 0, size = 0;
    char prev = 0;

    while (*c != 0) {
        if (is_lower(*c)) {
            ++size;
        }
        ++c;
    }

    arr = malloc((size + 1) * sizeof(char));
    c = str;

    while (*c != 0) {
        if (is_lower(*c) && !is_inside(*c, arr)) {
            *(arr + i) = *c;
            ++i;
        }
        ++c;
    }

    size = i;

    for (i = 0; i < size; ++i) {
        char least = 'z';
        char temp;
        int minj = j;
        for (j = i; j < size; ++j) {
            if (*(arr+j) < least) {
                least = *(arr + j);
                minj = j;
            }
        }

        temp = *(arr + i);
        *(arr + i) = least;
        *(arr + minj) = temp;

    }

    *(arr + size) = 0;
    return arr;
}

int pow(int base, int power) {
    int res = 1;
    while (power > 0) { res *= base; power--; }
    return res;
}

char* replace_values(char* vars, char* values, char* exp) {
    int size = 0, sizevar = 0, i, j;
    char *c = exp, *res;

    while (*c != 0) {
        ++size;
        ++c;
    }

    c = vars;
    while (*c != 0) {++sizevar; ++c;}

    if (replaced == NULL) replaced = malloc((size + 1) * sizeof(char));

    for (i = 0; i < size; ++i) {
        if (is_lower(*(exp + i))) {

            for (j = 0; j < sizevar; ++j) {
                if (*(exp + i) == *(vars + j)) {
                    *(replaced + i) = *(values + j);
                }
            }
        } else *(replaced + i) = *(exp + i);
    }

    *(replaced + size + 1) = 0;
    return res;
}

void draw_chart(char* vars, char* exp) {
    int varlen = 0, i, j, rows;
    char *c = vars;
    char *values;

    replaced = NULL;

    while (*c != 0) {
        varlen++;
        ++c;
    }

    for (i = 0; i < varlen; ++i) {
        printf("%c ", *(vars + i));
    }

    values = malloc(varlen + 1);
    *(values + varlen) = 0;

    for (i = 0; i < varlen; ++i) *(values + i) = 'F';

    printf("R\n");
    rows = pow(2, varlen);
    for (i = 0; i < rows; ++i) {
        char res, *valexp;
        for (j = 0; j < varlen; ++j) {
            int n = varlen - j - 1;
            int control = pow(2, n);
            if (i % control == 0) *(values + j) = (*(values + j) == 'T') ? 'F' : 'T';

            printf("%c ",  *(values + j));
        }

        replace_values(vars, values, exp);
        pos = replaced;
        res = evaluate_wfplf();

        printf("%c\n", res);

    }
}

int main() {
    char* input = malloc(1024);
    char* nonempty, *vars;
    char read;
    int i = 0;

    /*todo: 
    1. read string
    2. extract number of variables
    3. substitute all possible values in str (expression)
    4. evaluate expression (evaluate_wfplf();)
    5. print the chart
    */
    read = getchar();
    while ( read != EOF) {
        *(input + i) = read;
        ++i;
        read = getchar();
    }

    nonempty = remove_empty(input);
    vars = set_vars(nonempty);
    pos = nonempty;
    draw_chart(vars, nonempty);
    return 0;
}
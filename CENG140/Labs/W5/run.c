#include<stdio.h>
#define ERROR 0.000001
#define PI 3.1415926

double power(double base, int exp){
    double result = 1;
    while(exp--){
        result *= base;
    }
    return result;
}

double factorial(int n){
    double result = n;
    while(--n > 0){
        result *= n;
    }
    return result;
}

double absolute(double d){
    return d<0 ? -1*d : d;
}

int combinations(int n, int k){
     printf("(%d, %d)\n", n, k);
     if (k > n/2) {
        k = n - k;
     }
    
    if (k == 0) return 1;
    
    return (n/k)*combinations(n-1, k-1);
}

double recsine(double x, int n, double prev, int iter) {
	double res;
	if (n >= iter) return prev;
	res = prev + power(x, 2*n-1)*power(-1, n+1) / factorial(2*n-1);
	if (absolute(res - prev) <= ERROR) return res;
	return recsine(x, n + 1, res, iter);
}

double sine(double x, int iter){
	return recsine(x, 1, 0, iter);
}

int main() {
	double a;
	a = sine(PI/6, 10);
	printf("%lF", a);
}
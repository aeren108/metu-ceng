#include "the1.h"

int _swap = 0;
double _avg_dist = 0, _max_dist = 0, _total_dist = 0;

int quick_sort(unsigned short* arr, bool hoare, bool median_of_3, int start, int end);
int hoare_partition(unsigned short* arr, bool median_of_3, int start, int end);
int lomuto_partition(unsigned short* arr, bool median_of_3, int start, int end);
int median_of_three(unsigned short* arr, int start, int end);
void swap(unsigned short* arr, int i, int j);

int quickSort(unsigned short* arr, long& swap, double& avg_dist, double& max_dist, bool hoare, bool median_of_3, int size) {
    _swap = 0; _avg_dist = 0; _max_dist = 0; _total_dist = 0;
    int rec = quick_sort(arr, hoare, median_of_3, 0, size-1);
    
    swap = _swap; avg_dist = _total_dist / swap; max_dist = _max_dist;
    return rec;
}


int quick_sort(unsigned short* arr, bool hoare, bool median_of_3, int start, int end) {
    if (end <= start) return 1;
    int rec1, rec2;
    
    if (hoare) {
        int pi = hoare_partition(arr, median_of_3, start, end);
        rec1 = quick_sort(arr, hoare, median_of_3, start, pi);
        rec2 = quick_sort(arr, hoare, median_of_3, pi + 1, end);
    } else {
        int pi = lomuto_partition(arr, median_of_3, start, end);
        rec1 = quick_sort(arr, hoare, median_of_3, start, pi - 1);
        rec2 = quick_sort(arr, hoare, median_of_3, pi + 1, end);
    }
    
    return 1 + rec1 + rec2;
}

int hoare_partition(unsigned short* arr, bool median_of_3, int start, int end) {
    if (median_of_3 && end > start + 1 && median_of_three(arr, start, end) != (start + end) / 2) 
        swap(arr, median_of_three(arr, start, end), (start + end) / 2);
        
    int p = arr[(start + end) / 2];
    int i = start - 1, j = end + 1;
    
    while (true) {
        do { j--; } while (!(arr[j] >= p));
        do { i++; } while (!(arr[i] <= p));
        
        if (i >= j) return j;
        swap(arr, i, j);
    }
}

int lomuto_partition(unsigned short* arr, bool median_of_3, int start, int end) {
    if (median_of_3 && end > start + 1 && median_of_three(arr, start, end) != end)
        swap(arr, median_of_three(arr, start, end), end);
    
    int p = arr[end];
    int i = start - 1, j = start;
    
    for (; j < end; ++j) {
        if (arr[j] >= p) { i++; swap(arr, i, j); }
    }
    
    swap(arr, i + 1, end);
    return i + 1;
}

int larger(unsigned short* arr, int i, int j) {
    if (arr[i] > arr[j]) return i; return j;
}

int median_of_three(unsigned short* arr, int start, int end) {
    int mid = (start + end) / 2;
    
    int largest_i = larger(arr, end, larger(arr, mid, start));
    
    if (largest_i == start) return larger(arr, mid, end);
    else if (largest_i == mid) return larger(arr, start, end);
    return larger(arr, start, mid);
}

void swap(unsigned short* arr, int i, int j) {
    short tmp = arr[j];
    arr[j] = arr[i];
    arr[i] = tmp;
    
    double dist = i > j ? i - j : j - i;
    _total_dist += dist;
    _max_dist = dist > _max_dist ? dist : _max_dist;
    _swap++;
}
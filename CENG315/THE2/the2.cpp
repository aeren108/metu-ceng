#include "the2.h"

// do not add extra libraries here
/*
    arr       : array to be sorted, in order to get points this array should contain be in sorted state before returning
    ascending : true for ascending, false for descending 
    size      : number of elements in the array
*/
#define MAX_VALUE 'Z' - 'A' + 2
#define CHAR_VAL(c) c - 'A' + 1

int length = 0;

//r = 0 -> last char of the string, 
char char_index(std::string &s, int r) {
    if (s.size() < length) {
        int zero = length - s.size();
        if (r < zero) return CHAR_VAL('A' - 1);
        else return CHAR_VAL(s[s.size() - 1 - r + zero]);
    } else return CHAR_VAL(s[s.size() - 1 - r]);
}

int counting_sort(std::string* arr, int size, bool ascending, int r) {
    int iterations = 0;
    
    std::string* barr = new std::string[size];
    int* carr = new int[MAX_VALUE + 1];
    
    for (int i = 0; i < MAX_VALUE; ++i) carr[i] = 0;
    for (int i = 0; i < size; ++i) iterations++, carr[char_index(arr[i], r)] += 1;
    for (int i = 1; i < MAX_VALUE; ++i) iterations++, carr[i] = carr[i] + carr[i - 1];

    for (int i = size - 1; i >= 0; --i) {
        barr[ascending ? carr[char_index(arr[i], r)] - 1 : (r == length - 1) ? (size - 1) - (carr[char_index(arr[i], r)] - 1) : carr[char_index(arr[i], r)] - 1] = arr[i];
        carr[char_index(arr[i], r)]--;
        iterations++;
    }
    
    for (int i = 0; i < size; ++i) iterations++, arr[i] = barr[i];
    
    delete[] carr;
    delete[] barr;
    
    return iterations;
}

int radix_string_sort(std::string* arr, int size, bool ascending) {
    int iterations = 0;
    
    for (int i = 0; i < size; ++i) if (arr[i].size() > length) length = arr[i].size();                                                                                                                                                                                        
    for (int r = 0; r < length; ++r) iterations += counting_sort(arr, size, ascending, r);
    
    return iterations;
}

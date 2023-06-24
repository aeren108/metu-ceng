/********************************************************
 * Kernels to be optimized for the CS:APP Performance Lab
 ********************************************************/

#include <stdio.h>
#include <stdlib.h>
#include "defs.h"
/*
 * Please fill in the following team_t struct
 */
team_t team = {
        "TEAM",    /* Team Name */

        "e2587921",      /* First student ID */
        "Ahmet Eren Çolak",       /* First student name */

        "e2448249",             /* Second student ID */
        "Arda Çavuşoğlu",           /* Second student name */

        "e2448520",             /* Third student ID */
        "Ahmet Buğra Karabölük"            /* Third student Name */
};


/********************
 * CONVOLUTION KERNEL
 ********************/

/***************************************************************
 * Your different versions of the convolution functions  go here
 ***************************************************************/

/*
 * naive_conv - The naive baseline version of convolution
 */
char first_conv_descr[] = "nfirst_conv: Naive baseline implementation";
void first_conv(int dim, pixel *src, pixel *ker, unsigned *dst) {
    int i,j;
    pixel tmpsrc, tmpker;
    
    for(i = 0; i < dim-7; i++) {
        for(j = 0; j < dim-7; j+=2) { 
            dst[RIDX(i, j, dim)] = 0;
            
            tmpsrc = src[RIDX(i,j, dim)];
            tmpker = ker[RIDX(    0, 0, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 
            tmpsrc = src[RIDX(i,j+1, dim)];
            tmpker = ker[RIDX(    0, 1, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 
            tmpsrc = src[RIDX(i,j+2, dim)];
            tmpker = ker[RIDX(    0, 2, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 
            tmpsrc = src[RIDX(i,j+3, dim)];
            tmpker = ker[RIDX(    0, 3, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 
            tmpsrc = src[RIDX(i,j+4, dim)];
            tmpker = ker[RIDX(    0, 4, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 
            tmpsrc = src[RIDX(i,j+5, dim)];
            tmpker = ker[RIDX(    0, 5, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 
            tmpsrc = src[RIDX(i,j+6, dim)];
            tmpker = ker[RIDX(    0, 6, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 
            tmpsrc = src[RIDX(i,j+7, dim)];
            tmpker = ker[RIDX(    0, 7, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 


            tmpsrc = src[RIDX(i+1,j, dim)];
            tmpker = ker[RIDX(    1, 0, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 
            tmpsrc = src[RIDX(i+1,j+1, dim)];
            tmpker = ker[RIDX(    1, 1, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 
            tmpsrc = src[RIDX(i+1,j+2, dim)];
            tmpker = ker[RIDX(    1, 2, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 
            tmpsrc = src[RIDX(i+1,j+3, dim)];
            tmpker = ker[RIDX(    1, 3, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 
            tmpsrc = src[RIDX(i+1,j+4, dim)];
            tmpker = ker[RIDX(    1, 4, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 
            tmpsrc = src[RIDX(i+1,j+5, dim)];
            tmpker = ker[RIDX(    1, 5, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 
            tmpsrc = src[RIDX(i+1,j+6, dim)];
            tmpker = ker[RIDX(    1, 6, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 
            tmpsrc = src[RIDX(i+1,j+7, dim)];
            tmpker = ker[RIDX(    1, 7, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 

            tmpsrc = src[RIDX(i+2,j, dim)];
            tmpker = ker[RIDX(    2, 0, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 
            tmpsrc = src[RIDX(i+2,j+1, dim)];
            tmpker = ker[RIDX(    2, 1, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 
            tmpsrc = src[RIDX(i+2,j+2, dim)];
            tmpker = ker[RIDX(    2, 2, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 
            tmpsrc = src[RIDX(i+2,j+3, dim)];
            tmpker = ker[RIDX(    2, 3, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 
            tmpsrc = src[RIDX(i+2,j+4, dim)];
            tmpker = ker[RIDX(    2, 4, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 
            tmpsrc = src[RIDX(i+2,j+5, dim)];
            tmpker = ker[RIDX(    2, 5, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 
            tmpsrc = src[RIDX(i+2,j+6, dim)];
            tmpker = ker[RIDX(    2, 6, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 
            tmpsrc = src[RIDX(i+2,j+7, dim)];
            tmpker = ker[RIDX(    2, 7, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 

            tmpsrc = src[RIDX(i+3,j, dim)];
            tmpker = ker[RIDX(    3, 0, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 
            tmpsrc = src[RIDX(i+3,j+1, dim)];
            tmpker = ker[RIDX(    3, 1, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 
            tmpsrc = src[RIDX(i+3,j+2, dim)];
            tmpker = ker[RIDX(    3, 2, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 
            tmpsrc = src[RIDX(i+3,j+3, dim)];
            tmpker = ker[RIDX(    3, 3, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 
            tmpsrc = src[RIDX(i+3,j+4, dim)];
            tmpker = ker[RIDX(    3, 4, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 
            tmpsrc = src[RIDX(i+3,j+5, dim)];
            tmpker = ker[RIDX(    3, 5, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 
            tmpsrc = src[RIDX(i+3,j+6, dim)];
            tmpker = ker[RIDX(    3, 6, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 
            tmpsrc = src[RIDX(i+3,j+7, dim)];
            tmpker = ker[RIDX(    3, 7, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 

            tmpsrc = src[RIDX(i+4,j, dim)];
            tmpker = ker[RIDX(    4, 0, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 
            tmpsrc = src[RIDX(i+4,j+1, dim)];
            tmpker = ker[RIDX(    4, 1, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 
            tmpsrc = src[RIDX(i+4,j+2, dim)];
            tmpker = ker[RIDX(    4, 2, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 
            tmpsrc = src[RIDX(i+4,j+3, dim)];
            tmpker = ker[RIDX(    4, 3, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 
            tmpsrc = src[RIDX(i+4,j+4, dim)];
            tmpker = ker[RIDX(    4, 4, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 
            tmpsrc = src[RIDX(i+4,j+5, dim)];
            tmpker = ker[RIDX(    4, 5, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 
            tmpsrc = src[RIDX(i+4,j+6, dim)];
            tmpker = ker[RIDX(    4, 6, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 
            tmpsrc = src[RIDX(i+4,j+7, dim)];
            tmpker = ker[RIDX(    4, 7, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 

            tmpsrc = src[RIDX(i+5,j, dim)];
            tmpker = ker[RIDX(    5, 0, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 
            tmpsrc = src[RIDX(i+5,j+1, dim)];
            tmpker = ker[RIDX(    5, 1, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 
            tmpsrc = src[RIDX(i+5,j+2, dim)];
            tmpker = ker[RIDX(    5, 2, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 
            tmpsrc = src[RIDX(i+5,j+3, dim)];
            tmpker = ker[RIDX(    5, 3, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 
            tmpsrc = src[RIDX(i+5,j+4, dim)];
            tmpker = ker[RIDX(    5, 4, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 
            tmpsrc = src[RIDX(i+5,j+5, dim)];
            tmpker = ker[RIDX(    5, 5, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 
            tmpsrc = src[RIDX(i+5,j+6, dim)];
            tmpker = ker[RIDX(    5, 6, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 
            tmpsrc = src[RIDX(i+5,j+7, dim)];
            tmpker = ker[RIDX(    5, 7, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 

            tmpsrc = src[RIDX(i+6,j, dim)];
            tmpker = ker[RIDX(    6, 0, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 
            tmpsrc = src[RIDX(i+6,j+1, dim)];
            tmpker = ker[RIDX(    6, 1, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 
            tmpsrc = src[RIDX(i+6,j+2, dim)];
            tmpker = ker[RIDX(    6, 2, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 
            tmpsrc = src[RIDX(i+6,j+3, dim)];
            tmpker = ker[RIDX(    6, 3, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 
            tmpsrc = src[RIDX(i+6,j+4, dim)];
            tmpker = ker[RIDX(    6, 4, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 
            tmpsrc = src[RIDX(i+6,j+5, dim)];
            tmpker = ker[RIDX(    6, 5, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 
            tmpsrc = src[RIDX(i+6,j+6, dim)];
            tmpker = ker[RIDX(    6, 6, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 
            tmpsrc = src[RIDX(i+6,j+7, dim)];
            tmpker = ker[RIDX(    6, 7, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 

            tmpsrc = src[RIDX(i+7,j, dim)];
            tmpker = ker[RIDX(    7, 0, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 
            tmpsrc = src[RIDX(i+7,j+1, dim)];
            tmpker = ker[RIDX(    7, 1, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 
            tmpsrc = src[RIDX(i+7,j+2, dim)];
            tmpker = ker[RIDX(    7, 2, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 
            tmpsrc = src[RIDX(i+7,j+3, dim)];
            tmpker = ker[RIDX(    7, 3, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 
            tmpsrc = src[RIDX(i+7,j+4, dim)];
            tmpker = ker[RIDX(    7, 4, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 
            tmpsrc = src[RIDX(i+7,j+5, dim)];
            tmpker = ker[RIDX(    7, 5, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 
            tmpsrc = src[RIDX(i+7,j+6, dim)];
            tmpker = ker[RIDX(    7, 6, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 
            tmpsrc = src[RIDX(i+7,j+7, dim)];
            tmpker = ker[RIDX(    7, 7, 8)];
            dst[RIDX(i, j, dim)] += tmpsrc.red * tmpker.red;  
            dst[RIDX(i, j, dim)] += tmpsrc.green * tmpker.green;
            dst[RIDX(i, j, dim)] += tmpsrc.blue * tmpker.blue; 

            /*for(l = 0; l < 8; l++) {
                int jj = j+l;
                dst[RIDX(i, j, dim)] += src[RIDX(ii,jj, dim)].red * ker[RIDX(k, l, 8)].red;
                dst[RIDX(i, j, dim)] += src[RIDX(ii,jj, dim)].green * ker[RIDX(k, l, 8)].green;
                dst[RIDX(i, j, dim)] += src[RIDX(ii,jj, dim)].blue * ker[RIDX(k, l, 8)].blue;
            }*/
            
        }
    }
}


char first_pooling_descr[] = "First Average Pooling: First implementation";
void first_average_pooling(int dim, pixel *src, pixel *dst) {
    int i,j,tempr,tempg, tempb, srcInd, row = 0, limit = dim/2;

    for(i = 0; i < limit; i++) {
        for(j = 0; j < limit; j++) {
            tempr = 0;
            tempg = 0;
            tempb = 0;

            srcInd = row + j;

            tempg += src[RIDX(i*2 + 0, j*2 + 0, dim)].green;
            tempb += src[RIDX(i*2 + 0, j*2 + 0, dim)].blue;
            tempr += src[RIDX(i*2 + 0, j*2 + 0, dim)].red;

            tempg += src[RIDX(i*2 + 0, j*2 + 1, dim)].green;
            tempb += src[RIDX(i*2 + 0, j*2 + 1, dim)].blue;
            tempr += src[RIDX(i*2 + 0, j*2 + 1, dim)].red;

            tempr += src[RIDX(i*2 + 1, j*2 + 0, dim)].red;
            tempg += src[RIDX(i*2 + 1, j*2 + 0, dim)].green;
            tempb += src[RIDX(i*2 + 1, j*2 + 0, dim)].blue;

            tempr += src[RIDX(i*2 + 1, j*2 + 1, dim)].red;
            tempg += src[RIDX(i*2 + 1, j*2 + 1, dim)].green;
            tempb += src[RIDX(i*2 + 1, j*2 + 1, dim)].blue;

            dst[srcInd].red = tempr / 4;
            dst[srcInd].green = tempg / 4;
            dst[srcInd].blue = tempb / 4;
        }

        row += limit;
    }
}

char first_pooling_descr[] = "First Average Pooling: First implementation";
void first_average_pooling(int dim, pixel *src, pixel *dst) {
    int i,j,tempr,tempg, tempb, srcInd, srcInd2, row = 0, row2 = 0, limit = dim/2, dim2 = 2*dim;

    for(i = 0; i < limit; i++) {
        for(j = 0; j < limit; j++) {
            tempr = 0;
            tempg = 0;
            tempb = 0;

            srcInd = row + j;
            srcInd2 = row2 + j*2;

            tempg += src[srcInd2].green;
            tempb += src[srcInd2].blue;
            tempr += src[srcInd2].red;
            
            tempg += src[srcInd2+1].green;
            tempb += src[srcInd2+1].blue;
            tempr += src[srcInd2+1].red;

            srcInd2 += dim;
            tempr += src[srcInd2].red;
            tempg += src[srcInd2].green;
            tempb += src[srcInd2].blue;

            tempr += src[srcInd2+1].red;
            tempg += src[srcInd2+1].green;
            tempb += src[srcInd2+1].blue;

            dst[srcInd].red = tempr / 4;
            dst[srcInd].green = tempg / 4;
            dst[srcInd].blue = tempb / 4;
        }

        row += limit;
        row2 += dim2;
    }
}

char forth_conv_descr[] = "forth_conv: Forth implementation";
void forth_conv(int dim, pixel *src, pixel *ker, unsigned *dst) {
    int i, j, temp, srcInd, row = 0, limit = dim-7;
    
	for(i = 0; i < limit; i++){
		for(j = 0; j < limit; j++) {
			temp = 0;
			srcInd = row + j;
			temp += src[srcInd].red * ker[0].red;
			temp += src[srcInd].green * ker[0].green;
			temp += src[srcInd].blue * ker[0].blue;
			temp += src[srcInd+1].red * ker[1].red;
			temp += src[srcInd+1].green * ker[1].green;
			temp += src[srcInd+1].blue * ker[1].blue;
			temp += src[srcInd+2].red * ker[2].red;
			temp += src[srcInd+2].green * ker[2].green;
			temp += src[srcInd+2].blue * ker[2].blue;
			temp += src[srcInd+3].red * ker[3].red;
			temp += src[srcInd+3].green * ker[3].green;
			temp += src[srcInd+3].blue * ker[3].blue;
			temp += src[srcInd+4].red * ker[4].red;
			temp += src[srcInd+4].green * ker[4].green;
			temp += src[srcInd+4].blue * ker[4].blue;
			temp += src[srcInd+5].red * ker[5].red;
			temp += src[srcInd+5].green * ker[5].green;
			temp += src[srcInd+5].blue * ker[5].blue;
			temp += src[srcInd+6].red * ker[6].red;
			temp += src[srcInd+6].green * ker[6].green;
			temp += src[srcInd+6].blue * ker[6].blue;
			temp += src[srcInd+7].red * ker[7].red;
			temp += src[srcInd+7].green * ker[7].green;
			temp += src[srcInd+7].blue * ker[7].blue;
			
            srcInd += dim;
			temp += src[srcInd].red * ker[8].red;
			temp += src[srcInd].green * ker[8].green;
			temp += src[srcInd].blue * ker[8].blue;
			temp += src[srcInd+1].red * ker[9].red;
			temp += src[srcInd+1].green * ker[9].green;
			temp += src[srcInd+1].blue * ker[9].blue;
			temp += src[srcInd+2].red * ker[10].red;
			temp += src[srcInd+2].green * ker[10].green;
			temp += src[srcInd+2].blue * ker[10].blue;
			temp += src[srcInd+3].red * ker[11].red;
			temp += src[srcInd+3].green * ker[11].green;
			temp += src[srcInd+3].blue * ker[11].blue;
			temp += src[srcInd+4].red * ker[12].red;
			temp += src[srcInd+4].green * ker[12].green;
			temp += src[srcInd+4].blue * ker[12].blue;
			temp += src[srcInd+5].red * ker[13].red;
			temp += src[srcInd+5].green * ker[13].green;
			temp += src[srcInd+5].blue * ker[13].blue;
			temp += src[srcInd+6].red * ker[14].red;
			temp += src[srcInd+6].green * ker[14].green;
			temp += src[srcInd+6].blue * ker[14].blue;
			temp += src[srcInd+7].red * ker[15].red;
			temp += src[srcInd+7].green * ker[15].green;
			temp += src[srcInd+7].blue * ker[15].blue;
			
            srcInd += dim;
			temp += src[srcInd].red * ker[16].red;
			temp += src[srcInd].green * ker[16].green;
			temp += src[srcInd].blue * ker[16].blue;
			temp += src[srcInd+1].red * ker[17].red;
			temp += src[srcInd+1].green * ker[17].green;
			temp += src[srcInd+1].blue * ker[17].blue;
			temp += src[srcInd+2].red * ker[18].red;
			temp += src[srcInd+2].green * ker[18].green;
			temp += src[srcInd+2].blue * ker[18].blue;
			temp += src[srcInd+3].red * ker[19].red;
			temp += src[srcInd+3].green * ker[19].green;
			temp += src[srcInd+3].blue * ker[19].blue;
			temp += src[srcInd+4].red * ker[20].red;
			temp += src[srcInd+4].green * ker[20].green;
			temp += src[srcInd+4].blue * ker[20].blue;
			temp += src[srcInd+5].red * ker[21].red;
			temp += src[srcInd+5].green * ker[21].green;
			temp += src[srcInd+5].blue * ker[21].blue;
			temp += src[srcInd+6].red * ker[22].red;
			temp += src[srcInd+6].green * ker[22].green;
			temp += src[srcInd+6].blue * ker[22].blue;
			temp += src[srcInd+7].red * ker[23].red;
			temp += src[srcInd+7].green * ker[23].green;
			temp += src[srcInd+7].blue * ker[23].blue;
			
            srcInd += dim;
			temp += src[srcInd].red * ker[24].red;
			temp += src[srcInd].green * ker[24].green;
			temp += src[srcInd].blue * ker[24].blue;
			temp += src[srcInd+1].red * ker[25].red;
			temp += src[srcInd+1].green * ker[25].green;
			temp += src[srcInd+1].blue * ker[25].blue;
			temp += src[srcInd+2].red * ker[26].red;
			temp += src[srcInd+2].green * ker[26].green;
			temp += src[srcInd+2].blue * ker[26].blue;
			temp += src[srcInd+3].red * ker[27].red;
			temp += src[srcInd+3].green * ker[27].green;
			temp += src[srcInd+3].blue * ker[27].blue;
			temp += src[srcInd+4].red * ker[28].red;
			temp += src[srcInd+4].green * ker[28].green;
			temp += src[srcInd+4].blue * ker[28].blue;
			temp += src[srcInd+5].red * ker[29].red;
			temp += src[srcInd+5].green * ker[29].green;
			temp += src[srcInd+5].blue * ker[29].blue;
			temp += src[srcInd+6].red * ker[30].red;
			temp += src[srcInd+6].green * ker[30].green;
			temp += src[srcInd+6].blue * ker[30].blue;
			temp += src[srcInd+7].red * ker[31].red;
			temp += src[srcInd+7].green * ker[31].green;
			temp += src[srcInd+7].blue * ker[31].blue;
			
            srcInd += dim;
			temp += src[srcInd].red * ker[32].red;
			temp += src[srcInd].green * ker[32].green;
			temp += src[srcInd].blue * ker[32].blue;
			temp += src[srcInd+1].red * ker[33].red;
			temp += src[srcInd+1].green * ker[33].green;
			temp += src[srcInd+1].blue * ker[33].blue;
			temp += src[srcInd+2].red * ker[34].red;
			temp += src[srcInd+2].green * ker[34].green;
			temp += src[srcInd+2].blue * ker[34].blue;
			temp += src[srcInd+3].red * ker[35].red;
			temp += src[srcInd+3].green * ker[35].green;
			temp += src[srcInd+3].blue * ker[35].blue;
			temp += src[srcInd+4].red * ker[36].red;
			temp += src[srcInd+4].green * ker[36].green;
			temp += src[srcInd+4].blue * ker[36].blue;
			temp += src[srcInd+5].red * ker[37].red;
			temp += src[srcInd+5].green * ker[37].green;
			temp += src[srcInd+5].blue * ker[37].blue;
			temp += src[srcInd+6].red * ker[38].red;
			temp += src[srcInd+6].green * ker[38].green;
			temp += src[srcInd+6].blue * ker[38].blue;
			temp += src[srcInd+7].red * ker[39].red;
			temp += src[srcInd+7].green * ker[39].green;
			temp += src[srcInd+7].blue * ker[39].blue;
			
            srcInd += dim;
			temp += src[srcInd].red * ker[40].red;
			temp += src[srcInd].green * ker[40].green;
			temp += src[srcInd].blue * ker[40].blue;
			temp += src[srcInd+1].red * ker[41].red;
			temp += src[srcInd+1].green * ker[41].green;
			temp += src[srcInd+1].blue * ker[41].blue;
			temp += src[srcInd+2].red * ker[42].red;
			temp += src[srcInd+2].green * ker[42].green;
			temp += src[srcInd+2].blue * ker[42].blue;
			temp += src[srcInd+3].red * ker[43].red;
			temp += src[srcInd+3].green * ker[43].green;
			temp += src[srcInd+3].blue * ker[43].blue;
			temp += src[srcInd+4].red * ker[44].red;
			temp += src[srcInd+4].green * ker[44].green;
			temp += src[srcInd+4].blue * ker[44].blue;
			temp += src[srcInd+5].red * ker[45].red;
			temp += src[srcInd+5].green * ker[45].green;
			temp += src[srcInd+5].blue * ker[45].blue;
			temp += src[srcInd+6].red * ker[46].red;
			temp += src[srcInd+6].green * ker[46].green;
			temp += src[srcInd+6].blue * ker[46].blue;
			temp += src[srcInd+7].red * ker[47].red;
			temp += src[srcInd+7].green * ker[47].green;
			temp += src[srcInd+7].blue * ker[47].blue;
			
            srcInd += dim;
			temp += src[srcInd].red * ker[48].red;
			temp += src[srcInd].green * ker[48].green;
			temp += src[srcInd].blue * ker[48].blue;
			temp += src[srcInd+1].red * ker[49].red;
			temp += src[srcInd+1].green * ker[49].green;
			temp += src[srcInd+1].blue * ker[49].blue;
			temp += src[srcInd+2].red * ker[50].red;
			temp += src[srcInd+2].green * ker[50].green;
			temp += src[srcInd+2].blue * ker[50].blue;
			temp += src[srcInd+3].red * ker[51].red;
			temp += src[srcInd+3].green * ker[51].green;
			temp += src[srcInd+3].blue * ker[51].blue;
			temp += src[srcInd+4].red * ker[52].red;
			temp += src[srcInd+4].green * ker[52].green;
			temp += src[srcInd+4].blue * ker[52].blue;
			temp += src[srcInd+5].red * ker[53].red;
			temp += src[srcInd+5].green * ker[53].green;
			temp += src[srcInd+5].blue * ker[53].blue;
			temp += src[srcInd+6].red * ker[54].red;
			temp += src[srcInd+6].green * ker[54].green;
			temp += src[srcInd+6].blue * ker[54].blue;
			temp += src[srcInd+7].red * ker[55].red;
			temp += src[srcInd+7].green * ker[55].green;
			temp += src[srcInd+7].blue * ker[55].blue;
			
            srcInd += dim;
			temp += src[srcInd].red * ker[56].red;
			temp += src[srcInd].green * ker[56].green;
			temp += src[srcInd].blue * ker[56].blue;
			temp += src[srcInd+1].red * ker[57].red;
			temp += src[srcInd+1].green * ker[57].green;
			temp += src[srcInd+1].blue * ker[57].blue;
			temp += src[srcInd+2].red * ker[58].red;
			temp += src[srcInd+2].green * ker[58].green;
			temp += src[srcInd+2].blue * ker[58].blue;
			temp += src[srcInd+3].red * ker[59].red;
			temp += src[srcInd+3].green * ker[59].green;
			temp += src[srcInd+3].blue * ker[59].blue;
			temp += src[srcInd+4].red * ker[60].red;
			temp += src[srcInd+4].green * ker[60].green;
			temp += src[srcInd+4].blue * ker[60].blue;
			temp += src[srcInd+5].red * ker[61].red;
			temp += src[srcInd+5].green * ker[61].green;
			temp += src[srcInd+5].blue * ker[61].blue;
			temp += src[srcInd+6].red * ker[62].red;
			temp += src[srcInd+6].green * ker[62].green;
			temp += src[srcInd+6].blue * ker[62].blue;
			temp += src[srcInd+7].red * ker[63].red;
			temp += src[srcInd+7].green * ker[63].green;
			temp += src[srcInd+7].blue * ker[63].blue;
			
			dst[row+j] = temp;
		}
        row += dim;
	}
}

char fifth2_conv_descr[] = "fifth2_conv: 2.8 Fifth implementation";
void fifth2_conv(int dim, pixel *src, pixel *ker, unsigned *dst) {
    int i, j, temp, srcInd, row = 0, limit = dim-7;
    pixel* tsrc = src, *tker = ker;
	for(i = 0; i < limit; ++i){
		for(j = 0; j < limit; ++j) {
			temp = 0;
			tsrc = src + i*dim+ j;
            tker = ker;

            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;
            tsrc++;
            tker++;

            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;
            tsrc++;
            tker++;

            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;
            tsrc++;
            tker++;

            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;
            tsrc++;
            tker++;

            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;
            tsrc++;
            tker++;

            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;
            tsrc++;
            tker++;

            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;
            tsrc++;
            tker++;

            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;
            tker++;


            tsrc += limit;
            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;
            tsrc++;
            tker++;

            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;
            tsrc++;
            tker++;

            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;
            tsrc++;
            tker++;

            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;
            tsrc++;
            tker++;

            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;
            tsrc++;
            tker++;

            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;
            tsrc++;
            tker++;

            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;
            tsrc++;
            tker++;

            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;
            tker++;


            tsrc += limit;
            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;
            tsrc++;
            tker++;

            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;
            tsrc++;
            tker++;

            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;
            tsrc++;
            tker++;

            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;
            tsrc++;
            tker++;

            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;
            tsrc++;
            tker++;

            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;
            tsrc++;
            tker++;

            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;
            tsrc++;
            tker++;

            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;
            tker++;


            tsrc += limit;
            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;
            tsrc++;
            tker++;

            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;
            tsrc++;
            tker++;

            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;
            tsrc++;
            tker++;

            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;
            tsrc++;
            tker++;

            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;
            tsrc++;
            tker++;

            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;
            tsrc++;
            tker++;

            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;
            tsrc++;
            tker++;

            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;
            tker++;


            tsrc += limit;
            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;
            tsrc++;
            tker++;

            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;
            tsrc++;
            tker++;

            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;
            tsrc++;
            tker++;

            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;
            tsrc++;
            tker++;

            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;
            tsrc++;
            tker++;

            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;
            tsrc++;
            tker++;

            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;
            tsrc++;
            tker++;

            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;
            tker++;


            tsrc += limit;
            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;
            tsrc++;
            tker++;

            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;
            tsrc++;
            tker++;

            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;
            tsrc++;
            tker++;

            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;
            tsrc++;
            tker++;

            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;
            tsrc++;
            tker++;

            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;
            tsrc++;
            tker++;

            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;
            tsrc++;
            tker++;

            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;
            tker++;


            tsrc += limit;
            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;
            tsrc++;
            tker++;

            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;
            tsrc++;
            tker++;

            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;
            tsrc++;
            tker++;

            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;
            tsrc++;
            tker++;

            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;
            tsrc++;
            tker++;

            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;
            tsrc++;
            tker++;

            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;
            tsrc++;
            tker++;

            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;
            tker++;


            tsrc += limit;
            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;
            tsrc++;
            tker++;

            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;
            tsrc++;
            tker++;

            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;
            tsrc++;
            tker++;

            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;
            tsrc++;
            tker++;

            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;
            tsrc++;
            tker++;

            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;
            tsrc++;
            tker++;

            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;
            tsrc++;
            tker++;

            temp += tsrc->red * tker->red;
            temp += tsrc->green * tker->green;
            temp += tsrc->blue * tker->blue;

			dst[i*dim+j] = temp;
		}
        //row += dim;
	}
}

char fifth_conv_descr[] = "fifth_conv: 2.8 Fifth implementation";
void fifth_conv(int dim, pixel *src, pixel *ker, unsigned *dst) {
    int i, j, temp, srcInd, row = 0, limit = dim-7;
    pixel* tsrc = src, *tker = ker;
	for(i = 0; i < limit; ++i){
		for(j = 0; j < limit; ++j) {
			temp = 0;
			tsrc = src + i*dim+ j;
            temp += tsrc->red * ker[0].red;
            temp += tsrc->green * ker[0].green;
            temp += tsrc->blue * ker[0].blue;
            tsrc++;

            temp += tsrc->red * ker[1].red;
            temp += tsrc->green * ker[1].green;
            temp += tsrc->blue * ker[1].blue;
            tsrc++;

            temp += tsrc->red * ker[2].red;
            temp += tsrc->green * ker[2].green;
            temp += tsrc->blue * ker[2].blue;
            tsrc++;

            temp += tsrc->red * ker[3].red;
            temp += tsrc->green * ker[3].green;
            temp += tsrc->blue * ker[3].blue;
            tsrc++;

            temp += tsrc->red * ker[4].red;
            temp += tsrc->green * ker[4].green;
            temp += tsrc->blue * ker[4].blue;
            tsrc++;

            temp += tsrc->red * ker[5].red;
            temp += tsrc->green * ker[5].green;
            temp += tsrc->blue * ker[5].blue;
            tsrc++;

            temp += tsrc->red * ker[6].red;
            temp += tsrc->green * ker[6].green;
            temp += tsrc->blue * ker[6].blue;
            tsrc++;

            temp += tsrc->red * ker[7].red;
            temp += tsrc->green * ker[7].green;
            temp += tsrc->blue * ker[7].blue;


            tsrc += limit;
            temp += tsrc->red * ker[8].red;
            temp += tsrc->green * ker[8].green;
            temp += tsrc->blue * ker[8].blue;
            tsrc++;

            temp += tsrc->red * ker[9].red;
            temp += tsrc->green * ker[9].green;
            temp += tsrc->blue * ker[9].blue;
            tsrc++;

            temp += tsrc->red * ker[10].red;
            temp += tsrc->green * ker[10].green;
            temp += tsrc->blue * ker[10].blue;
            tsrc++;

            temp += tsrc->red * ker[11].red;
            temp += tsrc->green * ker[11].green;
            temp += tsrc->blue * ker[11].blue;
            tsrc++;

            temp += tsrc->red * ker[12].red;
            temp += tsrc->green * ker[12].green;
            temp += tsrc->blue * ker[12].blue;
            tsrc++;

            temp += tsrc->red * ker[13].red;
            temp += tsrc->green * ker[13].green;
            temp += tsrc->blue * ker[13].blue;
            tsrc++;

            temp += tsrc->red * ker[14].red;
            temp += tsrc->green * ker[14].green;
            temp += tsrc->blue * ker[14].blue;
            tsrc++;

            temp += tsrc->red * ker[15].red;
            temp += tsrc->green * ker[15].green;
            temp += tsrc->blue * ker[15].blue;


            tsrc += limit;
            temp += tsrc->red * ker[16].red;
            temp += tsrc->green * ker[16].green;
            temp += tsrc->blue * ker[16].blue;
            tsrc++;

            temp += tsrc->red * ker[17].red;
            temp += tsrc->green * ker[17].green;
            temp += tsrc->blue * ker[17].blue;
            tsrc++;

            temp += tsrc->red * ker[18].red;
            temp += tsrc->green * ker[18].green;
            temp += tsrc->blue * ker[18].blue;
            tsrc++;

            temp += tsrc->red * ker[19].red;
            temp += tsrc->green * ker[19].green;
            temp += tsrc->blue * ker[19].blue;
            tsrc++;

            temp += tsrc->red * ker[20].red;
            temp += tsrc->green * ker[20].green;
            temp += tsrc->blue * ker[20].blue;
            tsrc++;

            temp += tsrc->red * ker[21].red;
            temp += tsrc->green * ker[21].green;
            temp += tsrc->blue * ker[21].blue;
            tsrc++;

            temp += tsrc->red * ker[22].red;
            temp += tsrc->green * ker[22].green;
            temp += tsrc->blue * ker[22].blue;
            tsrc++;

            temp += tsrc->red * ker[23].red;
            temp += tsrc->green * ker[23].green;
            temp += tsrc->blue * ker[23].blue;


            tsrc += limit;
            temp += tsrc->red * ker[24].red;
            temp += tsrc->green * ker[24].green;
            temp += tsrc->blue * ker[24].blue;
            tsrc++;

            temp += tsrc->red * ker[25].red;
            temp += tsrc->green * ker[25].green;
            temp += tsrc->blue * ker[25].blue;
            tsrc++;

            temp += tsrc->red * ker[26].red;
            temp += tsrc->green * ker[26].green;
            temp += tsrc->blue * ker[26].blue;
            tsrc++;

            temp += tsrc->red * ker[27].red;
            temp += tsrc->green * ker[27].green;
            temp += tsrc->blue * ker[27].blue;
            tsrc++;

            temp += tsrc->red * ker[28].red;
            temp += tsrc->green * ker[28].green;
            temp += tsrc->blue * ker[28].blue;
            tsrc++;

            temp += tsrc->red * ker[29].red;
            temp += tsrc->green * ker[29].green;
            temp += tsrc->blue * ker[29].blue;
            tsrc++;

            temp += tsrc->red * ker[30].red;
            temp += tsrc->green * ker[30].green;
            temp += tsrc->blue * ker[30].blue;
            tsrc++;

            temp += tsrc->red * ker[31].red;
            temp += tsrc->green * ker[31].green;
            temp += tsrc->blue * ker[31].blue;


            tsrc += limit;
            temp += tsrc->red * ker[32].red;
            temp += tsrc->green * ker[32].green;
            temp += tsrc->blue * ker[32].blue;
            tsrc++;

            temp += tsrc->red * ker[33].red;
            temp += tsrc->green * ker[33].green;
            temp += tsrc->blue * ker[33].blue;
            tsrc++;

            temp += tsrc->red * ker[34].red;
            temp += tsrc->green * ker[34].green;
            temp += tsrc->blue * ker[34].blue;
            tsrc++;

            temp += tsrc->red * ker[35].red;
            temp += tsrc->green * ker[35].green;
            temp += tsrc->blue * ker[35].blue;
            tsrc++;

            temp += tsrc->red * ker[36].red;
            temp += tsrc->green * ker[36].green;
            temp += tsrc->blue * ker[36].blue;
            tsrc++;

            temp += tsrc->red * ker[37].red;
            temp += tsrc->green * ker[37].green;
            temp += tsrc->blue * ker[37].blue;
            tsrc++;

            temp += tsrc->red * ker[38].red;
            temp += tsrc->green * ker[38].green;
            temp += tsrc->blue * ker[38].blue;
            tsrc++;

            temp += tsrc->red * ker[39].red;
            temp += tsrc->green * ker[39].green;
            temp += tsrc->blue * ker[39].blue;


            tsrc += limit;
            temp += tsrc->red * ker[40].red;
            temp += tsrc->green * ker[40].green;
            temp += tsrc->blue * ker[40].blue;
            tsrc++;

            temp += tsrc->red * ker[41].red;
            temp += tsrc->green * ker[41].green;
            temp += tsrc->blue * ker[41].blue;
            tsrc++;

            temp += tsrc->red * ker[42].red;
            temp += tsrc->green * ker[42].green;
            temp += tsrc->blue * ker[42].blue;
            tsrc++;

            temp += tsrc->red * ker[43].red;
            temp += tsrc->green * ker[43].green;
            temp += tsrc->blue * ker[43].blue;
            tsrc++;

            temp += tsrc->red * ker[44].red;
            temp += tsrc->green * ker[44].green;
            temp += tsrc->blue * ker[44].blue;
            tsrc++;

            temp += tsrc->red * ker[45].red;
            temp += tsrc->green * ker[45].green;
            temp += tsrc->blue * ker[45].blue;
            tsrc++;

            temp += tsrc->red * ker[46].red;
            temp += tsrc->green * ker[46].green;
            temp += tsrc->blue * ker[46].blue;
            tsrc++;

            temp += tsrc->red * ker[47].red;
            temp += tsrc->green * ker[47].green;
            temp += tsrc->blue * ker[47].blue;


            tsrc += limit;
            temp += tsrc->red * ker[48].red;
            temp += tsrc->green * ker[48].green;
            temp += tsrc->blue * ker[48].blue;
            tsrc++;

            temp += tsrc->red * ker[49].red;
            temp += tsrc->green * ker[49].green;
            temp += tsrc->blue * ker[49].blue;
            tsrc++;

            temp += tsrc->red * ker[50].red;
            temp += tsrc->green * ker[50].green;
            temp += tsrc->blue * ker[50].blue;
            tsrc++;

            temp += tsrc->red * ker[51].red;
            temp += tsrc->green * ker[51].green;
            temp += tsrc->blue * ker[51].blue;
            tsrc++;

            temp += tsrc->red * ker[52].red;
            temp += tsrc->green * ker[52].green;
            temp += tsrc->blue * ker[52].blue;
            tsrc++;

            temp += tsrc->red * ker[53].red;
            temp += tsrc->green * ker[53].green;
            temp += tsrc->blue * ker[53].blue;
            tsrc++;

            temp += tsrc->red * ker[54].red;
            temp += tsrc->green * ker[54].green;
            temp += tsrc->blue * ker[54].blue;
            tsrc++;

            temp += tsrc->red * ker[55].red;
            temp += tsrc->green * ker[55].green;
            temp += tsrc->blue * ker[55].blue;


            tsrc += limit;
            temp += tsrc->red * ker[56].red;
            temp += tsrc->green * ker[56].green;
            temp += tsrc->blue * ker[56].blue;
            tsrc++;

            temp += tsrc->red * ker[57].red;
            temp += tsrc->green * ker[57].green;
            temp += tsrc->blue * ker[57].blue;
            tsrc++;

            temp += tsrc->red * ker[58].red;
            temp += tsrc->green * ker[58].green;
            temp += tsrc->blue * ker[58].blue;
            tsrc++;

            temp += tsrc->red * ker[59].red;
            temp += tsrc->green * ker[59].green;
            temp += tsrc->blue * ker[59].blue;
            tsrc++;

            temp += tsrc->red * ker[60].red;
            temp += tsrc->green * ker[60].green;
            temp += tsrc->blue * ker[60].blue;
            tsrc++;

            temp += tsrc->red * ker[61].red;
            temp += tsrc->green * ker[61].green;
            temp += tsrc->blue * ker[61].blue;
            tsrc++;

            temp += tsrc->red * ker[62].red;
            temp += tsrc->green * ker[62].green;
            temp += tsrc->blue * ker[62].blue;
            tsrc++;

            temp += tsrc->red * ker[63].red;
            temp += tsrc->green * ker[63].green;
            temp += tsrc->blue * ker[63].blue;

			
			dst[i*dim+j] = temp;
		}
        //row += dim;
	}
}

char forth2_conv_descr[] = "forth_conv: Forth implementation";
void forth2_conv(int dim, pixel *src, pixel *ker, unsigned *dst) {
    int i, j, temp, temp2, temp3, srcInd, row = 0, limit = dim-7;
    
	for(i = 0; i < limit; i++){
        
		for(j = 0; j < limit; j++) {
			temp = 0;
            temp2 = 0;
            
			srcInd = row + j;
			temp += src[srcInd].red * ker[0].red;
			temp2 += src[srcInd].green * ker[0].green;
			temp += src[srcInd].blue * ker[0].blue;
			temp2 += src[srcInd+1].red * ker[1].red;
			temp += src[srcInd+1].green * ker[1].green;
			temp2 += src[srcInd+1].blue * ker[1].blue;
			temp += src[srcInd+2].red * ker[2].red;
			temp2 += src[srcInd+2].green * ker[2].green;
			temp += src[srcInd+2].blue * ker[2].blue;
			temp2 += src[srcInd+3].red * ker[3].red;
			temp += src[srcInd+3].green * ker[3].green;
			temp2 += src[srcInd+3].blue * ker[3].blue;
			temp += src[srcInd+4].red * ker[4].red;
			temp2 += src[srcInd+4].green * ker[4].green;
			temp += src[srcInd+4].blue * ker[4].blue;
			temp2 += src[srcInd+5].red * ker[5].red;
			temp += src[srcInd+5].green * ker[5].green;
			temp2 += src[srcInd+5].blue * ker[5].blue;
			temp += src[srcInd+6].red * ker[6].red;
			temp2 += src[srcInd+6].green * ker[6].green;
			temp += src[srcInd+6].blue * ker[6].blue;
			temp2 += src[srcInd+7].red * ker[7].red;
			temp += src[srcInd+7].green * ker[7].green;
			temp2 += src[srcInd+7].blue * ker[7].blue;
			
            srcInd += dim;
			temp += src[srcInd].red * ker[8].red;
			temp2 += src[srcInd].green * ker[8].green;
			temp += src[srcInd].blue * ker[8].blue;
			temp2 += src[srcInd+1].red * ker[9].red;
			temp += src[srcInd+1].green * ker[9].green;
			temp2 += src[srcInd+1].blue * ker[9].blue;
			temp += src[srcInd+2].red * ker[10].red;
			temp2 += src[srcInd+2].green * ker[10].green;
			temp += src[srcInd+2].blue * ker[10].blue;
			temp2 += src[srcInd+3].red * ker[11].red;
			temp += src[srcInd+3].green * ker[11].green;
			temp2 += src[srcInd+3].blue * ker[11].blue;
			temp += src[srcInd+4].red * ker[12].red;
			temp2 += src[srcInd+4].green * ker[12].green;
			temp += src[srcInd+4].blue * ker[12].blue;
			temp2 += src[srcInd+5].red * ker[13].red;
			temp += src[srcInd+5].green * ker[13].green;
			temp2 += src[srcInd+5].blue * ker[13].blue;
			temp += src[srcInd+6].red * ker[14].red;
			temp2 += src[srcInd+6].green * ker[14].green;
			temp += src[srcInd+6].blue * ker[14].blue;
			temp2 += src[srcInd+7].red * ker[15].red;
			temp += src[srcInd+7].green * ker[15].green;
			temp2 += src[srcInd+7].blue * ker[15].blue;
			
            srcInd += dim;
			temp += src[srcInd].red * ker[16].red;
			temp2 += src[srcInd].green * ker[16].green;
			temp += src[srcInd].blue * ker[16].blue;
			temp2 += src[srcInd+1].red * ker[17].red;
			temp += src[srcInd+1].green * ker[17].green;
			temp2 += src[srcInd+1].blue * ker[17].blue;
			temp += src[srcInd+2].red * ker[18].red;
			temp2 += src[srcInd+2].green * ker[18].green;
			temp += src[srcInd+2].blue * ker[18].blue;
			temp2 += src[srcInd+3].red * ker[19].red;
			temp += src[srcInd+3].green * ker[19].green;
			temp2 += src[srcInd+3].blue * ker[19].blue;
			temp += src[srcInd+4].red * ker[20].red;
			temp2 += src[srcInd+4].green * ker[20].green;
			temp += src[srcInd+4].blue * ker[20].blue;
			temp2 += src[srcInd+5].red * ker[21].red;
			temp += src[srcInd+5].green * ker[21].green;
			temp2 += src[srcInd+5].blue * ker[21].blue;
			temp += src[srcInd+6].red * ker[22].red;
			temp2 += src[srcInd+6].green * ker[22].green;
			temp += src[srcInd+6].blue * ker[22].blue;
			temp2 += src[srcInd+7].red * ker[23].red;
			temp += src[srcInd+7].green * ker[23].green;
			temp2 += src[srcInd+7].blue * ker[23].blue;
			
            srcInd += dim;
			temp += src[srcInd].red * ker[24].red;
			temp2 += src[srcInd].green * ker[24].green;
			temp += src[srcInd].blue * ker[24].blue;
			temp2 += src[srcInd+1].red * ker[25].red;
			temp += src[srcInd+1].green * ker[25].green;
			temp2 += src[srcInd+1].blue * ker[25].blue;
			temp += src[srcInd+2].red * ker[26].red;
			temp2 += src[srcInd+2].green * ker[26].green;
			temp += src[srcInd+2].blue * ker[26].blue;
			temp2 += src[srcInd+3].red * ker[27].red;
			temp += src[srcInd+3].green * ker[27].green;
			temp2 += src[srcInd+3].blue * ker[27].blue;
			temp += src[srcInd+4].red * ker[28].red;
			temp2 += src[srcInd+4].green * ker[28].green;
			temp += src[srcInd+4].blue * ker[28].blue;
			temp2 += src[srcInd+5].red * ker[29].red;
			temp += src[srcInd+5].green * ker[29].green;
			temp2 += src[srcInd+5].blue * ker[29].blue;
			temp += src[srcInd+6].red * ker[30].red;
			temp2 += src[srcInd+6].green * ker[30].green;
			temp += src[srcInd+6].blue * ker[30].blue;
			temp2 += src[srcInd+7].red * ker[31].red;
			temp += src[srcInd+7].green * ker[31].green;
			temp2 += src[srcInd+7].blue * ker[31].blue;
			
            srcInd += dim;
			temp += src[srcInd].red * ker[32].red;
			temp2 += src[srcInd].green * ker[32].green;
			temp += src[srcInd].blue * ker[32].blue;
			temp2 += src[srcInd+1].red * ker[33].red;
			temp += src[srcInd+1].green * ker[33].green;
			temp2 += src[srcInd+1].blue * ker[33].blue;
			temp += src[srcInd+2].red * ker[34].red;
			temp2 += src[srcInd+2].green * ker[34].green;
			temp += src[srcInd+2].blue * ker[34].blue;
			temp2 += src[srcInd+3].red * ker[35].red;
			temp += src[srcInd+3].green * ker[35].green;
			temp2 += src[srcInd+3].blue * ker[35].blue;
			temp += src[srcInd+4].red * ker[36].red;
			temp2 += src[srcInd+4].green * ker[36].green;
			temp += src[srcInd+4].blue * ker[36].blue;
			temp2 += src[srcInd+5].red * ker[37].red;
			temp += src[srcInd+5].green * ker[37].green;
			temp2 += src[srcInd+5].blue * ker[37].blue;
			temp += src[srcInd+6].red * ker[38].red;
			temp2 += src[srcInd+6].green * ker[38].green;
			temp += src[srcInd+6].blue * ker[38].blue;
			temp2 += src[srcInd+7].red * ker[39].red;
			temp += src[srcInd+7].green * ker[39].green;
			temp2 += src[srcInd+7].blue * ker[39].blue;
			
            srcInd += dim;
			temp += src[srcInd].red * ker[40].red;
			temp2 += src[srcInd].green * ker[40].green;
			temp += src[srcInd].blue * ker[40].blue;
			temp2 += src[srcInd+1].red * ker[41].red;
			temp += src[srcInd+1].green * ker[41].green;
			temp2 += src[srcInd+1].blue * ker[41].blue;
			temp += src[srcInd+2].red * ker[42].red;
			temp2 += src[srcInd+2].green * ker[42].green;
			temp += src[srcInd+2].blue * ker[42].blue;
			temp2 += src[srcInd+3].red * ker[43].red;
			temp += src[srcInd+3].green * ker[43].green;
			temp2 += src[srcInd+3].blue * ker[43].blue;
			temp += src[srcInd+4].red * ker[44].red;
			temp2 += src[srcInd+4].green * ker[44].green;
			temp += src[srcInd+4].blue * ker[44].blue;
			temp2 += src[srcInd+5].red * ker[45].red;
			temp += src[srcInd+5].green * ker[45].green;
			temp2 += src[srcInd+5].blue * ker[45].blue;
			temp += src[srcInd+6].red * ker[46].red;
			temp2 += src[srcInd+6].green * ker[46].green;
			temp += src[srcInd+6].blue * ker[46].blue;
			temp2 += src[srcInd+7].red * ker[47].red;
			temp += src[srcInd+7].green * ker[47].green;
			temp2 += src[srcInd+7].blue * ker[47].blue;
			
            srcInd += dim;
			temp += src[srcInd].red * ker[48].red;
			temp2 += src[srcInd].green * ker[48].green;
			temp += src[srcInd].blue * ker[48].blue;
			temp2 += src[srcInd+1].red * ker[49].red;
			temp += src[srcInd+1].green * ker[49].green;
			temp2 += src[srcInd+1].blue * ker[49].blue;
			temp += src[srcInd+2].red * ker[50].red;
			temp2 += src[srcInd+2].green * ker[50].green;
			temp += src[srcInd+2].blue * ker[50].blue;
			temp2 += src[srcInd+3].red * ker[51].red;
			temp += src[srcInd+3].green * ker[51].green;
			temp2 += src[srcInd+3].blue * ker[51].blue;
			temp += src[srcInd+4].red * ker[52].red;
			temp2 += src[srcInd+4].green * ker[52].green;
			temp += src[srcInd+4].blue * ker[52].blue;
			temp2 += src[srcInd+5].red * ker[53].red;
			temp += src[srcInd+5].green * ker[53].green;
			temp2 += src[srcInd+5].blue * ker[53].blue;
			temp += src[srcInd+6].red * ker[54].red;
			temp2 += src[srcInd+6].green * ker[54].green;
			temp += src[srcInd+6].blue * ker[54].blue;
			temp2 += src[srcInd+7].red * ker[55].red;
			temp += src[srcInd+7].green * ker[55].green;
			temp2 += src[srcInd+7].blue * ker[55].blue;
			
            srcInd += dim;
			temp += src[srcInd].red * ker[56].red;
			temp2 += src[srcInd].green * ker[56].green;
			temp += src[srcInd].blue * ker[56].blue;
			temp2 += src[srcInd+1].red * ker[57].red;
			temp += src[srcInd+1].green * ker[57].green;
			temp2 += src[srcInd+1].blue * ker[57].blue;
			temp += src[srcInd+2].red * ker[58].red;
			temp2 += src[srcInd+2].green * ker[58].green;
			temp += src[srcInd+2].blue * ker[58].blue;
			temp2 += src[srcInd+3].red * ker[59].red;
			temp += src[srcInd+3].green * ker[59].green;
			temp2 += src[srcInd+3].blue * ker[59].blue;
			temp += src[srcInd+4].red * ker[60].red;
			temp2 += src[srcInd+4].green * ker[60].green;
			temp += src[srcInd+4].blue * ker[60].blue;
			temp2 += src[srcInd+5].red * ker[61].red;
			temp += src[srcInd+5].green * ker[61].green;
			temp2 += src[srcInd+5].blue * ker[61].blue;
			temp += src[srcInd+6].red * ker[62].red;
			temp2 += src[srcInd+6].green * ker[62].green;
			temp += src[srcInd+6].blue * ker[62].blue;
			temp2 += src[srcInd+7].red * ker[63].red;
			temp += src[srcInd+7].green * ker[63].green;
			temp2 += src[srcInd+7].blue * ker[63].blue;
			
			dst[row+j] = temp + temp2;
		}
        row += dim;
	}
}


char first_conv_descr[] = "first_conv: Bizimki baseline implementation";
void first_conv(int dim, pixel *src, pixel *ker, unsigned *dst) {
    int i,j,k,tmp, limit = dim - 7;

    for(i = 0; i < limit; i++) {
        for(j = 0; j < limit; j++) {
            tmp = 0;

            for(k = 0; k < 8; k++)
                
                    tmp += src[RIDX((i+k),(j), dim)].red * ker[RIDX(k, 0, 8)].red;
                    tmp += src[RIDX((i+k),(j), dim)].green * ker[RIDX(k, 0, 8)].green;
                    tmp += src[RIDX((i+k),(j), dim)].blue * ker[RIDX(k, 0, 8)].blue;

                    tmp += src[RIDX((i+k),(j+1), dim)].red * ker[RIDX(k, 1, 8)].red;
                    tmp += src[RIDX((i+k),(j+1), dim)].green * ker[RIDX(k, 1, 8)].green;
                    tmp += src[RIDX((i+k),(j+1), dim)].blue * ker[RIDX(k, 1, 8)].blue;

                    tmp += src[RIDX((i+k),(j+2), dim)].red * ker[RIDX(k, 2, 8)].red;
                    tmp += src[RIDX((i+k),(j+2), dim)].green * ker[RIDX(k, 2, 8)].green;
                    tmp += src[RIDX((i+k),(j+2), dim)].blue * ker[RIDX(k, 2, 8)].blue;

                    tmp += src[RIDX((i+k),(j+3), dim)].red * ker[RIDX(k, 3, 8)].red;
                    tmp += src[RIDX((i+k),(j+3), dim)].green * ker[RIDX(k, 3, 8)].green;
                    tmp += src[RIDX((i+k),(j+3), dim)].blue * ker[RIDX(k, 3, 8)].blue;

                    tmp += src[RIDX((i+k),(j+4), dim)].red * ker[RIDX(k, 4, 8)].red;
                    tmp += src[RIDX((i+k),(j+4), dim)].green * ker[RIDX(k, 4, 8)].green;
                    tmp += src[RIDX((i+k),(j+4), dim)].blue * ker[RIDX(k, 4, 8)].blue;

                    tmp += src[RIDX((i+k),(j+5), dim)].red * ker[RIDX(k, 5, 8)].red;
                    tmp += src[RIDX((i+k),(j+5), dim)].green * ker[RIDX(k, 5, 8)].green;
                    tmp += src[RIDX((i+k),(j+5), dim)].blue * ker[RIDX(k, 5, 8)].blue;

                    tmp += src[RIDX((i+k),(j+6), dim)].red * ker[RIDX(k, 6, 8)].red;
                    tmp += src[RIDX((i+k),(j+6), dim)].green * ker[RIDX(k, 6, 8)].green;
                    tmp += src[RIDX((i+k),(j+6), dim)].blue * ker[RIDX(k, 6, 8)].blue;

                    tmp += src[RIDX((i+k),(j+7), dim)].red * ker[RIDX(k, 7, 8)].red;
                    tmp += src[RIDX((i+k),(j+7), dim)].green * ker[RIDX(k, 7, 8)].green;
                    tmp += src[RIDX((i+k),(j+7), dim)].blue * ker[RIDX(k, 7, 8)].blue;
                

        }

        dst[RIDX(i,j,dim)] = tmp;
    }
}

char naive_conv_descr[] = "naive_conv: Naive baseline implementation";
void naive_conv(int dim, pixel *src, pixel *ker, unsigned *dst) {
    int i,j,k,l;

    for(i = 0; i < dim-8+1; i++)
        for(j = 0; j < dim-8+1; j++) {
            dst[RIDX(i, j, dim)] = 0;
            for(k = 0; k < 8; k++)
                for(l = 0; l < 8; l++) {
                    dst[RIDX(i, j, dim)] += src[RIDX((i+k),(j+l), dim)].red * ker[RIDX(k, l, 8)].red;
                    dst[RIDX(i, j, dim)] += src[RIDX((i+k),(j+l), dim)].green * ker[RIDX(k, l, 8)].green;
                    dst[RIDX(i, j, dim)] += src[RIDX((i+k),(j+l), dim)].blue * ker[RIDX(k, l, 8)].blue;
                }

        }
}

/*
 * convolution - Your current working version of convolution
 * IMPORTANT: This is the version you will be graded on
 */
char convolution_descr[] = "Convolution: Current working version";
void convolution(int dim, pixel *src, pixel *ker, unsigned *dst)
{

    first_conv(dim,src,ker,dst);

}

/*********************************************************************
 * register_conv_functions - Register all of your different versions
 *     of the convolution functions  with the driver by calling the
 *     add_conv_function() for each test function. When you run the
 *     driver program, it will test and report the performance of each
 *     registered test function.
 *********************************************************************/

void register_conv_functions() {
    add_conv_function(&naive_conv, naive_conv_descr);
    add_conv_function(&convolution, first_conv_descr);
    /* ... Register additional test functions here */
}




/************************
 * AVERAGE POOLING KERNEL
 ************************/

/*********************************************************
 * Your different versions of the average pooling  go here
 *********************************************************/

/*
 * naive_average_pooling - The naive baseline version of average pooling
 */
char naive_average_pooling_descr[] = "Naive Average Pooling: Naive baseline implementation";
void naive_average_pooling(int dim, pixel *src, pixel *dst) {
    int i,j,k,l;

    for(i = 0; i < dim/2; i++)
        for(j = 0; j < dim/2; j++) {
            dst[RIDX(i, j, dim/2)].red = 0;
            dst[RIDX(i, j, dim/2)].green = 0;
            dst[RIDX(i, j, dim/2)].blue = 0;
            for(k = 0; k < 2; k++) {
                for (l = 0; l < 2; l++) {
                    dst[RIDX(i, j, dim/2)].red += src[RIDX(i*2 + k, j*2 + l, dim)].red;
                    dst[RIDX(i, j, dim/2)].green += src[RIDX(i*2 + k, j*2 + l, dim)].green;
                    dst[RIDX(i, j, dim/2)].blue += src[RIDX(i*2 + k, j*2 + l, dim)].blue;
                }
            }
            dst[RIDX(i, j, dim/2)].red /= 4;
            dst[RIDX(i, j, dim/2)].green /= 4;
            dst[RIDX(i, j, dim/2)].blue /= 4;
        }
}

char first_pooling_descr[] = "First Average Pooling: Naive baseline implementation";
void first_average_pooling(int dim, pixel *src, pixel *dst) {
    int i,j,k,l;

    for(i = 0; i < dim/2; i++)
        for(j = 0; j < dim/2; j++) {
            dst[RIDX(i, j, dim/2)].red = 0;
            dst[RIDX(i, j, dim/2)].green = 0;
            dst[RIDX(i, j, dim/2)].blue = 0;
            for(k = 0; k < 2; k++) {
                for (l = 0; l < 2; l++) {
                    dst[RIDX(i, j, dim/2)].red += src[RIDX(i*2 + k, j*2 + l, dim)].red;
                    dst[RIDX(i, j, dim/2)].green += src[RIDX(i*2 + k, j*2 + l, dim)].green;
                    dst[RIDX(i, j, dim/2)].blue += src[RIDX(i*2 + k, j*2 + l, dim)].blue;
                }
            }
            dst[RIDX(i, j, dim/2)].red /= 4;
            dst[RIDX(i, j, dim/2)].green /= 4;
            dst[RIDX(i, j, dim/2)].blue /= 4;
        }
}

/*
 * average_pooling - Your current working version of average_pooling
 * IMPORTANT: This is the version you will be graded on
 */
char average_pooling_descr[] = "Average Pooling: Current working version";
void average_pooling(int dim, pixel *src, pixel *dst)
{

    naive_average_pooling(dim,src,dst);

}

/******************************************************************************
 * register_average_pooling_functions - Register all of your different versions
 *     of the average pooling  with the driver by calling the
 *     add_average_pooling_function() for each test function. When you run the
 *     driver program, it will test and report the performance of each
 *     registered test function.  
 ******************************************************************************/

void register_average_pooling_functions() {
    add_average_pooling_function(&naive_average_pooling, naive_average_pooling_descr);
    add_average_pooling_function(&average_pooling, average_pooling_descr);
    /* ... Register additional test functions here */
}


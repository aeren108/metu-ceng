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
        "Unrollu Acilen Birakman Lazim",    /* Team Name */

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

char dene2_conv_descr[] = "dene2_conv: Bizimki baseline implementation";
void dene2_conv(int dim, pixel *src, pixel *ker, unsigned *dst) {
    int limit = dim - 7;

    for(int i = 0; i < limit; i++) {
        for(int j = 0; j < limit; j++) {
            int tmp = 0;

            for(int k = 0; k < 8; k++) {
                
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

char naive2_conv_descr[] = "naive2_conv: Naive2 baseline implementation";
void naive2_conv(int dim, pixel *src, pixel *ker, unsigned *dst) {
    int i,j,k,l;

    for(i = 0; i < dim-8+1; i+=4)
        for(j = 0; j < dim-8+1; j+=4) {
            for (int m = i; m < i+4; ++m) {
                for (int n = j; n < j+4; ++n) {
                    dst[RIDX(m, n, dim)] = 0;
                    for(k = 0; k < 8; k++)
                        for(l = 0; l < 8; l++) {
                            dst[RIDX(m, n, dim)] += src[RIDX((m+k),(n+l), dim)].red * ker[RIDX(k, l, 8)].red + src[RIDX((m+k),(n+l), dim)].green * ker[RIDX(k, l, 8)].green +
                            src[RIDX((m+k),(n+l), dim)].blue * ker[RIDX(k, l, 8)].blue;
                        }
                }
            }
            
        }
}

char fifth_conv_descr[] = "fifth_conv: 2.8 Fifth implementation";
void fifth_conv(int dim, pixel *src, pixel *ker, unsigned *dst) {
    int i, j, temp, limit = dim-7;
    pixel* tsrc = src;

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

char forth_conv_descr[] = "forth_conv: Forth implementation";
void forth_conv(int dim, pixel *src, pixel *ker, unsigned *dst) {
    int i, j, temp, limit = dim-7;
    pixel* tsrc = src, *tker = ker;

	for(i = 0; i < dim-7; ++i){
		for(j = 0; j < dim-7; ++j) {
			temp = 0;
			src = tsrc + i*dim+j;
            tker = ker;

            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;
            src++;
            tker++;

            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;
            src++;
            tker++;

            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;
            src++;
            tker++;

            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;
            src++;
            tker++;

            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;
            src++;
            tker++;

            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;
            src++;
            tker++;

            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;
            src++;
            tker++;

            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;
            tker++;


            src += limit;
            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;
            src++;
            tker++;

            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;
            src++;
            tker++;

            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;
            src++;
            tker++;

            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;
            src++;
            tker++;

            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;
            src++;
            tker++;

            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;
            src++;
            tker++;

            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;
            src++;
            tker++;

            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;
            tker++;


            src += limit;
            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;
            src++;
            tker++;

            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;
            src++;
            tker++;

            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;
            src++;
            tker++;

            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;
            src++;
            tker++;

            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;
            src++;
            tker++;

            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;
            src++;
            tker++;

            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;
            src++;
            tker++;

            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;
            tker++;


            src += limit;
            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;
            src++;
            tker++;

            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;
            src++;
            tker++;

            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;
            src++;
            tker++;

            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;
            src++;
            tker++;

            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;
            src++;
            tker++;

            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;
            src++;
            tker++;

            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;
            src++;
            tker++;

            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;
            tker++;


            src += limit;
            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;
            src++;
            tker++;

            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;
            src++;
            tker++;

            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;
            src++;
            tker++;

            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;
            src++;
            tker++;

            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;
            src++;
            tker++;

            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;
            src++;
            tker++;

            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;
            src++;
            tker++;

            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;
            tker++;


            src += limit;
            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;
            src++;
            tker++;

            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;
            src++;
            tker++;

            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;
            src++;
            tker++;

            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;
            src++;
            tker++;

            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;
            src++;
            tker++;

            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;
            src++;
            tker++;

            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;
            src++;
            tker++;

            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;
            tker++;


            src += limit;
            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;
            src++;
            tker++;

            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;
            src++;
            tker++;

            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;
            src++;
            tker++;

            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;
            src++;
            tker++;

            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;
            src++;
            tker++;

            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;
            src++;
            tker++;

            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;
            src++;
            tker++;

            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;
            tker++;


            src += limit;
            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;
            src++;
            tker++;

            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;
            src++;
            tker++;

            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;
            src++;
            tker++;

            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;
            src++;
            tker++;

            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;
            src++;
            tker++;

            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;
            src++;
            tker++;

            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;
            src++;
            tker++;

            temp += src->red * tker->red;
            temp += src->green * tker->green;
            temp += src->blue * tker->blue;

			dst[i*dim+j] = temp;
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

    forth_conv(dim,src,ker,dst);

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
    add_conv_function(&convolution, convolution_descr);
    //add_conv_function(&naive2_conv, naive2_conv_descr);
    //add_conv_function(&forth_conv, forth_conv_descr);
   //add_conv_function(&deneme1_conv, deneme1_conv_descr);
    //add_conv_function(&srctmp_conv, srctmp_conv_descr);
    //add_conv_function(&gpt_conv, "GPT deneme");
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

char first_pooling_descr[] = "First Average Pooling: First implementation";
void first_average_pooling(int dim, pixel *src, pixel *dst) {
    int i,j,tempr,tempg, tempb, srcInd2, row = 0, row2 = 0, limit = dim/2, dim2 = 2*dim;

    for(i = 0; i < limit; i++) {
        for(j = 0; j < limit; j++) {
            tempr = 0;
            tempg = 0;
            tempb = 0;
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

            dst[row+j].red = tempr / 4;
            dst[row+j].green = tempg / 4;
            dst[row+j].blue = tempb / 4;
        }

        row += limit;
        row2 += dim2;
    }
}


/*
 * average_pooling - Your current working version of average_pooling
 * IMPORTANT: This is the version you will be graded on
 */
char average_pooling_descr[] = "Average Pooling: Current working version";
void average_pooling(int dim, pixel *src, pixel *dst)
{

    first_average_pooling(dim,src,dst);

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
    add_average_pooling_function(&first_average_pooling, first_pooling_descr);
    /* ... Register additional test functions here */
}


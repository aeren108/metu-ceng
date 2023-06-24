/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/aeren/Okul/CENG232/Lab4/lab4_part1/lab4_1.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {0, 0};
static unsigned int ng3[] = {1U, 0U};
static int ng4[] = {1, 0};
static unsigned int ng5[] = {6U, 0U};
static int ng6[] = {2, 0};
static unsigned int ng7[] = {7U, 0U};
static int ng8[] = {3, 0};
static unsigned int ng9[] = {11U, 0U};
static int ng10[] = {4, 0};
static unsigned int ng11[] = {12U, 0U};
static int ng12[] = {5, 0};
static unsigned int ng13[] = {13U, 0U};
static int ng14[] = {6, 0};
static unsigned int ng15[] = {14U, 0U};
static int ng16[] = {7, 0};
static unsigned int ng17[] = {29U, 0U};
static int ng18[] = {8, 0};
static unsigned int ng19[] = {30U, 0U};
static int ng20[] = {9, 0};
static unsigned int ng21[] = {31U, 0U};
static int ng22[] = {10, 0};
static unsigned int ng23[] = {16U, 0U};
static int ng24[] = {11, 0};
static unsigned int ng25[] = {23U, 0U};
static int ng26[] = {12, 0};
static unsigned int ng27[] = {24U, 0U};
static int ng28[] = {13, 0};
static unsigned int ng29[] = {25U, 0U};
static int ng30[] = {14, 0};
static unsigned int ng31[] = {26U, 0U};
static int ng32[] = {15, 0};



static void Initial_8_0(char *t0)
{
    char t3[8];
    char t4[8];
    char *t1;
    char *t2;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned int t13;
    int t14;
    char *t15;
    unsigned int t16;
    int t17;
    int t18;
    unsigned int t19;
    unsigned int t20;
    int t21;
    int t22;

LAB0:    xsi_set_current_line(8, ng0);

LAB2:    xsi_set_current_line(9, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1608);
    t5 = (t0 + 1608);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = (t0 + 1608);
    t9 = (t8 + 64U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng2)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t7, t10, 2, 1, t11, 32, 1);
    t12 = (t3 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (!(t13));
    t15 = (t4 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (!(t16));
    t18 = (t14 && t17);
    if (t18 == 1)
        goto LAB3;

LAB4:    xsi_set_current_line(10, ng0);
    t1 = ((char*)((ng3)));
    t2 = (t0 + 1608);
    t5 = (t0 + 1608);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = (t0 + 1608);
    t9 = (t8 + 64U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng4)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t7, t10, 2, 1, t11, 32, 1);
    t12 = (t3 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (!(t13));
    t15 = (t4 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (!(t16));
    t18 = (t14 && t17);
    if (t18 == 1)
        goto LAB5;

LAB6:    xsi_set_current_line(11, ng0);
    t1 = ((char*)((ng5)));
    t2 = (t0 + 1608);
    t5 = (t0 + 1608);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = (t0 + 1608);
    t9 = (t8 + 64U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng6)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t7, t10, 2, 1, t11, 32, 1);
    t12 = (t3 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (!(t13));
    t15 = (t4 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (!(t16));
    t18 = (t14 && t17);
    if (t18 == 1)
        goto LAB7;

LAB8:    xsi_set_current_line(12, ng0);
    t1 = ((char*)((ng7)));
    t2 = (t0 + 1608);
    t5 = (t0 + 1608);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = (t0 + 1608);
    t9 = (t8 + 64U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng8)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t7, t10, 2, 1, t11, 32, 1);
    t12 = (t3 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (!(t13));
    t15 = (t4 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (!(t16));
    t18 = (t14 && t17);
    if (t18 == 1)
        goto LAB9;

LAB10:    xsi_set_current_line(13, ng0);
    t1 = ((char*)((ng9)));
    t2 = (t0 + 1608);
    t5 = (t0 + 1608);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = (t0 + 1608);
    t9 = (t8 + 64U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng10)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t7, t10, 2, 1, t11, 32, 1);
    t12 = (t3 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (!(t13));
    t15 = (t4 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (!(t16));
    t18 = (t14 && t17);
    if (t18 == 1)
        goto LAB11;

LAB12:    xsi_set_current_line(14, ng0);
    t1 = ((char*)((ng11)));
    t2 = (t0 + 1608);
    t5 = (t0 + 1608);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = (t0 + 1608);
    t9 = (t8 + 64U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng12)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t7, t10, 2, 1, t11, 32, 1);
    t12 = (t3 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (!(t13));
    t15 = (t4 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (!(t16));
    t18 = (t14 && t17);
    if (t18 == 1)
        goto LAB13;

LAB14:    xsi_set_current_line(15, ng0);
    t1 = ((char*)((ng13)));
    t2 = (t0 + 1608);
    t5 = (t0 + 1608);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = (t0 + 1608);
    t9 = (t8 + 64U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng14)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t7, t10, 2, 1, t11, 32, 1);
    t12 = (t3 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (!(t13));
    t15 = (t4 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (!(t16));
    t18 = (t14 && t17);
    if (t18 == 1)
        goto LAB15;

LAB16:    xsi_set_current_line(16, ng0);
    t1 = ((char*)((ng15)));
    t2 = (t0 + 1608);
    t5 = (t0 + 1608);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = (t0 + 1608);
    t9 = (t8 + 64U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng16)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t7, t10, 2, 1, t11, 32, 1);
    t12 = (t3 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (!(t13));
    t15 = (t4 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (!(t16));
    t18 = (t14 && t17);
    if (t18 == 1)
        goto LAB17;

LAB18:    xsi_set_current_line(17, ng0);
    t1 = ((char*)((ng17)));
    t2 = (t0 + 1608);
    t5 = (t0 + 1608);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = (t0 + 1608);
    t9 = (t8 + 64U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng18)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t7, t10, 2, 1, t11, 32, 1);
    t12 = (t3 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (!(t13));
    t15 = (t4 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (!(t16));
    t18 = (t14 && t17);
    if (t18 == 1)
        goto LAB19;

LAB20:    xsi_set_current_line(18, ng0);
    t1 = ((char*)((ng19)));
    t2 = (t0 + 1608);
    t5 = (t0 + 1608);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = (t0 + 1608);
    t9 = (t8 + 64U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng20)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t7, t10, 2, 1, t11, 32, 1);
    t12 = (t3 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (!(t13));
    t15 = (t4 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (!(t16));
    t18 = (t14 && t17);
    if (t18 == 1)
        goto LAB21;

LAB22:    xsi_set_current_line(19, ng0);
    t1 = ((char*)((ng21)));
    t2 = (t0 + 1608);
    t5 = (t0 + 1608);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = (t0 + 1608);
    t9 = (t8 + 64U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng22)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t7, t10, 2, 1, t11, 32, 1);
    t12 = (t3 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (!(t13));
    t15 = (t4 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (!(t16));
    t18 = (t14 && t17);
    if (t18 == 1)
        goto LAB23;

LAB24:    xsi_set_current_line(20, ng0);
    t1 = ((char*)((ng23)));
    t2 = (t0 + 1608);
    t5 = (t0 + 1608);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = (t0 + 1608);
    t9 = (t8 + 64U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng24)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t7, t10, 2, 1, t11, 32, 1);
    t12 = (t3 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (!(t13));
    t15 = (t4 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (!(t16));
    t18 = (t14 && t17);
    if (t18 == 1)
        goto LAB25;

LAB26:    xsi_set_current_line(21, ng0);
    t1 = ((char*)((ng25)));
    t2 = (t0 + 1608);
    t5 = (t0 + 1608);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = (t0 + 1608);
    t9 = (t8 + 64U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng26)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t7, t10, 2, 1, t11, 32, 1);
    t12 = (t3 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (!(t13));
    t15 = (t4 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (!(t16));
    t18 = (t14 && t17);
    if (t18 == 1)
        goto LAB27;

LAB28:    xsi_set_current_line(22, ng0);
    t1 = ((char*)((ng27)));
    t2 = (t0 + 1608);
    t5 = (t0 + 1608);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = (t0 + 1608);
    t9 = (t8 + 64U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng28)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t7, t10, 2, 1, t11, 32, 1);
    t12 = (t3 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (!(t13));
    t15 = (t4 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (!(t16));
    t18 = (t14 && t17);
    if (t18 == 1)
        goto LAB29;

LAB30:    xsi_set_current_line(23, ng0);
    t1 = ((char*)((ng29)));
    t2 = (t0 + 1608);
    t5 = (t0 + 1608);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = (t0 + 1608);
    t9 = (t8 + 64U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng30)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t7, t10, 2, 1, t11, 32, 1);
    t12 = (t3 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (!(t13));
    t15 = (t4 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (!(t16));
    t18 = (t14 && t17);
    if (t18 == 1)
        goto LAB31;

LAB32:    xsi_set_current_line(24, ng0);
    t1 = ((char*)((ng31)));
    t2 = (t0 + 1608);
    t5 = (t0 + 1608);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = (t0 + 1608);
    t9 = (t8 + 64U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng32)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t7, t10, 2, 1, t11, 32, 1);
    t12 = (t3 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (!(t13));
    t15 = (t4 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (!(t16));
    t18 = (t14 && t17);
    if (t18 == 1)
        goto LAB33;

LAB34:
LAB1:    return;
LAB3:    t19 = *((unsigned int *)t3);
    t20 = *((unsigned int *)t4);
    t21 = (t19 - t20);
    t22 = (t21 + 1);
    xsi_vlogvar_assign_value(t2, t1, 0, *((unsigned int *)t4), t22);
    goto LAB4;

LAB5:    t19 = *((unsigned int *)t3);
    t20 = *((unsigned int *)t4);
    t21 = (t19 - t20);
    t22 = (t21 + 1);
    xsi_vlogvar_assign_value(t2, t1, 0, *((unsigned int *)t4), t22);
    goto LAB6;

LAB7:    t19 = *((unsigned int *)t3);
    t20 = *((unsigned int *)t4);
    t21 = (t19 - t20);
    t22 = (t21 + 1);
    xsi_vlogvar_assign_value(t2, t1, 0, *((unsigned int *)t4), t22);
    goto LAB8;

LAB9:    t19 = *((unsigned int *)t3);
    t20 = *((unsigned int *)t4);
    t21 = (t19 - t20);
    t22 = (t21 + 1);
    xsi_vlogvar_assign_value(t2, t1, 0, *((unsigned int *)t4), t22);
    goto LAB10;

LAB11:    t19 = *((unsigned int *)t3);
    t20 = *((unsigned int *)t4);
    t21 = (t19 - t20);
    t22 = (t21 + 1);
    xsi_vlogvar_assign_value(t2, t1, 0, *((unsigned int *)t4), t22);
    goto LAB12;

LAB13:    t19 = *((unsigned int *)t3);
    t20 = *((unsigned int *)t4);
    t21 = (t19 - t20);
    t22 = (t21 + 1);
    xsi_vlogvar_assign_value(t2, t1, 0, *((unsigned int *)t4), t22);
    goto LAB14;

LAB15:    t19 = *((unsigned int *)t3);
    t20 = *((unsigned int *)t4);
    t21 = (t19 - t20);
    t22 = (t21 + 1);
    xsi_vlogvar_assign_value(t2, t1, 0, *((unsigned int *)t4), t22);
    goto LAB16;

LAB17:    t19 = *((unsigned int *)t3);
    t20 = *((unsigned int *)t4);
    t21 = (t19 - t20);
    t22 = (t21 + 1);
    xsi_vlogvar_assign_value(t2, t1, 0, *((unsigned int *)t4), t22);
    goto LAB18;

LAB19:    t19 = *((unsigned int *)t3);
    t20 = *((unsigned int *)t4);
    t21 = (t19 - t20);
    t22 = (t21 + 1);
    xsi_vlogvar_assign_value(t2, t1, 0, *((unsigned int *)t4), t22);
    goto LAB20;

LAB21:    t19 = *((unsigned int *)t3);
    t20 = *((unsigned int *)t4);
    t21 = (t19 - t20);
    t22 = (t21 + 1);
    xsi_vlogvar_assign_value(t2, t1, 0, *((unsigned int *)t4), t22);
    goto LAB22;

LAB23:    t19 = *((unsigned int *)t3);
    t20 = *((unsigned int *)t4);
    t21 = (t19 - t20);
    t22 = (t21 + 1);
    xsi_vlogvar_assign_value(t2, t1, 0, *((unsigned int *)t4), t22);
    goto LAB24;

LAB25:    t19 = *((unsigned int *)t3);
    t20 = *((unsigned int *)t4);
    t21 = (t19 - t20);
    t22 = (t21 + 1);
    xsi_vlogvar_assign_value(t2, t1, 0, *((unsigned int *)t4), t22);
    goto LAB26;

LAB27:    t19 = *((unsigned int *)t3);
    t20 = *((unsigned int *)t4);
    t21 = (t19 - t20);
    t22 = (t21 + 1);
    xsi_vlogvar_assign_value(t2, t1, 0, *((unsigned int *)t4), t22);
    goto LAB28;

LAB29:    t19 = *((unsigned int *)t3);
    t20 = *((unsigned int *)t4);
    t21 = (t19 - t20);
    t22 = (t21 + 1);
    xsi_vlogvar_assign_value(t2, t1, 0, *((unsigned int *)t4), t22);
    goto LAB30;

LAB31:    t19 = *((unsigned int *)t3);
    t20 = *((unsigned int *)t4);
    t21 = (t19 - t20);
    t22 = (t21 + 1);
    xsi_vlogvar_assign_value(t2, t1, 0, *((unsigned int *)t4), t22);
    goto LAB32;

LAB33:    t19 = *((unsigned int *)t3);
    t20 = *((unsigned int *)t4);
    t21 = (t19 - t20);
    t22 = (t21 + 1);
    xsi_vlogvar_assign_value(t2, t1, 0, *((unsigned int *)t4), t22);
    goto LAB34;

}

static void Always_27_1(char *t0)
{
    char t7[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    t1 = (t0 + 2768U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 3088);
    *((int *)t2) = 1;
    t3 = (t0 + 2800);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(27, ng0);

LAB5:    xsi_set_current_line(28, ng0);
    t4 = (t0 + 1608);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t8 = (t0 + 1608);
    t9 = (t8 + 72U);
    t10 = *((char **)t9);
    t11 = (t0 + 1608);
    t12 = (t11 + 64U);
    t13 = *((char **)t12);
    t14 = (t0 + 1048U);
    t15 = *((char **)t14);
    xsi_vlog_generic_get_array_select_value(t7, 5, t6, t10, t13, 2, 1, t15, 4, 2);
    t14 = (t0 + 1448);
    xsi_vlogvar_assign_value(t14, t7, 0, 0, 5);
    goto LAB2;

}


extern void work_m_14921364611456335704_3323337474_init()
{
	static char *pe[] = {(void *)Initial_8_0,(void *)Always_27_1};
	xsi_register_didat("work_m_14921364611456335704_3323337474", "isim/lab4ROM_isim_beh.exe.sim/work/m_14921364611456335704_3323337474.didat");
	xsi_register_executes(pe);
}

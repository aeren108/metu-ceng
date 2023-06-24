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
static const char *ng0 = "/home/aeren/Okul/CENG232/Lab3/lab3_part2/testbench_v2.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {25U, 0U};
static unsigned int ng3[] = {1U, 0U};
static const char *ng4 = "Time=%.2d | smartCode=%b lab=%b mode=%b| stuInMera=%d stuInDigi=%d warnMera=%b fullMera=%b emptyMera=%b unlockMera=%b warnDigi=%b fullDigi = %b emptyDigi=%b unlockDigi=%b";
static unsigned int ng5[] = {0U, 0U};
static const char *ng6 = "End of Sim!";



static void Initial_41_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(41, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 3048);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);

LAB1:    return;
}

static void Always_42_1(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;

LAB0:    t1 = (t0 + 4528U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 4336);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(42, ng0);
    t4 = (t0 + 3048);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memset(t3, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB8;

LAB6:    if (*((unsigned int *)t7) == 0)
        goto LAB5;

LAB7:    t13 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t13) = 1;

LAB8:    t14 = (t3 + 4);
    t15 = (t6 + 4);
    t16 = *((unsigned int *)t6);
    t17 = (~(t16));
    *((unsigned int *)t3) = t17;
    *((unsigned int *)t14) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB10;

LAB9:    t22 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t22 & 1U);
    t23 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t23 & 1U);
    t24 = (t0 + 3048);
    xsi_vlogvar_assign_value(t24, t3, 0, 0, 1);
    goto LAB2;

LAB5:    *((unsigned int *)t3) = 1;
    goto LAB8;

LAB10:    t18 = *((unsigned int *)t3);
    t19 = *((unsigned int *)t15);
    *((unsigned int *)t3) = (t18 | t19);
    t20 = *((unsigned int *)t14);
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t20 | t21);
    goto LAB9;

}

static void Initial_44_2(char *t0)
{
    char t4[16];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;

LAB0:    t1 = (t0 + 4776U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(44, ng0);

LAB4:    xsi_set_current_line(48, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2888);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 5);
    xsi_set_current_line(48, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3208);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(48, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3368);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(49, ng0);
    t2 = (t0 + 4584);
    xsi_process_wait(t2, 6000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(50, ng0);
    t3 = xsi_vlog_time(t4, 1000.0000000000000, 1000.0000000000000);
    t5 = (t0 + 2888);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t0 + 3208);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t0 + 3368);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t0 + 1048U);
    t15 = *((char **)t14);
    t14 = (t0 + 1208U);
    t16 = *((char **)t14);
    t14 = (t0 + 1368U);
    t17 = *((char **)t14);
    t14 = (t0 + 1528U);
    t18 = *((char **)t14);
    t14 = (t0 + 1688U);
    t19 = *((char **)t14);
    t14 = (t0 + 1848U);
    t20 = *((char **)t14);
    t14 = (t0 + 2008U);
    t21 = *((char **)t14);
    t14 = (t0 + 2168U);
    t22 = *((char **)t14);
    t14 = (t0 + 2328U);
    t23 = *((char **)t14);
    t14 = (t0 + 2488U);
    t24 = *((char **)t14);
    xsi_vlogfile_write(1, 0, 0, ng4, 15, t0, (char)118, t4, 64, (char)118, t7, 5, (char)118, t10, 1, (char)118, t13, 2, (char)118, t15, 6, (char)118, t16, 6, (char)118, t17, 1, (char)118, t18, 1, (char)118, t19, 1, (char)118, t20, 1, (char)118, t21, 1, (char)118, t22, 1, (char)118, t23, 1, (char)118, t24, 1);
    xsi_set_current_line(51, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3368);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(52, ng0);
    t2 = (t0 + 4584);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(53, ng0);
    t3 = xsi_vlog_time(t4, 1000.0000000000000, 1000.0000000000000);
    t5 = (t0 + 2888);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t0 + 3208);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t0 + 3368);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t0 + 1048U);
    t15 = *((char **)t14);
    t14 = (t0 + 1208U);
    t16 = *((char **)t14);
    t14 = (t0 + 1368U);
    t17 = *((char **)t14);
    t14 = (t0 + 1528U);
    t18 = *((char **)t14);
    t14 = (t0 + 1688U);
    t19 = *((char **)t14);
    t14 = (t0 + 1848U);
    t20 = *((char **)t14);
    t14 = (t0 + 2008U);
    t21 = *((char **)t14);
    t14 = (t0 + 2168U);
    t22 = *((char **)t14);
    t14 = (t0 + 2328U);
    t23 = *((char **)t14);
    t14 = (t0 + 2488U);
    t24 = *((char **)t14);
    xsi_vlogfile_write(1, 0, 0, ng4, 15, t0, (char)118, t4, 64, (char)118, t7, 5, (char)118, t10, 1, (char)118, t13, 2, (char)118, t15, 6, (char)118, t16, 6, (char)118, t17, 1, (char)118, t18, 1, (char)118, t19, 1, (char)118, t20, 1, (char)118, t21, 1, (char)118, t22, 1, (char)118, t23, 1, (char)118, t24, 1);
    xsi_set_current_line(55, ng0);
    xsi_vlogfile_write(1, 0, 0, ng6, 1, t0);
    xsi_set_current_line(56, ng0);
    xsi_vlog_finish(1);
    goto LAB1;

}


extern void work_m_08497093522095300026_1008271248_init()
{
	static char *pe[] = {(void *)Initial_41_0,(void *)Always_42_1,(void *)Initial_44_2};
	xsi_register_didat("work_m_08497093522095300026_1008271248", "isim/testbench_v2_isim_beh.exe.sim/work/m_08497093522095300026_1008271248.didat");
	xsi_register_executes(pe);
}

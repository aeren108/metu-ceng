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
static const char *ng0 = "/home/aeren/Okul/CENG232/Lab4/lab4_part1/testbench_ROM.v";
static const char *ng1 = "Starting Testbench";
static unsigned int ng2[] = {0U, 0U};
static const char *ng3 = "Case 1 Passed";
static const char *ng4 = "time:";
static const char *ng5 = ":For romAddr:%b Error in romOutput:%b";
static unsigned int ng6[] = {2U, 0U};
static unsigned int ng7[] = {6U, 0U};
static const char *ng8 = "Case 2 Passed";
static const char *ng9 = "Result %d";
static const char *ng10 = "Testbench was finished";



static void Initial_11_0(char *t0)
{
    char t4[8];
    char t26[16];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;

LAB0:    t1 = (t0 + 2520U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(11, ng0);

LAB4:    xsi_set_current_line(13, ng0);
    xsi_vlogfile_write(1, 0, 0, ng1, 1, t0);
    xsi_set_current_line(16, ng0);
    t2 = (t0 + 2328);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(17, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1448);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(18, ng0);
    t2 = (t0 + 2328);
    xsi_process_wait(t2, 7000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(19, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng2)));
    memset(t4, 0, 8);
    t5 = (t3 + 4);
    t6 = (t2 + 4);
    t7 = *((unsigned int *)t3);
    t8 = *((unsigned int *)t2);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t5);
    t11 = *((unsigned int *)t6);
    t12 = (t10 ^ t11);
    t13 = (t9 | t12);
    t14 = *((unsigned int *)t5);
    t15 = *((unsigned int *)t6);
    t16 = (t14 | t15);
    t17 = (~(t16));
    t18 = (t13 & t17);
    if (t18 != 0)
        goto LAB10;

LAB7:    if (t16 != 0)
        goto LAB9;

LAB8:    *((unsigned int *)t4) = 1;

LAB10:    t20 = (t4 + 4);
    t21 = *((unsigned int *)t20);
    t22 = (~(t21));
    t23 = *((unsigned int *)t4);
    t24 = (t23 & t22);
    t25 = (t24 != 0);
    if (t25 > 0)
        goto LAB11;

LAB12:    xsi_set_current_line(20, ng0);
    t2 = xsi_vlog_time(t26, 1000.0000000000000, 1000.0000000000000);
    xsi_vlogfile_write(0, 0, 0, ng4, 2, t0, (char)118, t26, 64);
    t3 = (t0 + 1448);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t19 = (t0 + 1048U);
    t20 = *((char **)t19);
    xsi_vlogfile_write(1, 0, 0, ng5, 3, t0, (char)118, t6, 4, (char)118, t20, 5);

LAB13:    xsi_set_current_line(22, ng0);
    t2 = (t0 + 2328);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB14;
    goto LAB1;

LAB9:    t19 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB10;

LAB11:    xsi_set_current_line(19, ng0);
    xsi_vlogfile_write(1, 0, 0, ng3, 1, t0);
    goto LAB13;

LAB14:    xsi_set_current_line(24, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 1448);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(25, ng0);
    t2 = (t0 + 2328);
    xsi_process_wait(t2, 7000LL);
    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB15:    xsi_set_current_line(26, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng7)));
    memset(t4, 0, 8);
    t5 = (t3 + 4);
    t6 = (t2 + 4);
    t7 = *((unsigned int *)t3);
    t8 = *((unsigned int *)t2);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t5);
    t11 = *((unsigned int *)t6);
    t12 = (t10 ^ t11);
    t13 = (t9 | t12);
    t14 = *((unsigned int *)t5);
    t15 = *((unsigned int *)t6);
    t16 = (t14 | t15);
    t17 = (~(t16));
    t18 = (t13 & t17);
    if (t18 != 0)
        goto LAB19;

LAB16:    if (t16 != 0)
        goto LAB18;

LAB17:    *((unsigned int *)t4) = 1;

LAB19:    t20 = (t4 + 4);
    t21 = *((unsigned int *)t20);
    t22 = (~(t21));
    t23 = *((unsigned int *)t4);
    t24 = (t23 & t22);
    t25 = (t24 != 0);
    if (t25 > 0)
        goto LAB20;

LAB21:    xsi_set_current_line(27, ng0);
    t2 = xsi_vlog_time(t26, 1000.0000000000000, 1000.0000000000000);
    xsi_vlogfile_write(0, 0, 0, ng4, 2, t0, (char)118, t26, 64);
    t3 = (t0 + 1448);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t19 = (t0 + 1048U);
    t20 = *((char **)t19);
    xsi_vlogfile_write(1, 0, 0, ng5, 3, t0, (char)118, t6, 4, (char)118, t20, 5);

LAB22:    xsi_set_current_line(29, ng0);
    t2 = (t0 + 2328);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB18:    t19 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB19;

LAB20:    xsi_set_current_line(26, ng0);
    xsi_vlogfile_write(1, 0, 0, ng8, 1, t0);
    goto LAB22;

LAB23:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 1608);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    xsi_vlogfile_write(1, 0, 0, ng9, 2, t0, (char)119, t5, 32);
    xsi_set_current_line(35, ng0);
    xsi_vlogfile_write(1, 0, 0, ng10, 1, t0);
    xsi_set_current_line(36, ng0);
    xsi_vlog_finish(1);
    goto LAB1;

}


extern void work_m_04044759086406611358_2149418644_init()
{
	static char *pe[] = {(void *)Initial_11_0};
	xsi_register_didat("work_m_04044759086406611358_2149418644", "isim/testbench_ROM_isim_beh.exe.sim/work/m_04044759086406611358_2149418644.didat");
	xsi_register_executes(pe);
}

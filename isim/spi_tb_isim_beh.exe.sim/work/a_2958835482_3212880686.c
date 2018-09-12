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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "F:/DEV/FPGA/projetos/PCD8544/spi.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_2958835482_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    int t8;
    char *t9;
    int t10;
    unsigned char t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    static char *nl0[] = {&&LAB12, &&LAB14, &&LAB14, &&LAB14, &&LAB13};
    static char *nl1[] = {&&LAB25, &&LAB22, &&LAB24, &&LAB23, &&LAB25};

LAB0:    xsi_set_current_line(74, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4392);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(80, ng0);
    t3 = (t0 + 2472U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:
LAB6:    xsi_set_current_line(91, ng0);
    t1 = (t0 + 1992U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (char *)((nl0) + t2);
    goto **((char **)t1);

LAB5:    xsi_set_current_line(81, ng0);
    t3 = (t0 + 2792U);
    t7 = *((char **)t3);
    t8 = *((int *)t7);
    t3 = (t0 + 3088U);
    t9 = *((char **)t3);
    t10 = *((int *)t9);
    t11 = (t8 == t10);
    if (t11 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(85, ng0);
    t1 = (t0 + 2792U);
    t3 = *((char **)t1);
    t8 = *((int *)t3);
    t10 = (t8 + 1);
    t1 = (t0 + 4472);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t9 = (t7 + 56U);
    t12 = *((char **)t9);
    *((int *)t12) = t10;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(86, ng0);
    t1 = (t0 + 4536);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB9:    goto LAB6;

LAB8:    xsi_set_current_line(82, ng0);
    t3 = (t0 + 4472);
    t12 = (t3 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    *((int *)t15) = 0;
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(83, ng0);
    t1 = (t0 + 4536);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB9;

LAB11:    xsi_set_current_line(112, ng0);
    t1 = (t0 + 2632U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)3);
    if (t5 != 0)
        goto LAB18;

LAB20:
LAB19:    goto LAB3;

LAB12:    xsi_set_current_line(93, ng0);
    t4 = (t0 + 1352U);
    t7 = *((char **)t4);
    t5 = *((unsigned char *)t7);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB15;

LAB17:    xsi_set_current_line(101, ng0);
    t1 = (t0 + 4664);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB16:    goto LAB11;

LAB13:    xsi_set_current_line(105, ng0);
    t1 = (t0 + 4664);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(106, ng0);
    t1 = (t0 + 4792);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB11;

LAB14:    xsi_set_current_line(109, ng0);
    goto LAB11;

LAB15:    xsi_set_current_line(94, ng0);
    t4 = (t0 + 1192U);
    t9 = *((char **)t4);
    t4 = (t0 + 4600);
    t12 = (t4 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t9, 8U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(95, ng0);
    t1 = (t0 + 4664);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = (unsigned char)4;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(96, ng0);
    t1 = (t0 + 4728);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t9 = *((char **)t7);
    *((int *)t9) = 7;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(97, ng0);
    t1 = (t0 + 4472);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t9 = *((char **)t7);
    *((int *)t9) = 0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(98, ng0);
    t1 = (t0 + 4792);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(99, ng0);
    t1 = (t0 + 4856);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB16;

LAB18:    xsi_set_current_line(113, ng0);
    t1 = (t0 + 1992U);
    t4 = *((char **)t1);
    t6 = *((unsigned char *)t4);
    t1 = (char *)((nl1) + t6);
    goto **((char **)t1);

LAB21:    goto LAB19;

LAB22:    xsi_set_current_line(115, ng0);
    t7 = (t0 + 4920);
    t9 = (t7 + 56U);
    t12 = *((char **)t9);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t7);
    xsi_set_current_line(116, ng0);
    t1 = (t0 + 2312U);
    t3 = *((char **)t1);
    t1 = (t0 + 2152U);
    t4 = *((char **)t1);
    t8 = *((int *)t4);
    t10 = (t8 - 7);
    t16 = (t10 * -1);
    xsi_vhdl_check_range_of_index(7, 0, -1, t8);
    t17 = (1U * t16);
    t18 = (0 + t17);
    t1 = (t3 + t18);
    t2 = *((unsigned char *)t1);
    t7 = (t0 + 4984);
    t9 = (t7 + 56U);
    t12 = *((char **)t9);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = t2;
    xsi_driver_first_trans_fast_port(t7);
    xsi_set_current_line(117, ng0);
    t1 = (t0 + 4664);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB21;

LAB23:    xsi_set_current_line(120, ng0);
    t1 = (t0 + 4920);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(121, ng0);
    t1 = (t0 + 2152U);
    t3 = *((char **)t1);
    t8 = *((int *)t3);
    t10 = (t8 - 1);
    t1 = (t0 + 4728);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t9 = (t7 + 56U);
    t12 = *((char **)t9);
    *((int *)t12) = t10;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(122, ng0);
    t1 = (t0 + 2152U);
    t3 = *((char **)t1);
    t8 = *((int *)t3);
    t2 = (t8 > 0);
    if (t2 != 0)
        goto LAB26;

LAB28:    xsi_set_current_line(125, ng0);
    t1 = (t0 + 4664);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB27:    goto LAB21;

LAB24:    xsi_set_current_line(129, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t3 = t1;
    memset(t3, (unsigned char)2, 8U);
    t4 = (t0 + 4600);
    t7 = (t4 + 56U);
    t9 = *((char **)t7);
    t12 = (t9 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(130, ng0);
    t1 = (t0 + 4664);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(131, ng0);
    t1 = (t0 + 4856);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(132, ng0);
    t1 = (t0 + 4920);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB21;

LAB25:    xsi_set_current_line(135, ng0);
    goto LAB21;

LAB26:    xsi_set_current_line(123, ng0);
    t1 = (t0 + 4664);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t9 = (t7 + 56U);
    t12 = *((char **)t9);
    *((unsigned char *)t12) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    goto LAB27;

}


extern void work_a_2958835482_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2958835482_3212880686_p_0};
	xsi_register_didat("work_a_2958835482_3212880686", "isim/spi_tb_isim_beh.exe.sim/work/a_2958835482_3212880686.didat");
	xsi_register_executes(pe);
}

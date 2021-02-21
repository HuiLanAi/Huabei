/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_2(char*, char *);
extern void execute_3(char*, char *);
extern void execute_2344(char*, char *);
extern void execute_2345(char*, char *);
extern void execute_2346(char*, char *);
extern void execute_2347(char*, char *);
extern void execute_2339(char*, char *);
extern void execute_2340(char*, char *);
extern void execute_2341(char*, char *);
extern void execute_2342(char*, char *);
extern void execute_2343(char*, char *);
extern void execute_6(char*, char *);
extern void execute_7(char*, char *);
extern void execute_8(char*, char *);
extern void execute_2173(char*, char *);
extern void execute_2174(char*, char *);
extern void execute_2175(char*, char *);
extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_2143(char*, char *);
extern void execute_2144(char*, char *);
extern void execute_2153(char*, char *);
extern void execute_2154(char*, char *);
extern void execute_2155(char*, char *);
extern void execute_2156(char*, char *);
extern void execute_2157(char*, char *);
extern void execute_2159(char*, char *);
extern void execute_2164(char*, char *);
extern void execute_2165(char*, char *);
extern void execute_2166(char*, char *);
extern void execute_2167(char*, char *);
extern void execute_2168(char*, char *);
extern void execute_11(char*, char *);
extern void execute_39(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void vlog_simple_process_execute_1_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_2129(char*, char *);
extern void execute_2130(char*, char *);
extern void execute_2131(char*, char *);
extern void execute_2132(char*, char *);
extern void execute_2133(char*, char *);
extern void execute_2134(char*, char *);
extern void execute_2135(char*, char *);
extern void execute_20(char*, char *);
extern void execute_21(char*, char *);
extern void execute_22(char*, char *);
extern void execute_36(char*, char *);
extern void execute_37(char*, char *);
extern void execute_38(char*, char *);
extern void execute_2061(char*, char *);
extern void execute_2062(char*, char *);
extern void execute_2063(char*, char *);
extern void execute_2064(char*, char *);
extern void execute_2065(char*, char *);
extern void execute_2066(char*, char *);
extern void execute_2067(char*, char *);
extern void execute_2069(char*, char *);
extern void execute_2070(char*, char *);
extern void execute_2071(char*, char *);
extern void execute_2072(char*, char *);
extern void execute_2076(char*, char *);
extern void execute_2080(char*, char *);
extern void execute_2081(char*, char *);
extern void execute_2082(char*, char *);
extern void execute_2083(char*, char *);
extern void execute_2084(char*, char *);
extern void execute_2085(char*, char *);
extern void execute_2088(char*, char *);
extern void execute_2090(char*, char *);
extern void execute_2091(char*, char *);
extern void execute_2092(char*, char *);
extern void execute_2093(char*, char *);
extern void execute_2094(char*, char *);
extern void execute_2095(char*, char *);
extern void execute_2096(char*, char *);
extern void execute_2097(char*, char *);
extern void execute_2098(char*, char *);
extern void execute_2099(char*, char *);
extern void execute_2100(char*, char *);
extern void execute_2101(char*, char *);
extern void execute_2102(char*, char *);
extern void execute_2103(char*, char *);
extern void execute_24(char*, char *);
extern void execute_25(char*, char *);
extern void execute_26(char*, char *);
extern void execute_27(char*, char *);
extern void execute_2073(char*, char *);
extern void execute_2074(char*, char *);
extern void execute_2075(char*, char *);
extern void execute_29(char*, char *);
extern void execute_30(char*, char *);
extern void execute_31(char*, char *);
extern void execute_32(char*, char *);
extern void execute_2077(char*, char *);
extern void execute_2078(char*, char *);
extern void execute_2079(char*, char *);
extern void execute_34(char*, char *);
extern void execute_35(char*, char *);
extern void execute_41(char*, char *);
extern void execute_42(char*, char *);
extern void execute_43(char*, char *);
extern void execute_2336(char*, char *);
extern void execute_2337(char*, char *);
extern void execute_2338(char*, char *);
extern void execute_2306(char*, char *);
extern void execute_2307(char*, char *);
extern void execute_2316(char*, char *);
extern void execute_2317(char*, char *);
extern void execute_2318(char*, char *);
extern void execute_2319(char*, char *);
extern void execute_2320(char*, char *);
extern void execute_2322(char*, char *);
extern void execute_2327(char*, char *);
extern void execute_2328(char*, char *);
extern void execute_2329(char*, char *);
extern void execute_2330(char*, char *);
extern void execute_2331(char*, char *);
extern void execute_46(char*, char *);
extern void execute_74(char*, char *);
extern void execute_2292(char*, char *);
extern void execute_2293(char*, char *);
extern void execute_2294(char*, char *);
extern void execute_2295(char*, char *);
extern void execute_2296(char*, char *);
extern void execute_2297(char*, char *);
extern void execute_2298(char*, char *);
extern void execute_55(char*, char *);
extern void execute_56(char*, char *);
extern void execute_57(char*, char *);
extern void execute_71(char*, char *);
extern void execute_72(char*, char *);
extern void execute_73(char*, char *);
extern void execute_2224(char*, char *);
extern void execute_2225(char*, char *);
extern void execute_2226(char*, char *);
extern void execute_2227(char*, char *);
extern void execute_2228(char*, char *);
extern void execute_2229(char*, char *);
extern void execute_2230(char*, char *);
extern void execute_2232(char*, char *);
extern void execute_2233(char*, char *);
extern void execute_2234(char*, char *);
extern void execute_2235(char*, char *);
extern void execute_2239(char*, char *);
extern void execute_2243(char*, char *);
extern void execute_2244(char*, char *);
extern void execute_2245(char*, char *);
extern void execute_2246(char*, char *);
extern void execute_2247(char*, char *);
extern void execute_2248(char*, char *);
extern void execute_2251(char*, char *);
extern void execute_2253(char*, char *);
extern void execute_2254(char*, char *);
extern void execute_2255(char*, char *);
extern void execute_2256(char*, char *);
extern void execute_2257(char*, char *);
extern void execute_2258(char*, char *);
extern void execute_2259(char*, char *);
extern void execute_2260(char*, char *);
extern void execute_2261(char*, char *);
extern void execute_2262(char*, char *);
extern void execute_2263(char*, char *);
extern void execute_2264(char*, char *);
extern void execute_2265(char*, char *);
extern void execute_2266(char*, char *);
extern void execute_59(char*, char *);
extern void execute_60(char*, char *);
extern void execute_61(char*, char *);
extern void execute_62(char*, char *);
extern void execute_2236(char*, char *);
extern void execute_2237(char*, char *);
extern void execute_2238(char*, char *);
extern void execute_64(char*, char *);
extern void execute_65(char*, char *);
extern void execute_66(char*, char *);
extern void execute_67(char*, char *);
extern void execute_2240(char*, char *);
extern void execute_2241(char*, char *);
extern void execute_2242(char*, char *);
extern void execute_69(char*, char *);
extern void execute_70(char*, char *);
extern void execute_76(char*, char *);
extern void execute_77(char*, char *);
extern void execute_78(char*, char *);
extern void execute_79(char*, char *);
extern void execute_175(char*, char *);
extern void execute_179(char*, char *);
extern void execute_255(char*, char *);
extern void execute_256(char*, char *);
extern void execute_254(char*, char *);
extern void execute_248(char*, char *);
extern void execute_241(char*, char *);
extern void execute_242(char*, char *);
extern void execute_216(char*, char *);
extern void execute_219(char*, char *);
extern void execute_222(char*, char *);
extern void execute_239(char*, char *);
extern void execute_246(char*, char *);
extern void execute_237(char*, char *);
extern void execute_227(char*, char *);
extern void execute_231(char*, char *);
extern void execute_233(char*, char *);
extern void execute_212(char*, char *);
extern void execute_213(char*, char *);
extern void execute_207(char*, char *);
extern void execute_210(char*, char *);
extern void execute_2010(char*, char *);
extern void execute_2011(char*, char *);
extern void execute_2012(char*, char *);
extern void execute_2348(char*, char *);
extern void execute_2349(char*, char *);
extern void execute_2350(char*, char *);
extern void execute_2351(char*, char *);
extern void execute_2352(char*, char *);
extern void transaction_4(char*, char*, unsigned, unsigned, unsigned);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_9(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_10(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_686(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_687(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_688(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_689(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_690(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_691(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_692(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_693(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_694(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_695(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_696(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_697(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_698(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_699(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_700(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_701(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_702(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_703(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_704(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_705(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_706(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_707(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_708(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_709(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_710(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_711(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_786(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_833(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_880(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_927(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_974(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1021(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1068(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1115(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1162(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1209(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1256(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1303(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1350(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1397(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1444(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1491(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1538(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1585(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1632(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1679(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1726(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1773(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1820(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1867(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_685(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[269] = {(funcp)execute_2, (funcp)execute_3, (funcp)execute_2344, (funcp)execute_2345, (funcp)execute_2346, (funcp)execute_2347, (funcp)execute_2339, (funcp)execute_2340, (funcp)execute_2341, (funcp)execute_2342, (funcp)execute_2343, (funcp)execute_6, (funcp)execute_7, (funcp)execute_8, (funcp)execute_2173, (funcp)execute_2174, (funcp)execute_2175, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_2143, (funcp)execute_2144, (funcp)execute_2153, (funcp)execute_2154, (funcp)execute_2155, (funcp)execute_2156, (funcp)execute_2157, (funcp)execute_2159, (funcp)execute_2164, (funcp)execute_2165, (funcp)execute_2166, (funcp)execute_2167, (funcp)execute_2168, (funcp)execute_11, (funcp)execute_39, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)vlog_simple_process_execute_1_fast_no_reg_no_agg, (funcp)execute_2129, (funcp)execute_2130, (funcp)execute_2131, (funcp)execute_2132, (funcp)execute_2133, (funcp)execute_2134, (funcp)execute_2135, (funcp)execute_20, (funcp)execute_21, (funcp)execute_22, (funcp)execute_36, (funcp)execute_37, (funcp)execute_38, (funcp)execute_2061, (funcp)execute_2062, (funcp)execute_2063, (funcp)execute_2064, (funcp)execute_2065, (funcp)execute_2066, (funcp)execute_2067, (funcp)execute_2069, (funcp)execute_2070, (funcp)execute_2071, (funcp)execute_2072, (funcp)execute_2076, (funcp)execute_2080, (funcp)execute_2081, (funcp)execute_2082, (funcp)execute_2083, (funcp)execute_2084, (funcp)execute_2085, (funcp)execute_2088, (funcp)execute_2090, (funcp)execute_2091, (funcp)execute_2092, (funcp)execute_2093, (funcp)execute_2094, (funcp)execute_2095, (funcp)execute_2096, (funcp)execute_2097, (funcp)execute_2098, (funcp)execute_2099, (funcp)execute_2100, (funcp)execute_2101, (funcp)execute_2102, (funcp)execute_2103, (funcp)execute_24, (funcp)execute_25, (funcp)execute_26, (funcp)execute_27, (funcp)execute_2073, (funcp)execute_2074, (funcp)execute_2075, (funcp)execute_29, (funcp)execute_30, (funcp)execute_31, (funcp)execute_32, (funcp)execute_2077, (funcp)execute_2078, (funcp)execute_2079, (funcp)execute_34, (funcp)execute_35, (funcp)execute_41, (funcp)execute_42, (funcp)execute_43, (funcp)execute_2336, (funcp)execute_2337, (funcp)execute_2338, (funcp)execute_2306, (funcp)execute_2307, (funcp)execute_2316, (funcp)execute_2317, (funcp)execute_2318, (funcp)execute_2319, (funcp)execute_2320, (funcp)execute_2322, (funcp)execute_2327, (funcp)execute_2328, (funcp)execute_2329, (funcp)execute_2330, (funcp)execute_2331, (funcp)execute_46, (funcp)execute_74, (funcp)execute_2292, (funcp)execute_2293, (funcp)execute_2294, (funcp)execute_2295, (funcp)execute_2296, (funcp)execute_2297, (funcp)execute_2298, (funcp)execute_55, (funcp)execute_56, (funcp)execute_57, (funcp)execute_71, (funcp)execute_72, (funcp)execute_73, (funcp)execute_2224, (funcp)execute_2225, (funcp)execute_2226, (funcp)execute_2227, (funcp)execute_2228, (funcp)execute_2229, (funcp)execute_2230, (funcp)execute_2232, (funcp)execute_2233, (funcp)execute_2234, (funcp)execute_2235, (funcp)execute_2239, (funcp)execute_2243, (funcp)execute_2244, (funcp)execute_2245, (funcp)execute_2246, (funcp)execute_2247, (funcp)execute_2248, (funcp)execute_2251, (funcp)execute_2253, (funcp)execute_2254, (funcp)execute_2255, (funcp)execute_2256, (funcp)execute_2257, (funcp)execute_2258, (funcp)execute_2259, (funcp)execute_2260, (funcp)execute_2261, (funcp)execute_2262, (funcp)execute_2263, (funcp)execute_2264, (funcp)execute_2265, (funcp)execute_2266, (funcp)execute_59, (funcp)execute_60, (funcp)execute_61, (funcp)execute_62, (funcp)execute_2236, (funcp)execute_2237, (funcp)execute_2238, (funcp)execute_64, (funcp)execute_65, (funcp)execute_66, (funcp)execute_67, (funcp)execute_2240, (funcp)execute_2241, (funcp)execute_2242, (funcp)execute_69, (funcp)execute_70, (funcp)execute_76, (funcp)execute_77, (funcp)execute_78, (funcp)execute_79, (funcp)execute_175, (funcp)execute_179, (funcp)execute_255, (funcp)execute_256, (funcp)execute_254, (funcp)execute_248, (funcp)execute_241, (funcp)execute_242, (funcp)execute_216, (funcp)execute_219, (funcp)execute_222, (funcp)execute_239, (funcp)execute_246, (funcp)execute_237, (funcp)execute_227, (funcp)execute_231, (funcp)execute_233, (funcp)execute_212, (funcp)execute_213, (funcp)execute_207, (funcp)execute_210, (funcp)execute_2010, (funcp)execute_2011, (funcp)execute_2012, (funcp)execute_2348, (funcp)execute_2349, (funcp)execute_2350, (funcp)execute_2351, (funcp)execute_2352, (funcp)transaction_4, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_9, (funcp)transaction_10, (funcp)transaction_686, (funcp)transaction_687, (funcp)transaction_688, (funcp)transaction_689, (funcp)transaction_690, (funcp)transaction_691, (funcp)transaction_692, (funcp)transaction_693, (funcp)transaction_694, (funcp)transaction_695, (funcp)transaction_696, (funcp)transaction_697, (funcp)transaction_698, (funcp)transaction_699, (funcp)transaction_700, (funcp)transaction_701, (funcp)transaction_702, (funcp)transaction_703, (funcp)transaction_704, (funcp)transaction_705, (funcp)transaction_706, (funcp)transaction_707, (funcp)transaction_708, (funcp)transaction_709, (funcp)transaction_710, (funcp)transaction_711, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_786, (funcp)transaction_833, (funcp)transaction_880, (funcp)transaction_927, (funcp)transaction_974, (funcp)transaction_1021, (funcp)transaction_1068, (funcp)transaction_1115, (funcp)transaction_1162, (funcp)transaction_1209, (funcp)transaction_1256, (funcp)transaction_1303, (funcp)transaction_1350, (funcp)transaction_1397, (funcp)transaction_1444, (funcp)transaction_1491, (funcp)transaction_1538, (funcp)transaction_1585, (funcp)transaction_1632, (funcp)transaction_1679, (funcp)transaction_1726, (funcp)transaction_1773, (funcp)transaction_1820, (funcp)transaction_1867, (funcp)transaction_685};
const int NumRelocateId= 269;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/clk_rst_behav/xsim.reloc",  (void **)funcTab, 269);
	iki_vhdl_file_variable_register(dp + 547576);
	iki_vhdl_file_variable_register(dp + 547632);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/clk_rst_behav/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void wrapper_func_0(char *dp)

{

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 702208, dp + 698560, 0, 31, 0, 31, 32, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 716584, dp + 698616, 0, 31, 0, 31, 32, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 730960, dp + 698672, 0, 31, 0, 31, 32, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 745336, dp + 698728, 0, 31, 0, 31, 32, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 759712, dp + 698784, 0, 31, 0, 31, 32, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 774088, dp + 698840, 0, 31, 0, 31, 32, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 788464, dp + 698896, 0, 31, 0, 31, 32, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 802840, dp + 698952, 0, 31, 0, 31, 32, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 817216, dp + 699008, 0, 31, 0, 31, 32, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 831592, dp + 699064, 0, 31, 0, 31, 32, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 845968, dp + 699120, 0, 31, 0, 31, 32, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 860344, dp + 699176, 0, 31, 0, 31, 32, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 874720, dp + 699232, 0, 31, 0, 31, 32, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 889096, dp + 699288, 0, 31, 0, 31, 32, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 903472, dp + 699344, 0, 31, 0, 31, 32, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 917848, dp + 699400, 0, 31, 0, 31, 32, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 932224, dp + 699456, 0, 31, 0, 31, 32, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 946600, dp + 699512, 0, 31, 0, 31, 32, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 960976, dp + 699568, 0, 31, 0, 31, 32, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 975352, dp + 699624, 0, 31, 0, 31, 32, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 989728, dp + 699680, 0, 31, 0, 31, 32, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 1004104, dp + 699736, 0, 31, 0, 31, 32, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 1018480, dp + 699792, 0, 31, 0, 31, 32, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 1032856, dp + 699848, 0, 31, 0, 31, 32, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 1047232, dp + 699904, 0, 31, 0, 31, 32, 1);

}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/clk_rst_behav/xsim.reloc");
	wrapper_func_0(dp);

	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstatiate();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/clk_rst_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/clk_rst_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/clk_rst_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}

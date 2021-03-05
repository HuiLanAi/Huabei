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
extern void execute_2358(char*, char *);
extern void execute_2359(char*, char *);
extern void execute_2360(char*, char *);
extern void execute_2361(char*, char *);
extern void execute_2353(char*, char *);
extern void execute_2354(char*, char *);
extern void execute_2355(char*, char *);
extern void execute_2356(char*, char *);
extern void execute_2357(char*, char *);
extern void execute_6(char*, char *);
extern void execute_7(char*, char *);
extern void execute_8(char*, char *);
extern void execute_9(char*, char *);
extern void execute_10(char*, char *);
extern void execute_11(char*, char *);
extern void execute_12(char*, char *);
extern void execute_13(char*, char *);
extern void execute_14(char*, char *);
extern void execute_15(char*, char *);
extern void execute_2185(char*, char *);
extern void execute_2186(char*, char *);
extern void execute_2187(char*, char *);
extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_2155(char*, char *);
extern void execute_2156(char*, char *);
extern void execute_2165(char*, char *);
extern void execute_2166(char*, char *);
extern void execute_2167(char*, char *);
extern void execute_2168(char*, char *);
extern void execute_2169(char*, char *);
extern void execute_2171(char*, char *);
extern void execute_2176(char*, char *);
extern void execute_2177(char*, char *);
extern void execute_2178(char*, char *);
extern void execute_2179(char*, char *);
extern void execute_2180(char*, char *);
extern void execute_18(char*, char *);
extern void execute_46(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void vlog_simple_process_execute_1_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_2141(char*, char *);
extern void execute_2142(char*, char *);
extern void execute_2143(char*, char *);
extern void execute_2144(char*, char *);
extern void execute_2145(char*, char *);
extern void execute_2146(char*, char *);
extern void execute_2147(char*, char *);
extern void execute_27(char*, char *);
extern void execute_28(char*, char *);
extern void execute_29(char*, char *);
extern void execute_43(char*, char *);
extern void execute_44(char*, char *);
extern void execute_45(char*, char *);
extern void execute_2073(char*, char *);
extern void execute_2074(char*, char *);
extern void execute_2075(char*, char *);
extern void execute_2076(char*, char *);
extern void execute_2077(char*, char *);
extern void execute_2078(char*, char *);
extern void execute_2079(char*, char *);
extern void execute_2081(char*, char *);
extern void execute_2082(char*, char *);
extern void execute_2083(char*, char *);
extern void execute_2084(char*, char *);
extern void execute_2088(char*, char *);
extern void execute_2092(char*, char *);
extern void execute_2093(char*, char *);
extern void execute_2094(char*, char *);
extern void execute_2095(char*, char *);
extern void execute_2096(char*, char *);
extern void execute_2097(char*, char *);
extern void execute_2100(char*, char *);
extern void execute_2102(char*, char *);
extern void execute_2103(char*, char *);
extern void execute_2104(char*, char *);
extern void execute_2105(char*, char *);
extern void execute_2106(char*, char *);
extern void execute_2107(char*, char *);
extern void execute_2108(char*, char *);
extern void execute_2109(char*, char *);
extern void execute_2110(char*, char *);
extern void execute_2111(char*, char *);
extern void execute_2112(char*, char *);
extern void execute_2113(char*, char *);
extern void execute_2114(char*, char *);
extern void execute_2115(char*, char *);
extern void execute_31(char*, char *);
extern void execute_32(char*, char *);
extern void execute_33(char*, char *);
extern void execute_34(char*, char *);
extern void execute_2085(char*, char *);
extern void execute_2086(char*, char *);
extern void execute_2087(char*, char *);
extern void execute_36(char*, char *);
extern void execute_37(char*, char *);
extern void execute_38(char*, char *);
extern void execute_39(char*, char *);
extern void execute_2089(char*, char *);
extern void execute_2090(char*, char *);
extern void execute_2091(char*, char *);
extern void execute_41(char*, char *);
extern void execute_42(char*, char *);
extern void execute_48(char*, char *);
extern void execute_49(char*, char *);
extern void execute_50(char*, char *);
extern void execute_51(char*, char *);
extern void execute_52(char*, char *);
extern void execute_53(char*, char *);
extern void execute_54(char*, char *);
extern void execute_55(char*, char *);
extern void execute_56(char*, char *);
extern void execute_57(char*, char *);
extern void execute_2348(char*, char *);
extern void execute_2349(char*, char *);
extern void execute_2350(char*, char *);
extern void execute_2318(char*, char *);
extern void execute_2319(char*, char *);
extern void execute_2328(char*, char *);
extern void execute_2329(char*, char *);
extern void execute_2330(char*, char *);
extern void execute_2331(char*, char *);
extern void execute_2332(char*, char *);
extern void execute_2334(char*, char *);
extern void execute_2339(char*, char *);
extern void execute_2340(char*, char *);
extern void execute_2341(char*, char *);
extern void execute_2342(char*, char *);
extern void execute_2343(char*, char *);
extern void execute_60(char*, char *);
extern void execute_88(char*, char *);
extern void execute_2304(char*, char *);
extern void execute_2305(char*, char *);
extern void execute_2306(char*, char *);
extern void execute_2307(char*, char *);
extern void execute_2308(char*, char *);
extern void execute_2309(char*, char *);
extern void execute_2310(char*, char *);
extern void execute_69(char*, char *);
extern void execute_70(char*, char *);
extern void execute_71(char*, char *);
extern void execute_85(char*, char *);
extern void execute_86(char*, char *);
extern void execute_87(char*, char *);
extern void execute_2236(char*, char *);
extern void execute_2237(char*, char *);
extern void execute_2238(char*, char *);
extern void execute_2239(char*, char *);
extern void execute_2240(char*, char *);
extern void execute_2241(char*, char *);
extern void execute_2242(char*, char *);
extern void execute_2244(char*, char *);
extern void execute_2245(char*, char *);
extern void execute_2246(char*, char *);
extern void execute_2247(char*, char *);
extern void execute_2251(char*, char *);
extern void execute_2255(char*, char *);
extern void execute_2256(char*, char *);
extern void execute_2257(char*, char *);
extern void execute_2258(char*, char *);
extern void execute_2259(char*, char *);
extern void execute_2260(char*, char *);
extern void execute_2263(char*, char *);
extern void execute_2265(char*, char *);
extern void execute_2266(char*, char *);
extern void execute_2267(char*, char *);
extern void execute_2268(char*, char *);
extern void execute_2269(char*, char *);
extern void execute_2270(char*, char *);
extern void execute_2271(char*, char *);
extern void execute_2272(char*, char *);
extern void execute_2273(char*, char *);
extern void execute_2274(char*, char *);
extern void execute_2275(char*, char *);
extern void execute_2276(char*, char *);
extern void execute_2277(char*, char *);
extern void execute_2278(char*, char *);
extern void execute_73(char*, char *);
extern void execute_74(char*, char *);
extern void execute_75(char*, char *);
extern void execute_76(char*, char *);
extern void execute_2248(char*, char *);
extern void execute_2249(char*, char *);
extern void execute_2250(char*, char *);
extern void execute_78(char*, char *);
extern void execute_79(char*, char *);
extern void execute_80(char*, char *);
extern void execute_81(char*, char *);
extern void execute_2252(char*, char *);
extern void execute_2253(char*, char *);
extern void execute_2254(char*, char *);
extern void execute_83(char*, char *);
extern void execute_84(char*, char *);
extern void execute_90(char*, char *);
extern void execute_91(char*, char *);
extern void execute_2351(char*, char *);
extern void execute_2352(char*, char *);
extern void execute_187(char*, char *);
extern void execute_191(char*, char *);
extern void execute_267(char*, char *);
extern void execute_268(char*, char *);
extern void execute_266(char*, char *);
extern void execute_260(char*, char *);
extern void execute_253(char*, char *);
extern void execute_254(char*, char *);
extern void execute_228(char*, char *);
extern void execute_231(char*, char *);
extern void execute_234(char*, char *);
extern void execute_251(char*, char *);
extern void execute_258(char*, char *);
extern void execute_249(char*, char *);
extern void execute_239(char*, char *);
extern void execute_243(char*, char *);
extern void execute_245(char*, char *);
extern void execute_224(char*, char *);
extern void execute_225(char*, char *);
extern void execute_219(char*, char *);
extern void execute_222(char*, char *);
extern void execute_2022(char*, char *);
extern void execute_2023(char*, char *);
extern void execute_2024(char*, char *);
extern void execute_2362(char*, char *);
extern void execute_2363(char*, char *);
extern void execute_2364(char*, char *);
extern void execute_2365(char*, char *);
extern void execute_2366(char*, char *);
extern void transaction_4(char*, char*, unsigned, unsigned, unsigned);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_10(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_11(char*, char*, unsigned, unsigned, unsigned);
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
extern void transaction_712(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_713(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_714(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_715(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_716(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_717(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_718(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_719(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_720(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_721(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_722(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_723(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_732(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_807(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_854(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_901(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_948(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_995(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1042(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1089(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1136(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1183(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1230(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1277(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1324(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1371(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1418(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1465(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1512(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1559(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1606(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1653(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1700(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1747(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1794(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1841(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1888(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_724(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_725(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_726(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_727(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_728(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_729(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_730(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[289] = {(funcp)execute_2, (funcp)execute_3, (funcp)execute_2358, (funcp)execute_2359, (funcp)execute_2360, (funcp)execute_2361, (funcp)execute_2353, (funcp)execute_2354, (funcp)execute_2355, (funcp)execute_2356, (funcp)execute_2357, (funcp)execute_6, (funcp)execute_7, (funcp)execute_8, (funcp)execute_9, (funcp)execute_10, (funcp)execute_11, (funcp)execute_12, (funcp)execute_13, (funcp)execute_14, (funcp)execute_15, (funcp)execute_2185, (funcp)execute_2186, (funcp)execute_2187, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_2155, (funcp)execute_2156, (funcp)execute_2165, (funcp)execute_2166, (funcp)execute_2167, (funcp)execute_2168, (funcp)execute_2169, (funcp)execute_2171, (funcp)execute_2176, (funcp)execute_2177, (funcp)execute_2178, (funcp)execute_2179, (funcp)execute_2180, (funcp)execute_18, (funcp)execute_46, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)vlog_simple_process_execute_1_fast_no_reg_no_agg, (funcp)execute_2141, (funcp)execute_2142, (funcp)execute_2143, (funcp)execute_2144, (funcp)execute_2145, (funcp)execute_2146, (funcp)execute_2147, (funcp)execute_27, (funcp)execute_28, (funcp)execute_29, (funcp)execute_43, (funcp)execute_44, (funcp)execute_45, (funcp)execute_2073, (funcp)execute_2074, (funcp)execute_2075, (funcp)execute_2076, (funcp)execute_2077, (funcp)execute_2078, (funcp)execute_2079, (funcp)execute_2081, (funcp)execute_2082, (funcp)execute_2083, (funcp)execute_2084, (funcp)execute_2088, (funcp)execute_2092, (funcp)execute_2093, (funcp)execute_2094, (funcp)execute_2095, (funcp)execute_2096, (funcp)execute_2097, (funcp)execute_2100, (funcp)execute_2102, (funcp)execute_2103, (funcp)execute_2104, (funcp)execute_2105, (funcp)execute_2106, (funcp)execute_2107, (funcp)execute_2108, (funcp)execute_2109, (funcp)execute_2110, (funcp)execute_2111, (funcp)execute_2112, (funcp)execute_2113, (funcp)execute_2114, (funcp)execute_2115, (funcp)execute_31, (funcp)execute_32, (funcp)execute_33, (funcp)execute_34, (funcp)execute_2085, (funcp)execute_2086, (funcp)execute_2087, (funcp)execute_36, (funcp)execute_37, (funcp)execute_38, (funcp)execute_39, (funcp)execute_2089, (funcp)execute_2090, (funcp)execute_2091, (funcp)execute_41, (funcp)execute_42, (funcp)execute_48, (funcp)execute_49, (funcp)execute_50, (funcp)execute_51, (funcp)execute_52, (funcp)execute_53, (funcp)execute_54, (funcp)execute_55, (funcp)execute_56, (funcp)execute_57, (funcp)execute_2348, (funcp)execute_2349, (funcp)execute_2350, (funcp)execute_2318, (funcp)execute_2319, (funcp)execute_2328, (funcp)execute_2329, (funcp)execute_2330, (funcp)execute_2331, (funcp)execute_2332, (funcp)execute_2334, (funcp)execute_2339, (funcp)execute_2340, (funcp)execute_2341, (funcp)execute_2342, (funcp)execute_2343, (funcp)execute_60, (funcp)execute_88, (funcp)execute_2304, (funcp)execute_2305, (funcp)execute_2306, (funcp)execute_2307, (funcp)execute_2308, (funcp)execute_2309, (funcp)execute_2310, (funcp)execute_69, (funcp)execute_70, (funcp)execute_71, (funcp)execute_85, (funcp)execute_86, (funcp)execute_87, (funcp)execute_2236, (funcp)execute_2237, (funcp)execute_2238, (funcp)execute_2239, (funcp)execute_2240, (funcp)execute_2241, (funcp)execute_2242, (funcp)execute_2244, (funcp)execute_2245, (funcp)execute_2246, (funcp)execute_2247, (funcp)execute_2251, (funcp)execute_2255, (funcp)execute_2256, (funcp)execute_2257, (funcp)execute_2258, (funcp)execute_2259, (funcp)execute_2260, (funcp)execute_2263, (funcp)execute_2265, (funcp)execute_2266, (funcp)execute_2267, (funcp)execute_2268, (funcp)execute_2269, (funcp)execute_2270, (funcp)execute_2271, (funcp)execute_2272, (funcp)execute_2273, (funcp)execute_2274, (funcp)execute_2275, (funcp)execute_2276, (funcp)execute_2277, (funcp)execute_2278, (funcp)execute_73, (funcp)execute_74, (funcp)execute_75, (funcp)execute_76, (funcp)execute_2248, (funcp)execute_2249, (funcp)execute_2250, (funcp)execute_78, (funcp)execute_79, (funcp)execute_80, (funcp)execute_81, (funcp)execute_2252, (funcp)execute_2253, (funcp)execute_2254, (funcp)execute_83, (funcp)execute_84, (funcp)execute_90, (funcp)execute_91, (funcp)execute_2351, (funcp)execute_2352, (funcp)execute_187, (funcp)execute_191, (funcp)execute_267, (funcp)execute_268, (funcp)execute_266, (funcp)execute_260, (funcp)execute_253, (funcp)execute_254, (funcp)execute_228, (funcp)execute_231, (funcp)execute_234, (funcp)execute_251, (funcp)execute_258, (funcp)execute_249, (funcp)execute_239, (funcp)execute_243, (funcp)execute_245, (funcp)execute_224, (funcp)execute_225, (funcp)execute_219, (funcp)execute_222, (funcp)execute_2022, (funcp)execute_2023, (funcp)execute_2024, (funcp)execute_2362, (funcp)execute_2363, (funcp)execute_2364, (funcp)execute_2365, (funcp)execute_2366, (funcp)transaction_4, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_10, (funcp)transaction_11, (funcp)transaction_699, (funcp)transaction_700, (funcp)transaction_701, (funcp)transaction_702, (funcp)transaction_703, (funcp)transaction_704, (funcp)transaction_705, (funcp)transaction_706, (funcp)transaction_707, (funcp)transaction_708, (funcp)transaction_709, (funcp)transaction_710, (funcp)transaction_711, (funcp)transaction_712, (funcp)transaction_713, (funcp)transaction_714, (funcp)transaction_715, (funcp)transaction_716, (funcp)transaction_717, (funcp)transaction_718, (funcp)transaction_719, (funcp)transaction_720, (funcp)transaction_721, (funcp)transaction_722, (funcp)transaction_723, (funcp)transaction_732, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_807, (funcp)transaction_854, (funcp)transaction_901, (funcp)transaction_948, (funcp)transaction_995, (funcp)transaction_1042, (funcp)transaction_1089, (funcp)transaction_1136, (funcp)transaction_1183, (funcp)transaction_1230, (funcp)transaction_1277, (funcp)transaction_1324, (funcp)transaction_1371, (funcp)transaction_1418, (funcp)transaction_1465, (funcp)transaction_1512, (funcp)transaction_1559, (funcp)transaction_1606, (funcp)transaction_1653, (funcp)transaction_1700, (funcp)transaction_1747, (funcp)transaction_1794, (funcp)transaction_1841, (funcp)transaction_1888, (funcp)transaction_724, (funcp)transaction_725, (funcp)transaction_726, (funcp)transaction_727, (funcp)transaction_728, (funcp)transaction_729, (funcp)transaction_730};
const int NumRelocateId= 289;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/clk_rst_behav/xsim.reloc",  (void **)funcTab, 289);
	iki_vhdl_file_variable_register(dp + 561072);
	iki_vhdl_file_variable_register(dp + 561128);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/clk_rst_behav/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void wrapper_func_0(char *dp)

{

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 722104, dp + 718696, 0, 31, 0, 31, 32, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 736480, dp + 718752, 0, 31, 0, 31, 32, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 750856, dp + 718808, 0, 31, 0, 31, 32, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 765232, dp + 718864, 0, 31, 0, 31, 32, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 779608, dp + 718920, 0, 31, 0, 31, 32, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 793984, dp + 718976, 0, 31, 0, 31, 32, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 808360, dp + 719032, 0, 31, 0, 31, 32, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 822736, dp + 719088, 0, 31, 0, 31, 32, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 837112, dp + 719144, 0, 31, 0, 31, 32, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 851488, dp + 719200, 0, 31, 0, 31, 32, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 865864, dp + 719256, 0, 31, 0, 31, 32, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 880240, dp + 719312, 0, 31, 0, 31, 32, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 894616, dp + 719368, 0, 31, 0, 31, 32, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 908992, dp + 719424, 0, 31, 0, 31, 32, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 923368, dp + 719480, 0, 31, 0, 31, 32, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 937744, dp + 719536, 0, 31, 0, 31, 32, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 952120, dp + 719592, 0, 31, 0, 31, 32, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 966496, dp + 719648, 0, 31, 0, 31, 32, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 980872, dp + 719704, 0, 31, 0, 31, 32, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 995248, dp + 719760, 0, 31, 0, 31, 32, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 1009624, dp + 719816, 0, 31, 0, 31, 32, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 1024000, dp + 719872, 0, 31, 0, 31, 32, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 1038376, dp + 719928, 0, 31, 0, 31, 32, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 1052752, dp + 719984, 0, 31, 0, 31, 32, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 1067128, dp + 720040, 0, 31, 0, 31, 32, 1);

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

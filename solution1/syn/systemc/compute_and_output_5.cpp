#include "compute_and_output.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void compute_and_output::thread_tmp_249_fu_2065_p1() {
    tmp_249_fu_2065_p1 = svs_V_10_q0.read().range(8-1, 0);
}

void compute_and_output::thread_tmp_250_fu_2079_p1() {
    tmp_250_fu_2079_p1 = svs_V_11_q0.read().range(8-1, 0);
}

void compute_and_output::thread_tmp_251_fu_2093_p1() {
    tmp_251_fu_2093_p1 = svs_V_12_q0.read().range(8-1, 0);
}

void compute_and_output::thread_tmp_252_fu_2107_p1() {
    tmp_252_fu_2107_p1 = svs_V_13_q0.read().range(8-1, 0);
}

void compute_and_output::thread_tmp_253_fu_2121_p1() {
    tmp_253_fu_2121_p1 = svs_V_14_q0.read().range(8-1, 0);
}

void compute_and_output::thread_tmp_254_fu_2135_p1() {
    tmp_254_fu_2135_p1 = svs_V_15_q0.read().range(8-1, 0);
}

void compute_and_output::thread_tmp_256_cast_fu_1895_p1() {
    tmp_256_cast_fu_1895_p1 = esl_zext<64,10>(tmp_20_fu_1890_p2.read());
}

void compute_and_output::thread_tmp_269_fu_11785_p1() {
    tmp_269_fu_11785_p1 = k3_i_i_reg_1534.read().range(4-1, 0);
}

void compute_and_output::thread_tmp_272_fu_12041_p3() {
    tmp_272_fu_12041_p3 = p_Val2_3_fu_12034_p3.read().range(19, 19);
}

void compute_and_output::thread_tmp_27_i_i_fu_2149_p4() {
    tmp_27_i_i_fu_2149_p4 = svs_V_0_q0.read().range(15, 8);
}

void compute_and_output::thread_tmp_28_i_i_fu_12075_p1() {
    tmp_28_i_i_fu_12075_p1 = esl_zext<64,11>(r_V_fu_12069_p2.read());
}

void compute_and_output::thread_tmp_29_i_i_fu_2173_p4() {
    tmp_29_i_i_fu_2173_p4 = svs_V_1_q0.read().range(15, 8);
}

void compute_and_output::thread_tmp_2_fu_11113_p2() {
    tmp_2_fu_11113_p2 = (!tmp14_fu_11091_p2.read().is_01() || !tmp21_fu_11108_p2.read().is_01())? sc_lv<32>(): (sc_biguint<32>(tmp14_fu_11091_p2.read()) + sc_biguint<32>(tmp21_fu_11108_p2.read()));
}

void compute_and_output::thread_tmp_30_i_i_fu_2193_p4() {
    tmp_30_i_i_fu_2193_p4 = svs_V_2_q0.read().range(15, 8);
}

void compute_and_output::thread_tmp_31_i_i_fu_2213_p4() {
    tmp_31_i_i_fu_2213_p4 = svs_V_3_q0.read().range(15, 8);
}

void compute_and_output::thread_tmp_32_i_i_cast_fu_12109_p1() {
    tmp_32_i_i_cast_fu_12109_p1 = esl_zext<20,12>(inc_raw_V_reg_14911.read());
}

void compute_and_output::thread_tmp_34_i_i_fu_2233_p4() {
    tmp_34_i_i_fu_2233_p4 = svs_V_4_q0.read().range(15, 8);
}

void compute_and_output::thread_tmp_35_i_i_fu_2253_p4() {
    tmp_35_i_i_fu_2253_p4 = svs_V_5_q0.read().range(15, 8);
}

void compute_and_output::thread_tmp_36_i_i_fu_12117_p3() {
    tmp_36_i_i_fu_12117_p3 = esl_concat<20,2>(ap_phi_reg_pp1_iter7_p_Val2_5_reg_1620.read(), ap_const_lv2_0);
}

void compute_and_output::thread_tmp_38_i_i_fu_2273_p4() {
    tmp_38_i_i_fu_2273_p4 = svs_V_6_q0.read().range(15, 8);
}

void compute_and_output::thread_tmp_39_i_i_fu_2293_p4() {
    tmp_39_i_i_fu_2293_p4 = svs_V_7_q0.read().range(15, 8);
}

void compute_and_output::thread_tmp_3_fu_11159_p2() {
    tmp_3_fu_11159_p2 = (!tmp28_fu_11137_p2.read().is_01() || !tmp35_fu_11154_p2.read().is_01())? sc_lv<32>(): (sc_biguint<32>(tmp28_fu_11137_p2.read()) + sc_biguint<32>(tmp35_fu_11154_p2.read()));
}

void compute_and_output::thread_tmp_40_i_i_fu_2313_p4() {
    tmp_40_i_i_fu_2313_p4 = svs_V_8_q0.read().range(15, 8);
}

void compute_and_output::thread_tmp_41_i_i_fu_2333_p4() {
    tmp_41_i_i_fu_2333_p4 = svs_V_9_q0.read().range(15, 8);
}

void compute_and_output::thread_tmp_42_i_i_fu_2353_p4() {
    tmp_42_i_i_fu_2353_p4 = svs_V_10_q0.read().range(15, 8);
}

void compute_and_output::thread_tmp_43_i_i_fu_2373_p4() {
    tmp_43_i_i_fu_2373_p4 = svs_V_11_q0.read().range(15, 8);
}

void compute_and_output::thread_tmp_44_i_i_fu_2393_p4() {
    tmp_44_i_i_fu_2393_p4 = svs_V_12_q0.read().range(15, 8);
}

void compute_and_output::thread_tmp_45_i_i_fu_2413_p4() {
    tmp_45_i_i_fu_2413_p4 = svs_V_13_q0.read().range(15, 8);
}

void compute_and_output::thread_tmp_46_i_i_fu_2433_p4() {
    tmp_46_i_i_fu_2433_p4 = svs_V_14_q0.read().range(15, 8);
}

void compute_and_output::thread_tmp_47_i_i_fu_2453_p4() {
    tmp_47_i_i_fu_2453_p4 = svs_V_15_q0.read().range(15, 8);
}

void compute_and_output::thread_tmp_48_i_i_fu_2473_p4() {
    tmp_48_i_i_fu_2473_p4 = svs_V_0_q0.read().range(23, 16);
}

void compute_and_output::thread_tmp_49_i_i_fu_2497_p4() {
    tmp_49_i_i_fu_2497_p4 = svs_V_1_q0.read().range(23, 16);
}

void compute_and_output::thread_tmp_4_fu_11205_p2() {
    tmp_4_fu_11205_p2 = (!tmp42_fu_11183_p2.read().is_01() || !tmp49_fu_11200_p2.read().is_01())? sc_lv<32>(): (sc_biguint<32>(tmp42_fu_11183_p2.read()) + sc_biguint<32>(tmp49_fu_11200_p2.read()));
}

void compute_and_output::thread_tmp_50_i_i_fu_2517_p4() {
    tmp_50_i_i_fu_2517_p4 = svs_V_2_q0.read().range(23, 16);
}

void compute_and_output::thread_tmp_51_i_i_fu_2537_p4() {
    tmp_51_i_i_fu_2537_p4 = svs_V_3_q0.read().range(23, 16);
}

void compute_and_output::thread_tmp_52_i_i_fu_2557_p4() {
    tmp_52_i_i_fu_2557_p4 = svs_V_4_q0.read().range(23, 16);
}

void compute_and_output::thread_tmp_53_i_i_fu_2577_p4() {
    tmp_53_i_i_fu_2577_p4 = svs_V_5_q0.read().range(23, 16);
}

void compute_and_output::thread_tmp_54_i_i_fu_2597_p4() {
    tmp_54_i_i_fu_2597_p4 = svs_V_6_q0.read().range(23, 16);
}

void compute_and_output::thread_tmp_55_i_i_fu_2617_p4() {
    tmp_55_i_i_fu_2617_p4 = svs_V_7_q0.read().range(23, 16);
}

void compute_and_output::thread_tmp_56_i_i_fu_2637_p4() {
    tmp_56_i_i_fu_2637_p4 = svs_V_8_q0.read().range(23, 16);
}

void compute_and_output::thread_tmp_57_i_i_fu_2657_p4() {
    tmp_57_i_i_fu_2657_p4 = svs_V_9_q0.read().range(23, 16);
}

void compute_and_output::thread_tmp_58_i_i_fu_2677_p4() {
    tmp_58_i_i_fu_2677_p4 = svs_V_10_q0.read().range(23, 16);
}

void compute_and_output::thread_tmp_59_i_i_fu_2697_p4() {
    tmp_59_i_i_fu_2697_p4 = svs_V_11_q0.read().range(23, 16);
}

void compute_and_output::thread_tmp_5_fu_11251_p2() {
    tmp_5_fu_11251_p2 = (!tmp56_fu_11229_p2.read().is_01() || !tmp63_fu_11246_p2.read().is_01())? sc_lv<32>(): (sc_biguint<32>(tmp56_fu_11229_p2.read()) + sc_biguint<32>(tmp63_fu_11246_p2.read()));
}

void compute_and_output::thread_tmp_60_i_i_fu_2717_p4() {
    tmp_60_i_i_fu_2717_p4 = svs_V_12_q0.read().range(23, 16);
}

void compute_and_output::thread_tmp_61_i_i_fu_2737_p4() {
    tmp_61_i_i_fu_2737_p4 = svs_V_13_q0.read().range(23, 16);
}

void compute_and_output::thread_tmp_62_i_i_fu_2757_p4() {
    tmp_62_i_i_fu_2757_p4 = svs_V_14_q0.read().range(23, 16);
}

void compute_and_output::thread_tmp_63_i_i_fu_2777_p4() {
    tmp_63_i_i_fu_2777_p4 = svs_V_15_q0.read().range(23, 16);
}

void compute_and_output::thread_tmp_64_i_i_fu_2797_p4() {
    tmp_64_i_i_fu_2797_p4 = svs_V_0_q0.read().range(31, 24);
}

void compute_and_output::thread_tmp_65_i_i_fu_2821_p4() {
    tmp_65_i_i_fu_2821_p4 = svs_V_1_q0.read().range(31, 24);
}

void compute_and_output::thread_tmp_66_i_i_fu_2841_p4() {
    tmp_66_i_i_fu_2841_p4 = svs_V_2_q0.read().range(31, 24);
}

void compute_and_output::thread_tmp_67_i_i_fu_2861_p4() {
    tmp_67_i_i_fu_2861_p4 = svs_V_3_q0.read().range(31, 24);
}

void compute_and_output::thread_tmp_68_i_i_fu_2881_p4() {
    tmp_68_i_i_fu_2881_p4 = svs_V_4_q0.read().range(31, 24);
}

void compute_and_output::thread_tmp_69_i_i_fu_2901_p4() {
    tmp_69_i_i_fu_2901_p4 = svs_V_5_q0.read().range(31, 24);
}

void compute_and_output::thread_tmp_6_fu_11297_p2() {
    tmp_6_fu_11297_p2 = (!tmp70_fu_11275_p2.read().is_01() || !tmp77_fu_11292_p2.read().is_01())? sc_lv<32>(): (sc_biguint<32>(tmp70_fu_11275_p2.read()) + sc_biguint<32>(tmp77_fu_11292_p2.read()));
}

void compute_and_output::thread_tmp_70_i_i_fu_2921_p4() {
    tmp_70_i_i_fu_2921_p4 = svs_V_6_q0.read().range(31, 24);
}

void compute_and_output::thread_tmp_71_i_i_fu_2941_p4() {
    tmp_71_i_i_fu_2941_p4 = svs_V_7_q0.read().range(31, 24);
}

void compute_and_output::thread_tmp_72_i_i_fu_2961_p4() {
    tmp_72_i_i_fu_2961_p4 = svs_V_8_q0.read().range(31, 24);
}

void compute_and_output::thread_tmp_73_i_i_fu_2981_p4() {
    tmp_73_i_i_fu_2981_p4 = svs_V_9_q0.read().range(31, 24);
}

void compute_and_output::thread_tmp_74_i_i_fu_3001_p4() {
    tmp_74_i_i_fu_3001_p4 = svs_V_10_q0.read().range(31, 24);
}

void compute_and_output::thread_tmp_75_i_i_fu_3021_p4() {
    tmp_75_i_i_fu_3021_p4 = svs_V_11_q0.read().range(31, 24);
}

void compute_and_output::thread_tmp_76_i_i_fu_3041_p4() {
    tmp_76_i_i_fu_3041_p4 = svs_V_12_q0.read().range(31, 24);
}

void compute_and_output::thread_tmp_77_i_i_fu_3061_p4() {
    tmp_77_i_i_fu_3061_p4 = svs_V_13_q0.read().range(31, 24);
}

void compute_and_output::thread_tmp_78_i_i_fu_3081_p4() {
    tmp_78_i_i_fu_3081_p4 = svs_V_14_q0.read().range(31, 24);
}

void compute_and_output::thread_tmp_79_i_i_fu_3101_p4() {
    tmp_79_i_i_fu_3101_p4 = svs_V_15_q0.read().range(31, 24);
}

void compute_and_output::thread_tmp_7_fu_11343_p2() {
    tmp_7_fu_11343_p2 = (!tmp84_fu_11321_p2.read().is_01() || !tmp91_fu_11338_p2.read().is_01())? sc_lv<32>(): (sc_biguint<32>(tmp84_fu_11321_p2.read()) + sc_biguint<32>(tmp91_fu_11338_p2.read()));
}

void compute_and_output::thread_tmp_8_fu_11389_p2() {
    tmp_8_fu_11389_p2 = (!tmp98_fu_11367_p2.read().is_01() || !tmp105_fu_11384_p2.read().is_01())? sc_lv<32>(): (sc_biguint<32>(tmp98_fu_11367_p2.read()) + sc_biguint<32>(tmp105_fu_11384_p2.read()));
}

void compute_and_output::thread_tmp_9_fu_11435_p2() {
    tmp_9_fu_11435_p2 = (!tmp112_fu_11413_p2.read().is_01() || !tmp119_fu_11430_p2.read().is_01())? sc_lv<32>(): (sc_biguint<32>(tmp112_fu_11413_p2.read()) + sc_biguint<32>(tmp119_fu_11430_p2.read()));
}

void compute_and_output::thread_tmp_9_i_i_fu_11789_p2() {
    tmp_9_i_i_fu_11789_p2 = (!i_i_i_reg_1319.read().is_01() || !k3_cast321_i_i_fu_11781_p1.read().is_01())? sc_lv<8>(): (sc_biguint<8>(i_i_i_reg_1319.read()) + sc_biguint<8>(k3_cast321_i_i_fu_11781_p1.read()));
}

void compute_and_output::thread_tmp_fu_11045_p2() {
    tmp_fu_11045_p2 = (!tmp1_reg_13982.read().is_01() || !tmp4_fu_11039_p2.read().is_01())? sc_lv<32>(): (sc_biguint<32>(tmp1_reg_13982.read()) + sc_biguint<32>(tmp4_fu_11039_p2.read()));
}

void compute_and_output::thread_tmp_i_i_fu_1771_p2() {
    tmp_i_i_fu_1771_p2 = (!i_i_i_reg_1319.read().is_01() || !ap_const_lv8_A5.is_01())? sc_lv<1>(): (sc_biguint<8>(i_i_i_reg_1319.read()) < sc_biguint<8>(ap_const_lv8_A5));
}

void compute_and_output::thread_tmp_s_fu_11067_p2() {
    tmp_s_fu_11067_p2 = (!tmp_fu_11045_p2.read().is_01() || !tmp7_fu_11062_p2.read().is_01())? sc_lv<32>(): (sc_biguint<32>(tmp_fu_11045_p2.read()) + sc_biguint<32>(tmp7_fu_11062_p2.read()));
}

void compute_and_output::thread_x_local_0_V_address0() {
    x_local_0_V_address0 =  (sc_lv<6>) (newIndex3_i_i_fu_1866_p1.read());
}

void compute_and_output::thread_x_local_0_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_enable_reg_pp0_iter0.read(), ap_const_logic_1))) {
        x_local_0_V_ce0 = ap_const_logic_1;
    } else {
        x_local_0_V_ce0 = ap_const_logic_0;
    }
}

void compute_and_output::thread_x_local_10_V_address0() {
    x_local_10_V_address0 =  (sc_lv<6>) (newIndex3_i_i_fu_1866_p1.read());
}

void compute_and_output::thread_x_local_10_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_enable_reg_pp0_iter0.read(), ap_const_logic_1))) {
        x_local_10_V_ce0 = ap_const_logic_1;
    } else {
        x_local_10_V_ce0 = ap_const_logic_0;
    }
}

void compute_and_output::thread_x_local_11_V_address0() {
    x_local_11_V_address0 =  (sc_lv<6>) (newIndex3_i_i_fu_1866_p1.read());
}

void compute_and_output::thread_x_local_11_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_enable_reg_pp0_iter0.read(), ap_const_logic_1))) {
        x_local_11_V_ce0 = ap_const_logic_1;
    } else {
        x_local_11_V_ce0 = ap_const_logic_0;
    }
}

void compute_and_output::thread_x_local_12_V_address0() {
    x_local_12_V_address0 =  (sc_lv<6>) (newIndex3_i_i_fu_1866_p1.read());
}

void compute_and_output::thread_x_local_12_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_enable_reg_pp0_iter0.read(), ap_const_logic_1))) {
        x_local_12_V_ce0 = ap_const_logic_1;
    } else {
        x_local_12_V_ce0 = ap_const_logic_0;
    }
}

void compute_and_output::thread_x_local_13_V_address0() {
    x_local_13_V_address0 =  (sc_lv<6>) (newIndex3_i_i_fu_1866_p1.read());
}

void compute_and_output::thread_x_local_13_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_enable_reg_pp0_iter0.read(), ap_const_logic_1))) {
        x_local_13_V_ce0 = ap_const_logic_1;
    } else {
        x_local_13_V_ce0 = ap_const_logic_0;
    }
}

void compute_and_output::thread_x_local_14_V_address0() {
    x_local_14_V_address0 =  (sc_lv<6>) (newIndex3_i_i_fu_1866_p1.read());
}

void compute_and_output::thread_x_local_14_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_enable_reg_pp0_iter0.read(), ap_const_logic_1))) {
        x_local_14_V_ce0 = ap_const_logic_1;
    } else {
        x_local_14_V_ce0 = ap_const_logic_0;
    }
}

void compute_and_output::thread_x_local_15_V_address0() {
    x_local_15_V_address0 =  (sc_lv<6>) (newIndex3_i_i_fu_1866_p1.read());
}

void compute_and_output::thread_x_local_15_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_enable_reg_pp0_iter0.read(), ap_const_logic_1))) {
        x_local_15_V_ce0 = ap_const_logic_1;
    } else {
        x_local_15_V_ce0 = ap_const_logic_0;
    }
}

void compute_and_output::thread_x_local_1_V_address0() {
    x_local_1_V_address0 =  (sc_lv<6>) (newIndex3_i_i_fu_1866_p1.read());
}

void compute_and_output::thread_x_local_1_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_enable_reg_pp0_iter0.read(), ap_const_logic_1))) {
        x_local_1_V_ce0 = ap_const_logic_1;
    } else {
        x_local_1_V_ce0 = ap_const_logic_0;
    }
}

void compute_and_output::thread_x_local_2_V_address0() {
    x_local_2_V_address0 =  (sc_lv<6>) (newIndex3_i_i_fu_1866_p1.read());
}

void compute_and_output::thread_x_local_2_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_enable_reg_pp0_iter0.read(), ap_const_logic_1))) {
        x_local_2_V_ce0 = ap_const_logic_1;
    } else {
        x_local_2_V_ce0 = ap_const_logic_0;
    }
}

void compute_and_output::thread_x_local_3_V_address0() {
    x_local_3_V_address0 =  (sc_lv<6>) (newIndex3_i_i_fu_1866_p1.read());
}

void compute_and_output::thread_x_local_3_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_enable_reg_pp0_iter0.read(), ap_const_logic_1))) {
        x_local_3_V_ce0 = ap_const_logic_1;
    } else {
        x_local_3_V_ce0 = ap_const_logic_0;
    }
}

void compute_and_output::thread_x_local_4_V_address0() {
    x_local_4_V_address0 =  (sc_lv<6>) (newIndex3_i_i_fu_1866_p1.read());
}

void compute_and_output::thread_x_local_4_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_enable_reg_pp0_iter0.read(), ap_const_logic_1))) {
        x_local_4_V_ce0 = ap_const_logic_1;
    } else {
        x_local_4_V_ce0 = ap_const_logic_0;
    }
}

void compute_and_output::thread_x_local_5_V_address0() {
    x_local_5_V_address0 =  (sc_lv<6>) (newIndex3_i_i_fu_1866_p1.read());
}

void compute_and_output::thread_x_local_5_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_enable_reg_pp0_iter0.read(), ap_const_logic_1))) {
        x_local_5_V_ce0 = ap_const_logic_1;
    } else {
        x_local_5_V_ce0 = ap_const_logic_0;
    }
}

void compute_and_output::thread_x_local_6_V_address0() {
    x_local_6_V_address0 =  (sc_lv<6>) (newIndex3_i_i_fu_1866_p1.read());
}

void compute_and_output::thread_x_local_6_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_enable_reg_pp0_iter0.read(), ap_const_logic_1))) {
        x_local_6_V_ce0 = ap_const_logic_1;
    } else {
        x_local_6_V_ce0 = ap_const_logic_0;
    }
}

void compute_and_output::thread_x_local_7_V_address0() {
    x_local_7_V_address0 =  (sc_lv<6>) (newIndex3_i_i_fu_1866_p1.read());
}

void compute_and_output::thread_x_local_7_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_enable_reg_pp0_iter0.read(), ap_const_logic_1))) {
        x_local_7_V_ce0 = ap_const_logic_1;
    } else {
        x_local_7_V_ce0 = ap_const_logic_0;
    }
}

void compute_and_output::thread_x_local_8_V_address0() {
    x_local_8_V_address0 =  (sc_lv<6>) (newIndex3_i_i_fu_1866_p1.read());
}

void compute_and_output::thread_x_local_8_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_enable_reg_pp0_iter0.read(), ap_const_logic_1))) {
        x_local_8_V_ce0 = ap_const_logic_1;
    } else {
        x_local_8_V_ce0 = ap_const_logic_0;
    }
}

void compute_and_output::thread_x_local_9_V_address0() {
    x_local_9_V_address0 =  (sc_lv<6>) (newIndex3_i_i_fu_1866_p1.read());
}

void compute_and_output::thread_x_local_9_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_enable_reg_pp0_iter0.read(), ap_const_logic_1))) {
        x_local_9_V_ce0 = ap_const_logic_1;
    } else {
        x_local_9_V_ce0 = ap_const_logic_0;
    }
}

void compute_and_output::thread_y0_raw_V_fu_12080_p1() {
    y0_raw_V_fu_12080_p1 = EXP_LUT_V_q0.read().range(20-1, 0);
}

}


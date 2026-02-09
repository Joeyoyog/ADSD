#include "classify.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void classify::thread_tmp_97_2_cast_fu_15946_p1() {
    tmp_97_2_cast_fu_15946_p1 = esl_zext<26,22>(tmp_97_2_fu_15938_p3.read());
}

void classify::thread_tmp_97_2_fu_15938_p3() {
    tmp_97_2_fu_15938_p3 = esl_concat<19,3>(merge_i11_fu_15868_p34.read(), ap_const_lv3_0);
}

void classify::thread_tmp_97_3_cast_fu_16817_p1() {
    tmp_97_3_cast_fu_16817_p1 = esl_zext<26,22>(tmp_97_3_fu_16809_p3.read());
}

void classify::thread_tmp_97_3_fu_16809_p3() {
    tmp_97_3_fu_16809_p3 = esl_concat<19,3>(merge_i15_fu_16739_p34.read(), ap_const_lv3_0);
}

void classify::thread_tmp_97_4_cast_fu_17688_p1() {
    tmp_97_4_cast_fu_17688_p1 = esl_zext<26,22>(tmp_97_4_fu_17680_p3.read());
}

void classify::thread_tmp_97_4_fu_17680_p3() {
    tmp_97_4_fu_17680_p3 = esl_concat<19,3>(merge_i19_fu_17610_p34.read(), ap_const_lv3_0);
}

void classify::thread_tmp_97_5_cast_fu_18559_p1() {
    tmp_97_5_cast_fu_18559_p1 = esl_zext<26,22>(tmp_97_5_fu_18551_p3.read());
}

void classify::thread_tmp_97_5_fu_18551_p3() {
    tmp_97_5_fu_18551_p3 = esl_concat<19,3>(merge_i23_fu_18481_p34.read(), ap_const_lv3_0);
}

void classify::thread_tmp_97_6_cast_fu_19430_p1() {
    tmp_97_6_cast_fu_19430_p1 = esl_zext<26,22>(tmp_97_6_fu_19422_p3.read());
}

void classify::thread_tmp_97_6_fu_19422_p3() {
    tmp_97_6_fu_19422_p3 = esl_concat<19,3>(merge_i27_fu_19352_p34.read(), ap_const_lv3_0);
}

void classify::thread_tmp_97_7_cast_fu_20285_p1() {
    tmp_97_7_cast_fu_20285_p1 = esl_zext<26,22>(tmp_97_7_fu_20277_p3.read());
}

void classify::thread_tmp_97_7_fu_20277_p3() {
    tmp_97_7_fu_20277_p3 = esl_concat<19,3>(merge_i31_fu_20207_p34.read(), ap_const_lv3_0);
}

void classify::thread_tmp_98_fu_4474_p4() {
    tmp_98_fu_4474_p4 = svs_V_12_q0.read().range(23, 16);
}

void classify::thread_tmp_s_fu_3535_p2() {
    tmp_s_fu_3535_p2 = (!i2_reg_1743.read().is_01() || !ap_const_lv8_A5.is_01())? sc_lv<1>(): (sc_biguint<8>(i2_reg_1743.read()) < sc_biguint<8>(ap_const_lv8_A5));
}

void classify::thread_x_local_0_V_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
         esl_seteq<1,1,1>(ap_enable_reg_pp1_iter0.read(), ap_const_logic_1) && 
         esl_seteq<1,1,1>(ap_block_pp1_stage0.read(), ap_const_boolean_0))) {
        x_local_0_V_address0 =  (sc_lv<6>) (newIndex4_fu_3623_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_1))) {
        x_local_0_V_address0 =  (sc_lv<6>) (newIndex2_fu_3401_p1.read());
    } else {
        x_local_0_V_address0 =  (sc_lv<6>) ("XXXXXX");
    }
}

void classify::thread_x_local_0_V_ce0() {
    if (((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_1)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp1_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_enable_reg_pp1_iter0.read(), ap_const_logic_1)))) {
        x_local_0_V_ce0 = ap_const_logic_1;
    } else {
        x_local_0_V_ce0 = ap_const_logic_0;
    }
}

void classify::thread_x_local_0_V_we0() {
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_1) && 
         esl_seteq<1,4,4>(tmp_2_reg_20904_pp0_iter1_reg.read(), ap_const_lv4_0))) {
        x_local_0_V_we0 = ap_const_logic_1;
    } else {
        x_local_0_V_we0 = ap_const_logic_0;
    }
}

void classify::thread_x_local_10_V_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
         esl_seteq<1,1,1>(ap_enable_reg_pp1_iter0.read(), ap_const_logic_1) && 
         esl_seteq<1,1,1>(ap_block_pp1_stage0.read(), ap_const_boolean_0))) {
        x_local_10_V_address0 =  (sc_lv<6>) (newIndex4_fu_3623_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_1))) {
        x_local_10_V_address0 =  (sc_lv<6>) (newIndex2_fu_3401_p1.read());
    } else {
        x_local_10_V_address0 =  (sc_lv<6>) ("XXXXXX");
    }
}

void classify::thread_x_local_10_V_ce0() {
    if (((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_1)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp1_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_enable_reg_pp1_iter0.read(), ap_const_logic_1)))) {
        x_local_10_V_ce0 = ap_const_logic_1;
    } else {
        x_local_10_V_ce0 = ap_const_logic_0;
    }
}

void classify::thread_x_local_10_V_we0() {
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_1) && 
         esl_seteq<1,4,4>(tmp_2_reg_20904_pp0_iter1_reg.read(), ap_const_lv4_A))) {
        x_local_10_V_we0 = ap_const_logic_1;
    } else {
        x_local_10_V_we0 = ap_const_logic_0;
    }
}

void classify::thread_x_local_11_V_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
         esl_seteq<1,1,1>(ap_enable_reg_pp1_iter0.read(), ap_const_logic_1) && 
         esl_seteq<1,1,1>(ap_block_pp1_stage0.read(), ap_const_boolean_0))) {
        x_local_11_V_address0 =  (sc_lv<6>) (newIndex4_fu_3623_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_1))) {
        x_local_11_V_address0 =  (sc_lv<6>) (newIndex2_fu_3401_p1.read());
    } else {
        x_local_11_V_address0 =  (sc_lv<6>) ("XXXXXX");
    }
}

void classify::thread_x_local_11_V_ce0() {
    if (((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_1)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp1_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_enable_reg_pp1_iter0.read(), ap_const_logic_1)))) {
        x_local_11_V_ce0 = ap_const_logic_1;
    } else {
        x_local_11_V_ce0 = ap_const_logic_0;
    }
}

void classify::thread_x_local_11_V_we0() {
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_1) && 
         esl_seteq<1,4,4>(tmp_2_reg_20904_pp0_iter1_reg.read(), ap_const_lv4_B))) {
        x_local_11_V_we0 = ap_const_logic_1;
    } else {
        x_local_11_V_we0 = ap_const_logic_0;
    }
}

void classify::thread_x_local_12_V_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
         esl_seteq<1,1,1>(ap_enable_reg_pp1_iter0.read(), ap_const_logic_1) && 
         esl_seteq<1,1,1>(ap_block_pp1_stage0.read(), ap_const_boolean_0))) {
        x_local_12_V_address0 =  (sc_lv<6>) (newIndex4_fu_3623_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_1))) {
        x_local_12_V_address0 =  (sc_lv<6>) (newIndex2_fu_3401_p1.read());
    } else {
        x_local_12_V_address0 =  (sc_lv<6>) ("XXXXXX");
    }
}

void classify::thread_x_local_12_V_ce0() {
    if (((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_1)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp1_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_enable_reg_pp1_iter0.read(), ap_const_logic_1)))) {
        x_local_12_V_ce0 = ap_const_logic_1;
    } else {
        x_local_12_V_ce0 = ap_const_logic_0;
    }
}

void classify::thread_x_local_12_V_we0() {
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_1) && 
         esl_seteq<1,4,4>(tmp_2_reg_20904_pp0_iter1_reg.read(), ap_const_lv4_C))) {
        x_local_12_V_we0 = ap_const_logic_1;
    } else {
        x_local_12_V_we0 = ap_const_logic_0;
    }
}

void classify::thread_x_local_13_V_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
         esl_seteq<1,1,1>(ap_enable_reg_pp1_iter0.read(), ap_const_logic_1) && 
         esl_seteq<1,1,1>(ap_block_pp1_stage0.read(), ap_const_boolean_0))) {
        x_local_13_V_address0 =  (sc_lv<6>) (newIndex4_fu_3623_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_1))) {
        x_local_13_V_address0 =  (sc_lv<6>) (newIndex2_fu_3401_p1.read());
    } else {
        x_local_13_V_address0 =  (sc_lv<6>) ("XXXXXX");
    }
}

void classify::thread_x_local_13_V_ce0() {
    if (((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_1)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp1_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_enable_reg_pp1_iter0.read(), ap_const_logic_1)))) {
        x_local_13_V_ce0 = ap_const_logic_1;
    } else {
        x_local_13_V_ce0 = ap_const_logic_0;
    }
}

void classify::thread_x_local_13_V_we0() {
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_1) && 
         esl_seteq<1,4,4>(tmp_2_reg_20904_pp0_iter1_reg.read(), ap_const_lv4_D))) {
        x_local_13_V_we0 = ap_const_logic_1;
    } else {
        x_local_13_V_we0 = ap_const_logic_0;
    }
}

void classify::thread_x_local_14_V_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
         esl_seteq<1,1,1>(ap_enable_reg_pp1_iter0.read(), ap_const_logic_1) && 
         esl_seteq<1,1,1>(ap_block_pp1_stage0.read(), ap_const_boolean_0))) {
        x_local_14_V_address0 =  (sc_lv<6>) (newIndex4_fu_3623_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_1))) {
        x_local_14_V_address0 =  (sc_lv<6>) (newIndex2_fu_3401_p1.read());
    } else {
        x_local_14_V_address0 =  (sc_lv<6>) ("XXXXXX");
    }
}

void classify::thread_x_local_14_V_ce0() {
    if (((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_1)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp1_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_enable_reg_pp1_iter0.read(), ap_const_logic_1)))) {
        x_local_14_V_ce0 = ap_const_logic_1;
    } else {
        x_local_14_V_ce0 = ap_const_logic_0;
    }
}

void classify::thread_x_local_14_V_we0() {
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_1) && 
         esl_seteq<1,4,4>(tmp_2_reg_20904_pp0_iter1_reg.read(), ap_const_lv4_E))) {
        x_local_14_V_we0 = ap_const_logic_1;
    } else {
        x_local_14_V_we0 = ap_const_logic_0;
    }
}

void classify::thread_x_local_15_V_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
         esl_seteq<1,1,1>(ap_enable_reg_pp1_iter0.read(), ap_const_logic_1) && 
         esl_seteq<1,1,1>(ap_block_pp1_stage0.read(), ap_const_boolean_0))) {
        x_local_15_V_address0 =  (sc_lv<6>) (newIndex4_fu_3623_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_1))) {
        x_local_15_V_address0 =  (sc_lv<6>) (newIndex2_fu_3401_p1.read());
    } else {
        x_local_15_V_address0 =  (sc_lv<6>) ("XXXXXX");
    }
}

void classify::thread_x_local_15_V_ce0() {
    if (((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_1)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp1_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_enable_reg_pp1_iter0.read(), ap_const_logic_1)))) {
        x_local_15_V_ce0 = ap_const_logic_1;
    } else {
        x_local_15_V_ce0 = ap_const_logic_0;
    }
}

void classify::thread_x_local_15_V_we0() {
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_1) && 
         esl_seteq<1,4,4>(tmp_2_reg_20904_pp0_iter1_reg.read(), ap_const_lv4_F))) {
        x_local_15_V_we0 = ap_const_logic_1;
    } else {
        x_local_15_V_we0 = ap_const_logic_0;
    }
}

void classify::thread_x_local_1_V_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
         esl_seteq<1,1,1>(ap_enable_reg_pp1_iter0.read(), ap_const_logic_1) && 
         esl_seteq<1,1,1>(ap_block_pp1_stage0.read(), ap_const_boolean_0))) {
        x_local_1_V_address0 =  (sc_lv<6>) (newIndex4_fu_3623_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_1))) {
        x_local_1_V_address0 =  (sc_lv<6>) (newIndex2_fu_3401_p1.read());
    } else {
        x_local_1_V_address0 =  (sc_lv<6>) ("XXXXXX");
    }
}

void classify::thread_x_local_1_V_ce0() {
    if (((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_1)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp1_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_enable_reg_pp1_iter0.read(), ap_const_logic_1)))) {
        x_local_1_V_ce0 = ap_const_logic_1;
    } else {
        x_local_1_V_ce0 = ap_const_logic_0;
    }
}

void classify::thread_x_local_1_V_we0() {
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_1) && 
         esl_seteq<1,4,4>(tmp_2_reg_20904_pp0_iter1_reg.read(), ap_const_lv4_1))) {
        x_local_1_V_we0 = ap_const_logic_1;
    } else {
        x_local_1_V_we0 = ap_const_logic_0;
    }
}

void classify::thread_x_local_2_V_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
         esl_seteq<1,1,1>(ap_enable_reg_pp1_iter0.read(), ap_const_logic_1) && 
         esl_seteq<1,1,1>(ap_block_pp1_stage0.read(), ap_const_boolean_0))) {
        x_local_2_V_address0 =  (sc_lv<6>) (newIndex4_fu_3623_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_1))) {
        x_local_2_V_address0 =  (sc_lv<6>) (newIndex2_fu_3401_p1.read());
    } else {
        x_local_2_V_address0 =  (sc_lv<6>) ("XXXXXX");
    }
}

void classify::thread_x_local_2_V_ce0() {
    if (((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_1)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp1_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_enable_reg_pp1_iter0.read(), ap_const_logic_1)))) {
        x_local_2_V_ce0 = ap_const_logic_1;
    } else {
        x_local_2_V_ce0 = ap_const_logic_0;
    }
}

void classify::thread_x_local_2_V_we0() {
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_1) && 
         esl_seteq<1,4,4>(tmp_2_reg_20904_pp0_iter1_reg.read(), ap_const_lv4_2))) {
        x_local_2_V_we0 = ap_const_logic_1;
    } else {
        x_local_2_V_we0 = ap_const_logic_0;
    }
}

void classify::thread_x_local_3_V_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
         esl_seteq<1,1,1>(ap_enable_reg_pp1_iter0.read(), ap_const_logic_1) && 
         esl_seteq<1,1,1>(ap_block_pp1_stage0.read(), ap_const_boolean_0))) {
        x_local_3_V_address0 =  (sc_lv<6>) (newIndex4_fu_3623_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_1))) {
        x_local_3_V_address0 =  (sc_lv<6>) (newIndex2_fu_3401_p1.read());
    } else {
        x_local_3_V_address0 =  (sc_lv<6>) ("XXXXXX");
    }
}

void classify::thread_x_local_3_V_ce0() {
    if (((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_1)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp1_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_enable_reg_pp1_iter0.read(), ap_const_logic_1)))) {
        x_local_3_V_ce0 = ap_const_logic_1;
    } else {
        x_local_3_V_ce0 = ap_const_logic_0;
    }
}

void classify::thread_x_local_3_V_we0() {
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_1) && 
         esl_seteq<1,4,4>(tmp_2_reg_20904_pp0_iter1_reg.read(), ap_const_lv4_3))) {
        x_local_3_V_we0 = ap_const_logic_1;
    } else {
        x_local_3_V_we0 = ap_const_logic_0;
    }
}

void classify::thread_x_local_4_V_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
         esl_seteq<1,1,1>(ap_enable_reg_pp1_iter0.read(), ap_const_logic_1) && 
         esl_seteq<1,1,1>(ap_block_pp1_stage0.read(), ap_const_boolean_0))) {
        x_local_4_V_address0 =  (sc_lv<6>) (newIndex4_fu_3623_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_1))) {
        x_local_4_V_address0 =  (sc_lv<6>) (newIndex2_fu_3401_p1.read());
    } else {
        x_local_4_V_address0 =  (sc_lv<6>) ("XXXXXX");
    }
}

void classify::thread_x_local_4_V_ce0() {
    if (((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_1)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp1_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_enable_reg_pp1_iter0.read(), ap_const_logic_1)))) {
        x_local_4_V_ce0 = ap_const_logic_1;
    } else {
        x_local_4_V_ce0 = ap_const_logic_0;
    }
}

void classify::thread_x_local_4_V_we0() {
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_1) && 
         esl_seteq<1,4,4>(tmp_2_reg_20904_pp0_iter1_reg.read(), ap_const_lv4_4))) {
        x_local_4_V_we0 = ap_const_logic_1;
    } else {
        x_local_4_V_we0 = ap_const_logic_0;
    }
}

void classify::thread_x_local_5_V_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
         esl_seteq<1,1,1>(ap_enable_reg_pp1_iter0.read(), ap_const_logic_1) && 
         esl_seteq<1,1,1>(ap_block_pp1_stage0.read(), ap_const_boolean_0))) {
        x_local_5_V_address0 =  (sc_lv<6>) (newIndex4_fu_3623_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_1))) {
        x_local_5_V_address0 =  (sc_lv<6>) (newIndex2_fu_3401_p1.read());
    } else {
        x_local_5_V_address0 =  (sc_lv<6>) ("XXXXXX");
    }
}

void classify::thread_x_local_5_V_ce0() {
    if (((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_1)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp1_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_enable_reg_pp1_iter0.read(), ap_const_logic_1)))) {
        x_local_5_V_ce0 = ap_const_logic_1;
    } else {
        x_local_5_V_ce0 = ap_const_logic_0;
    }
}

void classify::thread_x_local_5_V_we0() {
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_1) && 
         esl_seteq<1,4,4>(tmp_2_reg_20904_pp0_iter1_reg.read(), ap_const_lv4_5))) {
        x_local_5_V_we0 = ap_const_logic_1;
    } else {
        x_local_5_V_we0 = ap_const_logic_0;
    }
}

void classify::thread_x_local_6_V_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
         esl_seteq<1,1,1>(ap_enable_reg_pp1_iter0.read(), ap_const_logic_1) && 
         esl_seteq<1,1,1>(ap_block_pp1_stage0.read(), ap_const_boolean_0))) {
        x_local_6_V_address0 =  (sc_lv<6>) (newIndex4_fu_3623_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_1))) {
        x_local_6_V_address0 =  (sc_lv<6>) (newIndex2_fu_3401_p1.read());
    } else {
        x_local_6_V_address0 =  (sc_lv<6>) ("XXXXXX");
    }
}

void classify::thread_x_local_6_V_ce0() {
    if (((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_1)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp1_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_enable_reg_pp1_iter0.read(), ap_const_logic_1)))) {
        x_local_6_V_ce0 = ap_const_logic_1;
    } else {
        x_local_6_V_ce0 = ap_const_logic_0;
    }
}

void classify::thread_x_local_6_V_we0() {
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_1) && 
         esl_seteq<1,4,4>(tmp_2_reg_20904_pp0_iter1_reg.read(), ap_const_lv4_6))) {
        x_local_6_V_we0 = ap_const_logic_1;
    } else {
        x_local_6_V_we0 = ap_const_logic_0;
    }
}

void classify::thread_x_local_7_V_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
         esl_seteq<1,1,1>(ap_enable_reg_pp1_iter0.read(), ap_const_logic_1) && 
         esl_seteq<1,1,1>(ap_block_pp1_stage0.read(), ap_const_boolean_0))) {
        x_local_7_V_address0 =  (sc_lv<6>) (newIndex4_fu_3623_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_1))) {
        x_local_7_V_address0 =  (sc_lv<6>) (newIndex2_fu_3401_p1.read());
    } else {
        x_local_7_V_address0 =  (sc_lv<6>) ("XXXXXX");
    }
}

void classify::thread_x_local_7_V_ce0() {
    if (((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_1)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp1_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_enable_reg_pp1_iter0.read(), ap_const_logic_1)))) {
        x_local_7_V_ce0 = ap_const_logic_1;
    } else {
        x_local_7_V_ce0 = ap_const_logic_0;
    }
}

void classify::thread_x_local_7_V_we0() {
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_1) && 
         esl_seteq<1,4,4>(tmp_2_reg_20904_pp0_iter1_reg.read(), ap_const_lv4_7))) {
        x_local_7_V_we0 = ap_const_logic_1;
    } else {
        x_local_7_V_we0 = ap_const_logic_0;
    }
}

void classify::thread_x_local_8_V_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
         esl_seteq<1,1,1>(ap_enable_reg_pp1_iter0.read(), ap_const_logic_1) && 
         esl_seteq<1,1,1>(ap_block_pp1_stage0.read(), ap_const_boolean_0))) {
        x_local_8_V_address0 =  (sc_lv<6>) (newIndex4_fu_3623_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_1))) {
        x_local_8_V_address0 =  (sc_lv<6>) (newIndex2_fu_3401_p1.read());
    } else {
        x_local_8_V_address0 =  (sc_lv<6>) ("XXXXXX");
    }
}

void classify::thread_x_local_8_V_ce0() {
    if (((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_1)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp1_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_enable_reg_pp1_iter0.read(), ap_const_logic_1)))) {
        x_local_8_V_ce0 = ap_const_logic_1;
    } else {
        x_local_8_V_ce0 = ap_const_logic_0;
    }
}

void classify::thread_x_local_8_V_we0() {
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_1) && 
         esl_seteq<1,4,4>(tmp_2_reg_20904_pp0_iter1_reg.read(), ap_const_lv4_8))) {
        x_local_8_V_we0 = ap_const_logic_1;
    } else {
        x_local_8_V_we0 = ap_const_logic_0;
    }
}

void classify::thread_x_local_9_V_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
         esl_seteq<1,1,1>(ap_enable_reg_pp1_iter0.read(), ap_const_logic_1) && 
         esl_seteq<1,1,1>(ap_block_pp1_stage0.read(), ap_const_boolean_0))) {
        x_local_9_V_address0 =  (sc_lv<6>) (newIndex4_fu_3623_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_1))) {
        x_local_9_V_address0 =  (sc_lv<6>) (newIndex2_fu_3401_p1.read());
    } else {
        x_local_9_V_address0 =  (sc_lv<6>) ("XXXXXX");
    }
}

void classify::thread_x_local_9_V_ce0() {
    if (((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_1)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp1_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_enable_reg_pp1_iter0.read(), ap_const_logic_1)))) {
        x_local_9_V_ce0 = ap_const_logic_1;
    } else {
        x_local_9_V_ce0 = ap_const_logic_0;
    }
}

void classify::thread_x_local_9_V_we0() {
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_1) && 
         esl_seteq<1,4,4>(tmp_2_reg_20904_pp0_iter1_reg.read(), ap_const_lv4_9))) {
        x_local_9_V_we0 = ap_const_logic_1;
    } else {
        x_local_9_V_we0 = ap_const_logic_0;
    }
}

void classify::thread_x_norm_V_fu_3437_p2() {
    x_norm_V_fu_3437_p2 = (!p_Val2_s_reg_1720.read().is_01() || !tmp_6_fu_3429_p3.read().is_01())? sc_lv<24>(): (sc_biguint<24>(p_Val2_s_reg_1720.read()) + sc_biguint<24>(tmp_6_fu_3429_p3.read()));
}

}


############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project SVM_Accelerator_HLS_Cordic_Optimized
set_top classify
add_files SVM_Accelerator_HLS_Cordic_GoodMSE_FixedPoint/svs.h
add_files SVM_Accelerator_HLS_Cordic_GoodMSE_FixedPoint/model_data.h
add_files SVM_Accelerator_HLS_Cordic_GoodMSE_FixedPoint/bias.h
add_files alphas.h
add_files SVM_Accelerator_HLS_Cordic_GoodMSE_FixedPoint/Exp.h
add_files SVM_Accelerator_HLS_Cordic_GoodMSE_FixedPoint/Exp.cpp
add_files SVM_Accelerator_HLS_Cordic_GoodMSE_FixedPoint/Classifier.h
add_files SVM_Accelerator_HLS_Cordic_GoodMSE_FixedPoint/Classifier.cpp
add_files -tb SVM_Accelerator_HLS_Cordic_Optimized/test_data.txt -cflags "-Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas"
add_files -tb SVM_Accelerator_HLS_Cordic_Optimized/test_data.h -cflags "-Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas"
add_files -tb SVM_Accelerator_HLS_Cordic_Optimized/ground_truth.h -cflags "-Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas"
add_files -tb SVM_Accelerator_HLS_Cordic_GoodMSE_FixedPoint/CordicTB.cpp -cflags "-Wno-unknown-pragmas"
add_files -tb SVM_Accelerator_HLS_Cordic_GoodMSE_FixedPoint/AcceleratorTB.cpp -cflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
source "./SVM_Accelerator_HLS_Cordic_Optimized/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog

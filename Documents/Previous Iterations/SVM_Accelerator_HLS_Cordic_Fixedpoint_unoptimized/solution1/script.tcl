############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project SVM_Accelerator_HLS_Cordic_Fixedpoint_unoptimized
set_top classify
add_files svs.h
add_files bias.h
add_files alphas.h
add_files Exp.h
add_files Exp.cpp
add_files Classifier.h
add_files Classifier.cpp
add_files -tb SVM_Accelerator_HLS_Cordic_Fixedpoint_unoptimized/test_data.txt -cflags "-Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas"
add_files -tb SVM_Accelerator_HLS_Cordic_Fixedpoint_unoptimized/test_data.h -cflags "-Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas"
add_files -tb SVM_Accelerator_HLS_Cordic_Fixedpoint_unoptimized/ground_truth.h -cflags "-Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas"
add_files -tb SVM_Accelerator_HLS_Cordic_Fixedpoint_unoptimized/AcceleratorTB.cpp -cflags "-Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
#source "./SVM_Accelerator_HLS_Cordic_Fixedpoint_unoptimized/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog

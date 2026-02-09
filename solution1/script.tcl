############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project ADSD
set_top classify
add_files ADSD/Classifier.cpp
add_files ADSD/Classifier.h
add_files ADSD/Exp.cpp
add_files ADSD/Exp.h
add_files ADSD/alphas.h
add_files ADSD/bias.h
add_files ADSD/svs.h
add_files -tb ADSD/AcceleratorTB.cpp -cflags "-Wno-unknown-pragmas -Wno-unknown-pragmas"
add_files -tb ADSD/ground_truth.h -cflags "-Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas"
add_files -tb ADSD/test_data.h -cflags "-Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas"
add_files -tb ADSD/test_data.txt -cflags "-Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
source "./ADSD/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -format ip_catalog

############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project ADSD-Github-M
set_top classify
add_files ADSD-Github-M/Classifier.cpp
add_files ADSD-Github-M/Classifier.h
add_files ADSD-Github-M/Exp.cpp
add_files ADSD-Github-M/Exp.h
add_files ADSD-Github-M/alphas.h
add_files ADSD-Github-M/bias.h
add_files ADSD-Github-M/svs.h
add_files -tb ADSD-Github-M/AcceleratorTB.cpp
add_files -tb ADSD-Github-M/CordicTB.cpp -cflags "-Wno-unknown-pragmas"
add_files -tb ADSD-Github-M/ground_truth.h -cflags "-Wno-unknown-pragmas"
add_files -tb ADSD-Github-M/test_data.h -cflags "-Wno-unknown-pragmas"
add_files -tb ADSD-Github-M/test_data.txt -cflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
source "./ADSD-Github-M/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -format ip_catalog

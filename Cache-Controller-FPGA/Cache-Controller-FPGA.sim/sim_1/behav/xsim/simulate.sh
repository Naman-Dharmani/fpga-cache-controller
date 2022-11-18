#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2022.1 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Fri Nov 18 17:19:13 IST 2022
# SW Build 3526262 on Mon Apr 18 15:47:01 MDT 2022
#
# IP Build 3524634 on Mon Apr 18 20:55:01 MDT 2022
#
# usage: simulate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# simulate design
echo "xsim TopModuleTB_behav -key {Behavioral:sim_1:Functional:TopModuleTB} -tclbatch TopModuleTB.tcl -protoinst "protoinst_files/bram.protoinst" -view /home/eelfire/iitgn/2_i/ES203/project/id-8/Cache-Controller-FPGA/TopModuleTB_behav.wcfg -log simulate.log"
xsim TopModuleTB_behav -key {Behavioral:sim_1:Functional:TopModuleTB} -tclbatch TopModuleTB.tcl -protoinst "protoinst_files/bram.protoinst" -view /home/eelfire/iitgn/2_i/ES203/project/id-8/Cache-Controller-FPGA/TopModuleTB_behav.wcfg -log simulate.log


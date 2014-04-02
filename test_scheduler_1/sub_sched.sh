#!/bin/bash
#PBS -l walltime=20:00:00
#PBS -j oe
#PBS -N scheduler_1p
#PBS -l nodes=1:ppn=40
#PBS -M lazeroth89@gmail.com
#PBS -m ae
#PBS -V

cd ~/ATLAS/analises/ttH_new/LipTool/AnalysisCode_dilep/test_scheduler_1

./run_scheduler_1proc.sh

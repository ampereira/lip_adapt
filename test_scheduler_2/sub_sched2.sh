#!/bin/bash
#PBS -l walltime=20:00:00
#PBS -j oe
#PBS -N scheduler_2p
#PBS -l nodes=1:ppn=40
#PBS -M lazeroth89@gmail.com
#PBS -m ae
#PBS -V

cd ~/ATLAS/analises/ttH_new/LipTool/AnalysisCode_dilep/test_scheduler_2

./run_scheduler_2proc2.sh

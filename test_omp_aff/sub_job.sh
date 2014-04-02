#!/bin/bash
#PBS -l walltime=30:00:00
#PBS -j oe
#PBS -N ttH_dilep_omp
#PBS -l nodes=1:ppn=40
#PBS -M lazeroth89@gmail.com
#PBS -m ae
#PBS -V

cd ~/ATLAS/analises/ttH_new/LipTool/AnalysisCode_dilep/test_omp_aff

./run_sandy.sh


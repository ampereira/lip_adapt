#!/bin/sh

#export OMP_PROC_BIND=true
#export GOMP_CPU_AFFINITY=$1

echo "TAU $1"

./ttH_dilep_omp --OutputFileName=ttH125_dilepbb_em --SetSystematicsFileName=../../RefSys/Ref.txt --Sample=901 --User="CutTriggerEleMuo=1" --User="lepSample=23" 

#!/bin/sh

# Receives number of dilep iterations as input

unset DILEP_ITER
unset MEASURE_APP
#export OMP_PROC_BIND=true
export DILEP_ITER=$1
export MEASURE_APP=1

case $NUM_THREADS in
1) export CPU_AFF=0
	;;
2) export CPU_AFF=0,1
	;;
4) export CPU_AFF=0,1,2,3
	;;
5) export CPU_AFF=0,1,2,3,4
	;;
8) export CPU_AFF=0,1,2,3,4,5,6,7
	;;
10) export CPU_AFF=0,1,2,3,4,5,6,7,8,9
	;;
16) export CPU_AFF=0,1,2,3,4,5,6,7,8.9,10,11,12,13,14,15
	;;
20) export CPU_AFF=0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19
	;;
32) export CPU_AFF=0,1,2,3,4,5,6,7,8,9,20,21,22,23,24,25,10,11,12,13,14,15,16,17,18,19,30,31,32,33,34,35
	;;
40) export CPU_AFF=0,1,2,3,4,5,6,7,8,9,20,21,22,23,24,25,26,27,28,29,10,11,12,13,14,15,16,17,18,19,30,31,32,33,34,35,36,37,38,39
	;;
*);;
esac
echo $CPU_AFF
for i in {1..4}
do
	./run.sh omp $CPU_AFF
done


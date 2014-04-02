#!/bin/sh

# iterates through the number of threads
for j in 16 20
do
	# iterates through the dilep variations
	for i in 512
	do
		ruby kbest_scheduler.rb $i $j 2
	done
done

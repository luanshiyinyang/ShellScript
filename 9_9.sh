#!/bin/bash
for i in {1..9}
do
	for ((j=1;j<=i;j++))
	do
		printf "%-8s" "$j*$i=$((j*i))"
	done
	echo 
done

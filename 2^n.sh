#!/bin/bash -x

n=2
while [ $n -le 256 ]
do 
	echo "$n"
	n=$(( n+1 ))
done

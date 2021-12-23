#!/bin/bash -x

ispresent=1
randomcheck=$((RANDOM % 2))
if [ $ispresent -eq $randomcheck ]
then
empratehr=20
emphr=8
salary=$(( $emphr*$empratehr ))
else
salary=0
fi

#!/bin/bash -x


toss=$((RANDOM%2))

case $toss in
	0)
	echo "Heads"
	;;
	*)
	echo "Tails" 
	;;
esac

count=1
while [ $count -lt 11 ]
do
	echo $count
	((count++))
done

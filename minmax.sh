#! /bin/bash -x

x=$((RANDOM%899+100))

y=$((RANDOM%899+100))

z=$((RANDOM%899+100))

if [ $x -gt $y ] && [ $x -gt $z ]
then
echo "$x is max no"
else
echo "$x is min no"
fi

if [ $y -gt $x ] && [ $y -gt $z ]
then
echo "$b is max no"
else
echo "$b is min no"
fi

if [ $z -gt $x ] && [ $z -gt $y ]
then
echo "$c is max no"
else
echo "$c is min no"
fi

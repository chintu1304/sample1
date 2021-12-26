#!/bin/bash -x

x=$((RANDOM%20 +10))
y=$((RANDOM%20 +10))
z=$((RANDOM%20 +10))
a=$((RANDOM%20 +10))
b=$((RANDOM%20 +10))
sum=$(( $x + $y + $z + $a + $b ))
avg=$(( $sum / 5 ))
echo $sum
echo $avg



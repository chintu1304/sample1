#!/bin/bash -x

a=$((RANDOM%899 +100))
b=$((RANDOM%899 +100))
c=$((RANDOM%899 +100))
d=$((RANDOM%899 +100))
e=$((RANDOM%899 +100))
f=$((RANDOM%899 +100))
g=$((RANDOM%899 +100))
h=$((RANDOM%899 +100))
i=$((RANDOM%899 +100))
j=$((RANDOM%899 +100))

counter=0
Numbers[((counter++))]="$a"
Numbers[((counter++))]="$b"
Numbers[((counter++))]="$c"
Numbers[((counter++))]="$d"
Numbers[((counter++))]="$e"
Numbers[((counter++))]="$f"
Numbers[((counter++))]="$g"
Numbers[((counter++))]="$h"
Numbers[((counter++))]="$i"
Numbers[((counter++))]="$j"

echo ${Numbers[@]}

Numbers=($a $b $c $d $e $f $g $h $i $j)

if [ "${#Numbers[@]}" -lt 2 ]
then
  echo Incoming numbers is not large enough >&2
  exit 1
fi

largest=${Numbers[0]}
secondGreatest='unset'

for((i=1; i < ${#Numbers[@]}; i++))
do
  if [[ ${Numbers[i]} > $largest ]]
  then
    secondGreatest=$largest
    largest=${Numbers[i]}
  elif (( ${Numbers[i]} != $largest )) && { [[ "$secondGreatest" = "unset" ]] || [[ ${Numbers[i]} > $secondGreatest ]]; }
  then
    secondGreatest=${Numbers[i]}
  fi
done

echo "secondGreatest = $secondGreatest"


if [ "${#Numbers[@]}" -lt 2 ]
then
  echo Incoming numbers is not large enough <&2
  exit 1
fi

smallest=${Numbers[0]}
secondSmallest='unset'

for((i=1; i < ${#Numbers[@]}; i++))
do
  if [[ ${Numbers[i]} < $smallest ]]
  then
    secondSmallest=$smallest
    smallest=${Numbers[i]}
  elif (( ${Numbers[i]} != $smallest )) && { [[ "$secondSmallest" = "unset" ]] || [[ ${Numbers[i]} < $secondSmallest ]]; }
  then
    secondSmallest=${Numbers[i]}
  fi
done

echo "secondSmallest = $secondSmallest"

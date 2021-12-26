#!/bin/bash -x

echo -e "Enter Number"
read n
for((i=2 ; i<=$n/2 ; i++))
do
    answer=$((n%i))
if
   [ $answer -eq 0 ]
then
  echo "$n not  a prime number"
exit
fi
done
echo "$n prime number"


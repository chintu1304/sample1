#!/bin/bash -x

echo "Enter Number: "
read n
function pal
{
	number=$n
	reverse=0
while [ $n -gt 0 ]
do
	a=$(( $n % 10 ))
	n=$(( $n / 10 ))
	reverse=$(( $reverse * 10 + $a ))
done
	echo $reverse
if [ $number -eq $reverse ]
then
    echo "Number is palindrome"
else
    echo "Number is not palindrome"
fi
}
r=`pal $n`
echo "$r"


for ((i=2; i<=$n/2; i++))

do
	p=$(( n%i ))
  	if [ $p -eq 0 ]
  	then
    		echo "$n is not a prime number."
		exit 0	
fi
done
	echo "$n is a prime number."

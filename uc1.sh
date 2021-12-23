#!/bin/bash -x

ispresent=1
randomcheck=$((RANDOM%2))
checkpresent=1
if [ $ispresent -eq $randomcheck ]
then
echo "present"
else
echo "absent"
fi

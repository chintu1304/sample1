#!/bin/bash -x

Result=$((RANDOM%12))

if [ $Result -eq 10 ]
then
    echo HEADS
elif [ $Result -eq 11 ]
then
    echo TAILS
fi


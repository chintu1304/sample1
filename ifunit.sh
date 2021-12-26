#!/bin/bash -x

read -p " enter Input " num
if [ $num -eq 1 ]
then
      echo  "Unit Place"
elif [ $num -eq 10 ]
then
    echo "Ten's Place"
elif [ $num -eq 100 ]
then
     echo "Hundred's Place"
elif [ $num -eq 1000 ]
then
      echo "Thousands place"
fi

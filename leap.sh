#!/bin/bash -x

echo  "Enter YEAR in YYYY :"
read y
if [ $(( y%400)) = 0 ]
then
    echo " Leap Year"
elif [ $(( y%100 )) = 0 ]
then
    echo "Not a Leap Year"
elif [ $(( y%4 )) = 0 ]
then
     echo "Leap Year"
else
     echo "Not a Leap Year"
fi


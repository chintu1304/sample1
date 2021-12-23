#!/bin/bash -x

isPartTime=1
isFullTime=2
maxRateInMonth=100
empRatePerHr=20
numofWorkingDays=20

totalEmpHr=0
totalWorkingDays=0
while [[ $totalEmpHr -lt $maxRateInMonth &&
                 $totalWorkingDays -lt $numofWorkingDays ]]
do
     ((totalWorkingDays++))
      randomcheck=$((RANDOM%3))
       case $randomcheck in
                           $isParTime)
                                    emphrs=4
                                ;;
                            $isFullTime)
                                     emphrs=8
                                ;;
                            *)
                                      emphrs=0
                                ;;
            esac
            totalEmpHr=$(($totalEmpHr+$emphrs))
done
totalsalary=$(($totalEmpHr*$empRatePerHr))


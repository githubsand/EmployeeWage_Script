#!/bin/bash -x
wage_per_hour=20
part_time=4
ispresent=1
check=$((RANDOM%2))
if [ $check -eq $ispresent ]
then
    salary=$(($wage_per_hour*$part_time))
else
    salary=0
fi   
echo "Part Time Salary is:" $salary







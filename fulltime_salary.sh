#!/bin/bash -x
wage_per_hour=20
full_day=8
ispresent=1
check=$((RANDOM%2))
if [ $check -eq $ispresent ]
then
    salary=$(($wage_per_hour*$full_day))
else
   salary=0
fi   
echo "Full Time Employee salary is :" $salary



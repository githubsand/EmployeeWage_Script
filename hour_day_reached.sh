#!/bin/bash -x
ispart_time=0
isfull_time=1
wage_per_hour=20
nu_of_workinghrs=20
total_hour=0
for (( day=1;day<=20;day++ ))
do
   emp_check=$((RANDOM%2))
   case $emp_check in
   $isfull_time) emp_hrs=8;;
   $ispart_time) emp_hrs=4;;
   *) emp_hrs=0;
   esac
   total_hour=$(($total_hours+$emp_hrs))
   if [ $total_hour -eq $nu_of_workinghrs ]
   then
       break
   fi
done
total_salary=$(($total_hour*$wage_per_hour))
echo "TOTAL SALARY :" $total_salary

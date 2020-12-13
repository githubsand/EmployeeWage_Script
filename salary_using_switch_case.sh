#!/bin/bash -x
wage=20
full_time=1
part_time=0
check=$((RANDOM%2))
case $check in
$full_time)emp_hrs=8;;
$part_time)emp_hrs=4;;
*)emp_hrs=0;;
esac
salary=$(($emp_hrs*$wage))
echo $salary

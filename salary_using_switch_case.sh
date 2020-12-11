#!/bin/bash -x
read hour;
wage=20
salary=$(($hour*$wage))
case $hour in
4)echo "Part Time Employee and his Salary is :" $salary;;
8)echo "Full time Employee and his Salarry is:" $salary;;
*)echo " That Person not a Employee of a Company";;
esac

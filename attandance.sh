#!/bin/bash -x
random_var=$((RANDOM%2))
present=1;
if [ $random_var -eq $present ]
then
echo "Employee is present"
else
echo "Employee is not present"
fi


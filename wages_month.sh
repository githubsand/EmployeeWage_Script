#!/bin/bash -x
k=0
zero=0
emprate=20
workinghrs=8
for (( i=1;i<=20;i++ ))
do
ispresent=1
randomcount=$((RANDOM%2));
if [ $ispresent -eq $randomcount ]
then
      k=$(($k+1))
fi
done
if [ $k -gt $zero ]
then
salary=$(($k*$emprate*$workinghrs));
echo $salary;
else $zero
fi



#!/bin/bash -x
declare -A arr
not_present=0
part=1
full=2
for (( i=0;i<=30;i++ ))
do
     check=$((RANDOM%3))
     if [ $not_present -eq $check ]
     then
         arr[i]=$(($not_present*20))
     elif [ $part -eq $check ]
     then
         arr[i]=$((4*20))
     else
         arr[i]=$((8*20))
     fi
done
length=${#arr[@]}
total=0
for (( i=1;i<=length;i++ ))
do
    total=$((${arr[i]}+$total))
    if [ $i -eq $length ]
    then
         arr[31]=$total
    fi
done

echo "day are store :"${!arr[@]}
echo "daily wage are store :"${arr[@]}
echo "Total wages:"${!arr[31]}

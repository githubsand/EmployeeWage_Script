#!/bin/bash -x
notpresent=0;
full=2
part=1
check=$((RANDOM%3))
for (( i=1;i<=30;i++ ))
do
     check=$((RANDOM%3))

   if [ $notpresent -eq $check ]
   then

       arr[i]=$((20*$notpresent)) 

    elif [ $full -eq $check ]
    then
        arr[i]=$((20*8))
    else
       arr[i]=$((20*4))
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

echo ${arr[@]}
echo "Total salary :" ${arr[31]}

#!/bin/bash

Number=(1 4 2 -5 -1 -4 -7 4 8)

n=${#Number[@]}


for (( i=0;i<$n;i++ ))
do

for (( j=0;j<$n;j++))
do

for(( k=0;k<$n;k++))
do

if [ $(( ${Number[i]} + ${Number[j]} + ${Number[k]} )) -eq 0 ]
then
echo "The three number are ${Number[i]} +  ${Number[j]} +  ${Number[k]} = 0"
fi

done

done

done

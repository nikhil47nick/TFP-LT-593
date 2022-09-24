#!/bin/bash

echo "enter a number "
read num
n=1
for (( i=1;i<=$num;i++ ))
do
n=`expr $n \* 2 `
echo "2^$n = $n"
done

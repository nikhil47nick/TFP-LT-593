#!/bin/bash

echo "print a number"
read num
echo -n "Hn =1/1 "
for (( i=2;i<=$num;i++ ))
do
echo -n "+ 1/$i "
done

#!/bin/bash

echo "enter a number"
read num
n=`expr $num / 2 `
p=0
for (( i=2;i<=$n;i++ ))
do
if [ $(( $num % $i )) -eq 0 ]
then
p=1
echo "$num is not prime"
break
fi
done

if [ $p -eq 0 ]
then  
echo "$num is  prime number"
fi

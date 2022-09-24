#!/bin/bash 

echo "enter range of  number"
read num
echo -n "Prime number 0,1"
for (( j=2;j<=$num;j++ ))
do


n=`expr $j / 2 `
p=1
for (( i=0;i<$n;i++ ))
do
if [ $(( $j % $n )) -eq 0 ]
then
p=0
fi
done

if [ $p -eq 1 ]
then  
echo -n ",$j"
p=0
fi
done

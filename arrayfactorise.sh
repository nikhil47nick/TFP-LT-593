#!/bin/bash

echo "enter a number"
read num
n=`expr $num / 2`
count=0
for (( i=1;`expr $i \* $i`<=$num;i++  ))
do
if [ $(( $num % $i )) -eq 0 ]
then

new=`expr $i / 2 `
p=0
for (( j=2;$j<=$new;j++ ))
do
if [ $(( $i % $j )) -eq 0 ]
then
p=1
break
fi
done

if [ $p -eq 0 ]
then  
Number[((count++))]=$i
fi

fi
done

echo ${Number[@]}

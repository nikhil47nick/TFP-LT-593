#!/bin/bash -x


echo "Enter a number"
read num

function palin()
{
temp=$num
sum=0

while [ $num -gt 0 ]
do
r=$(( $num % 10 ))
sum=$(( `expr $sum \* 10` + $r ))
num=$(( $num / 10 ))

done

if [ $temp -eq $sum ]
then
echo "number is palidrome"
else
echo "number is not palindrome"
fi

}

palin $num

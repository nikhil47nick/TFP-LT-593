#!/bin/bash

echo "Enter number : "
read a
echo "Enter Second number : "
read b
echo "Enter third number : "
read c

one=$(( a + b * c  ))
two=$(( a % b + c ))
thre=$(( c + a / b ))
four=$(( a * b + C ))

max=$one
min=0

if [ $one -gt $two ]
then
min=$two
elif [ $min -gt $thre ]
then
min=$thre 
elif [ $min -gt $four ]
then
min=$four
elif [ $max -lt $thre ]
then
max=$thre
elif [ $max -lt $four ]
then
max=$four
else
echo ""
fi

echo "Max : $max min : $min"


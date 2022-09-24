#!/bin/bash -x


min=0
ran1=$((RANDOM % 899 + 100))
max=$ran1
for ((i=0;i<4;i++))
do
ran=$((RANDOM % 899 + 100))


if [ $ran1 -gt $ran ]
then
min=$ran
else
ran1=$ran
max=$ran
min=$ran1
fi

done
echo "Min : $min and Max: $max"

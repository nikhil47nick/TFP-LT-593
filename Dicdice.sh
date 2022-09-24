#!/bin/bash -x


declare -A Dice

Number=(0 0 0 0 0 0)

for ((i=1;$i>0;i++))
do
n=$((RANDOM % 6 + 1))
Dice[$i]=$n
Number[n]=$(( ${Number[n]} + 1))

for ((j=0;$j<6;j++))
do

if [ ${Number[$j]} -eq 10 ]
then
i=0
break
fi
done

done


min=${Number[0]}
max=${Number[0]}
for (( k=0;k<6;k++ ))
do


if [ ${Number[k]} -gt $max ] 
then
max=${Number[k]}
elif [ ${Number[k]} -lt $min  ] 
then
min=${Number[l]}
fi

done

echo "Min is $min"
echo "Max is $max"

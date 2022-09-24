#!/bin/bash
count=0
for (( i=0;i<10;i++ ))
do
Number[ ((count++)) ]=$(( RANDOM % 899 + 100 ))
done

echo ${Number[@]}

n=${#Number[@]}

function arrSort()
{
temp=0

for (( j=0; j<$n; j++ ))
do

for (( k=0;k<$n;k++ ))
do

if [ ${Number[j]} -lt ${Number[k]} ]
then
temp=${Number[j]}
Number[j]=${Number[k]}
Number[k]=$temp
fi

done

done

  echo ${Number[@]}
echo "Second larges ${Number[$(( $n - 2 ))]}"
echo "Second smallest ${Number[1]}"
}

arrSort ${Number[@]}


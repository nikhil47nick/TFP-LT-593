#!/bin/bashC
count=0
for (( i=0;i<10;i++ ))
do
Number[ ((count++)) ]=$(( RANDOM % 899 + 100 ))
done

n=${#Number[@]}

function secmin()
{

min=${Number[0]}
secondMin=${Number[1]}
for (( j=0; j<$n; j++ ))
do

if [ ${Number[j]} -lt  $min ]
then
secondMin=$min
min=${Number[j]}
fi

done

for (( k=0;k<$n;k++ ))
do
if [ ${Number[k]} -lt $secondMin -a ${Number[k]} -ne $min ]
then
secondMin=${Number[k]}
fi
done

  echo "Second minimum : $secondMin"
}


function secmax()
{

max=${Number[0]}
secondMax=${Number[1]}
for (( j=0; j<$n; j++ ))
do

if [ ${Number[j]} -gt  $max ]
then
secondMax=$max
max=${Number[j]}
fi

done

for (( k=0;k<$n;k++ ))
do
if [ ${Number[k]} -gt $secondMax -a ${Number[k]} -ne $max ]
then
secondMax=${Number[k]}
fi
done

  echo "Second maximum : $secondMax"
}

secmin ${Number[@]}
secmax ${Number[@]}

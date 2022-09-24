#!/bin/bash
h=0
t=0

while [ $h -le 11 -o $t -le 11 ]
do

if [ $((RANDOM % 2)) -eq 0 ]
then
h=$(( $h + 1 ))
else
t=$(( $t + 1 ))
fi

if [ $h -eq 11 ]
then
echo "Head win"
break
elif [ $t -eq 11 ]
then
echo "Tail win"
break
fi


done

#!/bin/bash
bet=0
won=0
mon=100
while [ $mon -gt 0 -o $mon -le 200 ]
do
bet=$(( $bet + 1 ))
if [ $((RANDOM % 2)) -eq 0 ]
then
won=$(( $won + 1 ))
mon=$(( $mon + 1 ))
else
mon=$(( $mon - 1 ))
fi

if [ $mon -eq 0 ]
then
echo "Total Bet : $bet  You Broke:(  your money : $mon"
break
elif [ $mon -eq 200 ]
then
echo "Total Bet : $bet  you Won the game your money : $mon"
break
fi


done

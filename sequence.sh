#!/bin/bash 

echo "RandonSingle digit : " $((RANDOM % 10))

echo "Random DICE number : " $((RANDOM % 6 + 1))

echo "Addition of two random DICE number" $(( ((RANDOM %6 +1)) + ((RANDOM % 6 +1)) ))

tot=0
for ((i=0;i<5;i++))
do
ran=$((RANDOM % 89 + 10))
tot=`expr $tot + $ran`
done
echo "Sum of number: $tot"
echo "Avarage of number  : $(( $tot  / 5  ))" 


echo "1ft = 12in then 42in = $((42/12))ft"

length=`echo | awk '{print 60.0 * 0.3}'`
width=`echo | awk '{print 40.0 * 0.3}'`
echo "Rectangular plot of 60ft x 40ft in meters is $length x $width"


area=$(($length * $width))
acre=`echo $area | awk '{print 25 * ($area * 0.000234)}'`
echo "Total area in 25 plot of  Acre : $acre"  


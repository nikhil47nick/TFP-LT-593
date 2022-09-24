#!/bin/bash -x

echo "print year :" 
read year
if [ $year -ge 1000 ]
then
leap=$(($year%4))
if [ $leap -eq 0 ]
then
echo "year is leap year"
else
echo "year is not leap year"
fi
else
echo "please enter a year"
fi

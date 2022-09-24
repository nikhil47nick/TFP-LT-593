#!/bin/bash

echo "Enter a number : "
read num

echo "1 for Feet to inch"
echo "2 for Feet to meter"
echo "3 for inch to feet"
echo "4 for meter to feet"
read n

case $n in
1 ) num=`expr $num \* 12` 
;;
2  ) num=`expr $num  \* 0.3048`
;;
3 ) num=`expr $num / 12` 
;;
4 ) num=`expr $num \* 3.2` 
;;
esac

echo $num


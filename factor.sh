#!/bin/bash

echo "print a number"
read num
new=1
echo -n "$num Factorial - $num! =1"
for (( i=2;i<=$num;i++ ))
do
new=`expr $new \*  $i`
echo -n " * $i"
done
echo ""
echo   "$num! =$new"

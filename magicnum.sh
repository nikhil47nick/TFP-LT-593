#!/bin/bash  


echo "Think number between 1 to 100"
ini=0
end=100
num=50

while [ $num > 1 ]
do

echo "if number is bigger than $num press enter y else n if this is the number press m"
read mg

case $mg in
"Y" ) ini=$num
;;
"y" ) ini=$num
;;
"N" ) end=$num
;;
"n" ) end=$num
;;
"M" ) echo "The number is $num"
break
;;
"m" ) echo "The number is $num"
break
;;
* ) echo "please enter Y or N or M"
;;
esac

num=`expr $(( $ini + $end )) / 2`

done

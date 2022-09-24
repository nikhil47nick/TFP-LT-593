#!/bin/bash 

echo "Enter 2 for convert  Farehite to Celsius"
echo "Enter 1 for convert Celsius Farenhite"
read deg
function myfun()
{

echo "Enter number temprature "
read temp 

case $deg in
1 ) if [ $deg -eq 1 -a $temp -ge 0 -a $temp -le 100 ]
then
echo $temp | awk '{print ( $temp * ( 9 / 5 ) ) + 32 }'
fi
;;
2 ) if [ $deg -eq 2 -a $temp -ge 32 -a $temp -le 212 ]
then
echo $temp | awk '{print ($temp - 32) * ( 5 / 9 )}'
fi
;;
* ) echo "Enter 1 or 2 and please enter with in boiling and freezing point"
;;
esac

}

myfun $deg 

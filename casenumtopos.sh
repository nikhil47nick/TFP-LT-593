#!/bin/bash

echo "Enter a number : "
read num

case $num in
1 ) echo "Unit"
;;
10  )echo "Ten"
;;
100 )echo "Hundred"
;;
1000 )echo "Thausand"
;;
10000 )echo "Ten Thausand"
;;
esac

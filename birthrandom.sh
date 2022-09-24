#!/bin/bash

function birthMonth()
{
Max_count=50
count=0
janCount=0
febCount=0
marchCount=0
aprilCount=0
mayCount=0
juneCount=0
julyCount=0
augustCount=0
septCount=0
octCount=0
novCount=0
decCount=0

while [ true ]
do

if [ count == Max_count ]
then
break
fi
randomBirthMonth = $((RANDOM % 12 + 1))

case $randomBirthMonth in
1 ) janCount++
;;
2 ) febCount++
;;
3 ) marchCount++
;;
4 ) aprilCount++
;;
5 ) mayCount++
;;
6 ) juneCount++
;;
7 ) julyCount++
;;
8 ) augustCount++
;;
9 ) septCount++
;;
10 ) octCount++
;;
11 ) novCount++
;;
12 ) decCount++
;;
* ) break
;;
esac
count++
done

declare -A  mapOfBirhDayMonths
    mapOfBirhDayMonths.set(1,janCount);
    mapOfBirhDayMonths.set(2,febCount);
    mapOfBirhDayMonths.set(3,marchCount);
    mapOfBirhDayMonths.set(4,aprilCount);
    mapOfBirhDayMonths.set(5,mayCount);
    mapOfBirhDayMonths.set(6,juneCount);
    mapOfBirhDayMonths.set(7,julyCount);
    mapOfBirhDayMonths.set(8,augustCount);
    mapOfBirhDayMonths.set(9,septCount);
    mapOfBirhDayMonths.set(10,octCount);
    mapOfBirhDayMonths.set(11,novCount);
    mapOfBirhDayMonths.set(12,decCount);

    echo ${mapOfBirhDayMonths[@]}
}
birthMonth();

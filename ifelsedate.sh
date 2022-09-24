#!/bin/bash 

first_date=`date -d "03-20" +%s`
second_date=`date -d "06-20" +%s`
today=`date +%m-%d`
today=`date -d $today +%s`

if [ $first_date -ge $today -a $second_date -le $today ]
then
echo "True"
else
echo "Flase"
fi

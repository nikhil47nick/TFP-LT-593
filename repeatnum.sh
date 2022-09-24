#!/bin/bash

count=0
for (( i=0;i<100;i++ ))
do

if [ $(( $i % 10  )) -eq $(( $i / 10 )) ]
then

Number[(( count++ ))]=$i

fi

done

echo ${Number[@]}

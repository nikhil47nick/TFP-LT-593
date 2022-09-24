#!/bin/bash -x

count=0
Fruit[((count++))]="Apple"
Fruit[((count++))]="Banana"
Fruit[((count++))]="Orange"

echo ${Fruit[@]}

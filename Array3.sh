#!/bin/bash

index_Array=(1 2 3 4 5 6 hello 21 433)

echo ${index_Array[@]}
echo ${index_Array[6]}
echo ${index_Array[*]}
echo ${index_Array[8]}

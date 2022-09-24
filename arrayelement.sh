#!/bin/bash -x

array=(apple bat cat dog elephent frog)

#print first element
echo ${array[0]}
echo ${array:0}

#Disaplay all elements
echo ${array[@]}
echo ${array[@]:0}

#Display all elements execpt first one
echo ${array[@]:1}

#Display elements in a range
echo ${array[@]:1:4}

#length of first element
echo ${#array[0]}
echo ${#array}

#numberof elements
echo ${#array[*]}
echo ${#array[@]}

#Replacig substring
echo ${array[@]//a/A}

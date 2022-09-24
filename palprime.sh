#!/bin/bash -x


echo "Enter a number"
read num

function palin()
{
temp=$num
sum=0
while [ $num -gt 0 ]
do
r=$(( $num % 10 ))
sum=$(( `expr $sum \* 10` + $r ))
num=$(( $num / 10 ))
done
if [ $temp -eq $sum ]
then
echo "palindrome"
prime $sum
else
echo "not  palindrome"
fi
}

function prime()
{
n=`expr $num / 2 `
p=0
for (( i=2;i<=$n;i++ ))
do
if [ $(( $num % $i )) -eq 0 ]
then
p=1
echo "$num is not prime"
break
fi
done

if [ $p -eq 0 ]
then  
echo "prime numnber"
else 
echo "not a prime number"
fi

}
prime $num 

palin $num 




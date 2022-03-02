#!/bin/bash

echo "Enter 1st Number"
read num1
echo "Enter 2nd Number"
read num2

x=num1
y=num2

i=0

function pal()
{
	while [[ $a -gt 0 ]]
	do
		reminder=`expr $a % 10`
		reverse=`expr $reverse \* 10 + $reminder`
		a=`expr $a / 10`
	done

	if [[ $p -eq $reverse && $p -gt 10 ]]
	then
		((b++))
		pal[$b]=$p
		echo "$p is palindrome"
	else
		echo "$p is not palindrome"
	fi
}

while [[ i -lt 100 ]]
do
	((i++))
	a=$i
	p=$i
	reverse=0
	pal

done

echo "the palindrome numbers are: " ${pal[@]}
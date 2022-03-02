#!/bin/bash -x

echo "enter starting number"
read n

echo "Enter range"
read m

a=`expr $n + $m`
b=`expr $a - 1`

for((n; n<=$b; n++))
do
	echo $n

	d=2
	r=1

	while [[ $d -lt $n && $r -ne 0 ]]
	do
        r=`expr $n % $d`
	echo "Remainder is: $r"
        d=`expr $d + 1`
	done

	if [[ $r -eq 0 ]]
	then
		echo "$n is not a prime number"
	else
		echo "$n is a prime number"
	fi
done

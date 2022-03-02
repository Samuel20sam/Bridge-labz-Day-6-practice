#!/bin/sh -x

echo "Enter power value: "
read n
m=2
i=1
p=0

while (( i <= n )) && (( $p <= 128 ))

do
	p=$(($m**$i));
	echo $p
	((i++))
done

#!/bin/sh -x

echo "Enter power value: "
read n
m=2

for ((i=1; i<=n; i++));
do
	p=$(($m**$i));
	echo $p
done

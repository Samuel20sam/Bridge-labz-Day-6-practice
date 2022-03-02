#!/bin/sh -x

echo "1. Convert Celsius temperature into Fahrenheit"
echo "2. Convert Fahrenheit temperatures into Celsius"
echo "Select your choice (1 or 2): "

read choice

function convert()
{
	case $1 in
		1 )
			# formula Tf=(9/5)*Tc+32
			tf=$(echo "scale=2;((9/5) * $tc) + 32" |bc)
			echo "$tc C = $tf F"
		;;
		2 )
			# formula Tc=(5/9)*(Tf-32)
			tc=$(echo "scale=2;(5/9)*($tf-32)" |bc)
			echo "$tf = $tc"
	esac
}

if [ $choice -eq 1 ]
then
	echo -n "Enter temperature (C) : "
	read tc
	convert $choice
elif [ $choice -eq 2 ]
then
	echo -n "Enter temperature (F) : "
	read tf
	convert $choice
else
	echo "Please select 1 or 2 only"
	exit
fi

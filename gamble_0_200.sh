#!/bin/sh -x

echo "welcome to gambling, either win 200 or go broke"

a=100
i=1

while [[ ($i -ge 0) && ($a -lt 200 && $a -gt 0) ]]
do
	x=$((RANDOM%2))
	echo "Call is: $x"

if (( $x == 1 ));
then
	a=$(($a+1));
	echo "gambler wins"
fi

if (( $x == 0 ));
then
	a=$(($a-1));
	echo "gambler loses"
fi
	echo "Gambler has Rs $a in account"

if (( $a == 200 ));
then
	echo "Gambler wins the game with Rs $a"
fi

if (( $a == 0 ));
then
	echo "Gambler loses and is broke with Rs $a"
fi
	((i++))
done

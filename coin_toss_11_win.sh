#!/bin/sh +x

echo "welcome to head or tail game, player with '11 win games' wins the set"

a=0
b=0
i=1

while [[ ($i -ge 0) && ($a -lt 11 && $b -lt 11) ]]
do
	x=$((RANDOM%2))
	echo "Call is: $x"

if (( $x == 1 ));
then
	a=$(($a+1));
	echo "head wins"
fi

if (( $x == 0 ));
then
	b=$(($b+1));
	echo "tail wins"
fi
	echo "Head has won $a games"
	echo "Tail has won $b games"

if (( $a == 11 ));
then
	echo "Head wins the game with $a wins"
fi

if (( $b == 11 ));
then
	echo "Tail wins the set with $b wins"
fi
	((i++))
done

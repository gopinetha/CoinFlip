#!/usr/bin/bash

echo "fliping a coin"

x=$((RANDOM%2))

if [ $x -eq 1 ];
then
	echo "heads"
else
	echo "Tails"
fi

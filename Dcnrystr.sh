#!/usr/bin/bash

echo "fliping a coin multipe times"

cont=0;
set -x
for (( i=0;i<10;i++))
do

x=$((RANDOM%2))
if [ $x -eq 1 ];
then
heads=heads
Flip["$i"]="${heads}"
	echo "heads"
	$((cont++)) 
else
tails=tails
	Flip["$i"]="${tails}"
	echo "Tails"
fi

done
echo ${Flip[@]}
 echo $cont
 #win=$(( ($cont*100) / 10 ))
 percent=$(( $cont*10)) ;
 echo $percent
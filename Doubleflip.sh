#!/usr/bin/bash

echo "double fliping a coin multipe times"

bothHeads=0;
headTail=0;
tailhead=0;
set -x

for (( i=0;i<10;i++))
do

	flip1=$((RANDOM%2))
	flip2=$((RANDOM%2))
	if (( $flip1 == 1 && $flip2 == 1 ));
	then
		heads=h,h
		Flip["$i"]="${heads}"
		echo "heads,heads"
		$((bothHeads++)) 
	elif (( $flip1 == 1 && $flip2 == 0 ));
	then
		ht=h,t
		Flip["$i"]="${ht}"
		echo "heads,tails"
		$((headTail++))
	elif (( $flip1 == 0 && $flip2 == 1 ));
	then
		th=t,h	
		Flip["$i"]="${th}"
		echo "tails,heads"
		$((tailhead++))
	else
		tt=t,t
		Flip["$i"]="${tt}"
		echo "tails,tails"
	fi

done
	echo ${Flip[@]}
	echo $bothHeads
	#win=$(( ($bothHeads*100) / 10 ))
	percent=$(( $bothHeads*10)) ;
	echo $percent
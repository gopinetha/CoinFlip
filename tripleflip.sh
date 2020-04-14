#!/bin/bash
set -x
echo "triple flip coin multiple times"

contTplhd=0;
contDblehds=0;

triplehead=111
tripletail=000
doubleheadtail=110
headdoubletail=100
taildoublehead=011
doubletailhead=001
headtailhead=101
tailheadtail=010

for ((i=0;i<10;i++))
do
	flip1=$((RANDOM%2))
	flip2=$((RANDOM%2))
	flip3=$((RANDOM%2))

	three="$flip1$flip2$flip3"
	echo $three

		case $three in
			$triplehead)
				result=H,H,H
				$((contTplhd++))
				Array[$i]="${result}"
				;;
			$tripletail)
				result=T,T,T
				Array[$i]="${result}"
				;;
			$doubleheadtail)
				result=H,H,T
				$((contDblehds++))
				Array[$i]="${result}"
				;;
			$headdoubletail)
				result=H,T,T
				Array[$i]="${result}"
				;;
			$taildoublehead)
				result=T,H,H
				$((contDblehds++))
				Array[$i]="${result}"
				;;
			$doubletailhead)
				result=T,T,H
				Array[$i]="${result}"
				;;
			$headtailhead)
				result=H,T,H
				$((contDblehds++))
				Array[$i]="${result}"
				;;
			$tailheadtail)
				result=T,H,T
				Array[$i]="${result}"
				;;
		esac

done

percent=$(( ($contDblehds+$contTplhd)*10 ))

echo ${Array[@]}

echo $percent
#!/usr/bin/bash

echo "fliping a coin multipe times"

arr[1]=heads;
arr[2]=tails;

arr[3]=bothHeads;
arr[4]=headTail
arr[5]=tailhead
arr[6]=tailsheads

arr[7]=triplehead
arr[8]=tripletail
arr[9]=doubleheadtail
arr[10]=headdoubletail
arr[11]=taildoublehead
arr[12]=doubletailhead
arr[13]=headtailhead
arr[14]=tailheadtail
for (( i=1;i<=14;i++))
do
cont[$i]=0;
done

for (( i=0;i<30;i++))
do

x=$((RANDOM%14 +1 ))
	if [ $x -eq 1 ];
	then
		cont[1]=$((${cont[1]}+1))
	elif (( $x == 2 ))
	then
		cont[2]=$((${cont[2]}+1))
		
	elif(( $x == 3 ))
	then
		cont[3]=$((${cont[3]}+1))
	
	elif [ $x -eq 4 ]
	then
		cont[4]=$((${cont[4]}+1))
	
	elif [ $x -eq 5 ]
	then
		cont[5]=$((${cont[5]}+1))
	
	elif [ $x -eq 6 ]
	then
		cont[6]=$((${cont[6]}+1))
	
	elif [ $x -eq 7 ]
	then
		cont[7]=$((${cont[7]}+1))
	
	elif [ $x -eq 8 ]
	then
		cont[8]=$((${cont[8]}+1))
	
	elif [ $x -eq 9 ]
	then
		cont[9]=$((${cont[9]}+1))
	
	elif [ $x -eq 10 ]
	then
		cont[10]=$((${cont[10]}+1))
	
	elif [ $x -eq 11 ]
	then
		cont[11]=$((${cont[11]}+1))
	
	elif [ $x -eq 12 ]
	then
		cont[12]=$((${cont[12]}+1))
	
	elif [ $x -eq 13 ]
	then
		cont[13]=$((${cont[13]}+1))
	
	else
		cont[14]=$((${cont[14]}+1))
fi

done
max=0;idx=0;
for((i=1;i<=14;i++))
do
	if ((${cont[$i]}>max))
	then
		max=${cont[$i]}
		idx=$i;
	fi;
done 
echo "the maximum repeated combination  is "${arr[$idx]}
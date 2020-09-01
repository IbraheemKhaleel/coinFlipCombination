#!/bin/bash -x
i=0
HHH=0
TTT=0
read -p "Enter how many times the coin should be flipped " n
while [[ $((i)) -lt $((n)) ]]
do
	random1=$((RANDOM%2))
	random2=$((RANDOM%2))
	random3=$((RANDOM%2))
	if [[ $((random1)) -eq 0 && $((random2)) -eq 0 && $((random3)) -eq 0  ]]
	then
        	echo "It is a triplet head "
		((HHH++))
	elif [[ $((random1)) -eq 1 && $((random2)) -eq 1 && $((random3)) -eq 1 ]]
	then
        	echo "it is a triplet tail "
		((TTT++))
	fi
	((i++))
done
percentageOfHHH=$(((HHH*100)/n))
percentageofTTT=$(((TTT*100)/n))
echo "The triplet combination of head is $HHH and tail is $TTT "
echo "Percentage of triplet head and triplet tail is $percentageOfHHH % and $percentageofTTT % respectively"

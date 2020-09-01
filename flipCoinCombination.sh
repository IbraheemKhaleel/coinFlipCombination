#!/bin/bash -x
i=0
HH=0
TT=0
read -p "Enter how many times the coin should be flipped " n
while [[ $((i)) -lt n ]]
do
	random1=$((RANDOM%2))
	random2=$((RANDOM%2))
	if [[ $((random1)) -eq 0 && $((random2)) -eq 0  ]]
	then
        	echo "It is a doublet head "
		((HH++))
	elif [[ $((random1)) -eq 1 && $((random2)) -eq 1 ]]
	then
        	echo "it is a doublet tail "
		((TT++))
	else
		echo "It is a tail and head "
		((T++))
		((H++))
	fi
	((i++))
done
percentageOfHH=$(((HH*100)/n))
percentageofTT=$(((TT*100)/n))
echo "The doublet combination of head is $HH and tail is $TT "
echo "Percentage of doublet head and doublet tail is $percentageOfHH % and $percentageofTT % respectively"


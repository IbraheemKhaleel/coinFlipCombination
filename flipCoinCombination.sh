#!/bin/bash -x
T=0
H=0
i=0
read -p "Enter how many times the coin should be flipped " n
while [[ $((i)) -lt n ]]
do
	random=$((RANDOM%2))
	if [[ $((random)) -eq 0 ]]
	then
        	echo "It is a head "
		((H++))
	else
        	echo "it is a tail "
		((T++))
	fi
	((i++))
done
percentageOfH=$(((H*100)/n))
percentageofT=$(((T*100)/n))
echo "The singlet combination of head is $H and tail is $T "
echo "Percentage of head and tail is $percentageOfH % and $percentageofT % respectively"

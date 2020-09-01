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
	elif [[ $((random1)) -eq 0 && $((random2)) -eq 0 && $((random3)) -eq 1 ]]
	then
		echo "doublet head and singlet tail "
		((HH++))
		((T++))
	elif [[ $((random1)) -eq 1 && $((random2)) -eq 1 && $((random3)) -eq 0 ]]
        then
                echo "doublet tail and singlet head "
                ((TT++))
                ((H++))
	elif [[ $((random1)) -eq 1 && $((random2)) -eq 0 && $((random3)) -eq 0 ]]
        then
                echo "doublet head and singlet tail "
                ((HH++))
                ((T++))

	elif [[ $((random1)) -eq 0 && $((random2)) -eq 1 && $((random3)) -eq 1 ]]
        then
                echo "doublet tail and singlet head "
                ((TT++))
                ((H++))
	elif [[ $((random1)) -eq 1 && $((random2)) -eq 0 && $((random3)) -eq 1 ]]
        then
                echo "doublet tail and singlet head "
                ((TT++))
                ((H++))
	elif [[ $((random1)) -eq 0 && $((random2)) -eq 1 && $((random3)) -eq 0 ]]
        then
                echo "doublet head and singlet tail "
                ((HH++))
                ((T++))
	fi
	((i++))
done
percentageOfH=$(((H*100)/(n)))
percentageofT=$(((T*100)/(n)))
echo "The singlet combination of head is $H and tail is $T "
echo "Percentage of singlet head and singlet tail is $percentageOfH % and $percentageofT % respectively"
percentageOfHH=$(((HH*100)/(n)))
percentageofTT=$(((TT*100)/(n)))
echo "The doublet combination of head is $HH and tail is $TT "
echo "Percentage of doublet head and doublet tail is $percentageOfHH % and $percentageofTT % respectively"
percentageOfHHH=$(((HHH*100)/(n)))
percentageofTTT=$(((TTT*100)/(n)))
echo "The triplet combination of head is $HHH and tail is $TTT "
echo "Percentage of triplet head and triplet tail is $percentageOfHHH % and $percentageofTTT % respectively"

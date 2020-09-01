#!/bin/bash -x
random=$((RANDOM%2))
if [[ $((random)) -eq 0 ]]
then
        echo "It is a head "
else
        echo "it is a tail "
fi

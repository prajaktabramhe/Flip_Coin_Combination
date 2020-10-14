#!/bin/bash
echo "WELCOME TO FLIP COIN COMBINATION"

a=$(( RANDOM%2 ));
if [ $a == 1 ];
then
        echo "Heads";
else
        echo "Tails";
fi

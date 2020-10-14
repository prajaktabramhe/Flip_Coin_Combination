#!/bin/bash
echo "WELCOME TO FLIP COIN COMBINATION"


head=0;
tail=0;
read -p "Enter number of flip required " n
for (( i=0; i<n; i++ ))
do
	a=$(( RANDOM%2 ));
	if [ $a == 1 ];
	then
         	head=$(($head+1))
	else
        	tail=$(($tail+1))
	fi
	d=$(( RANDOM%4 ));
	case $d in
		0) hh=$(($hh+1))
			;;
		1) ht=$(($ht+1))
			;;
		2) th=$(($th+1))
			;;
		3) tt=$(($tt+1))
			;;
		*) echo "Went  wrong"
			;;
	esac
done

echo "Number of head win" $head
echo "Number of tail win" $tail
echo "Number of hh combination " $hh
echo "Number of ht combination " $ht
echo "Number of th combination " $th
echo "Number of tt combination " $tt

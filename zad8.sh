#!/bin/bash


if test $# -eq 0
then
	echo "brak argumentow"
	exit 1
fi

for k in ./*
do
	if [ -d "$k" ]
	then
		wyst=0
		for el in "$k"/*
		do
			nazwa=`echo "$el" | cut -d / -f 2`
			#echo "$nazwa"
			if [ "$nazwa" = "$1" ]
			then
				wyst=1
				echo "Plik $1 znajduje sie w katalogu $k"
				break
			fi

		done
		[ $wyst = 0 ] && echo "Plik $1 nie znajduje sie w katalogu $k"
	fi
done



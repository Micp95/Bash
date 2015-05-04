#!/bin/bash



if test $# -eq 0
then
	echo "brak plikow do wyszukiwania"
	exit 1
fi

while [ $# -gt 0 ]
do
	for i in ./"$1"/*
	do
		if [ -d "$i" ]
		then
			echo "$i"
			licznik=0
			for p in "$i"/*
			do
				[ -f "$p" ] && let licznik=licznik+1
			done
			licznik=`ls "$i" | wc -l`
			echo "ilosc plikow: $licznik"
		fi
	done

	shift
done


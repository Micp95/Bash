#!/bin/bash



if test $# -eq 0
then
	echo "brak plikow do wyszukiwania"
	exit 1
fi

while [ $# -gt 0 ]
do
	for i in ./*/"$1"
	do
		[ -f "$i" ] && echo "Plik o nazwie $1 znajduje sie w folderze: $i"
	done

	shift
done


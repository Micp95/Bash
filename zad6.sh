#!/bin/bash



if test $# -eq 0
then
	echo "brak argumentow"
	exit 1
fi

if [ -e "$1" ]
then
	echo "Plik o podanej nazwie istnieje"
else
	touch "$1"
	data=`date`
	tekst="Plik utworzony $data"
	`echo "$tekst" > "$1"`
	echo "Plik zostal stworzony"
fi

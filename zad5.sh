#!/bin/bash



if test $# -eq 0
then
	echo "brak plikow do wyszukiwania"
	exit 1
fi

if [ -d $1 ]
then
	echo "Zawartosc katalogu:"
	for k in "$1"/*
	do
		[ -e "$k" ] &&  echo "$k"
	done
elif [ -e $1 ]
then
	tekst=`ls -l $1`
	echo "Plik:"
	echo "$tekst"
else
	echo "Plik nie istnieje"
fi

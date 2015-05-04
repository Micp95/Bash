#!/bin/bash


if test $# -eq 1
then
	echo "brak argumentow"
	exit 1
fi

data=`date`
case "$1" in
"start")
	$2 &
	tekst="proces $2 wystartowal $data"
	echo "$tekst" >> "log"
	exit
;;
"stop")
	pkill -15 "$2"
	tekst="Proces $2 zatrzymano $data"
	echo "$tekst" >> "log"
;;
*)
	echo "zle polecenie"
;;
esac

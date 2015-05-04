#!/bin/bash


while [ $# -gt 0 ] #czy wieksze (gt)
do
	for el in "$1"/*.o
	do
		echo "Czy chcesz usunac ${el} ? (T/N)";
		read potw
		[ $potw = "t" ] && rm -f $el #skrocony if
	done
	shift
done


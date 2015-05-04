#!/bin/bash


if test $# -eq 0
then
	echo "brak folderu"
	exit 1
fi

[ ! -d "$1" ] && (mkdir "$1" 2>/dev/null || exit 2)
echo "Rozszerzenie: "
read roz
for i in *."$roz" ]
do
	[ -f "$i" ] && mv "$i" "$1"
done

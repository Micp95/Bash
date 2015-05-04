#!/bin/bash

touch tmp;

plikg=tmp
for plik in *
do

	if [ $plik -ot $plikg ]
	then
		plikg=$plik
	fi
done

echo "Najstarszym plikiem jest: $plikg"

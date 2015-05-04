#!/bin/bash


for k in *
do
	if [ -d "$k" ]
	then
		for p in "$k"/*.tmp
		do
			if [ $p -ot "c.time" ]
			then
				echo " rm $p " >> usuniete
			fi
		done
	fi

done

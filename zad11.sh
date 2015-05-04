#!/bin/bash

#znalezienie otwrtych portow/pokazanie ktore porty sa otwarte

if [ -z "$1" ]
then
	echo "blad"
	exit 1
fi

interval=0;

function break_script
{
	interval=1;
}

trap break_script SIGINT; #wyjatek
max=2;
for (( k = 1; k < 16; k++ ))
do
	let max=max*2
done

echo $max
address=$1
for (( port = 1; port < $max ; port++ ))
do
	if nc -z -w 1 "$address" $port < /dev/null
	then
		echo "Port $port, dla adresu $address jest otwarty."
	fi
	[ $interval -eq 1 ] && break;
done

exit 0

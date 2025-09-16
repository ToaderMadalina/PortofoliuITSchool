#! /bin/bash

if [ "$#" -ne 1 ];then
	echo "Scriptul asteapta un argument"
	echo "$0 Madalina"
	exit 1
fi

if [ -z "$NUME_CURSANT" ];then
	echo "Nu exista"
	export NUME_CURSANT=$1


else
	echo "Exista"
fi

echo "Numele cursantului este $NUME_CURSANT"


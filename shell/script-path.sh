#! /bin/bash

CALE=$1

if [ -z "$CALE" ]; then
	echo "NU ai introdus calea catre executabil."
	echo "Exemplu de utilizare script:"
	echo "$0 /cale/catre/fisier/script.sh"
	exit 1
fi

if [ ! -f "$CALE" ]; then
	echo "Fisierul nu exista sau este director"
	exit 2
fi

if [! -x "$CALE" ]; then
	echo "Nu avem drept de executie."
	exit 3
fi


echo "Exit code-ul ultimei comenzi"
if bash $CALE; then 
	echo "We are really good"
	exit 0
else
	echo "Scriptul a iesit cu eroare"
	exit 4
fi


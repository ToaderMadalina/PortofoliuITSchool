#! /bin/bash

# Script de bash care monitorizeaza aplicatia si o reporneste in caz de eroare

monitorizare=$(pgrep hello | echo $?)

echo $monitorizare

while true; do
	pgrep hello
	monitorizare=$?
	echo $monitorizare
	if [ "$monitorizare" -eq 0 ]; then
		sleep 5
	else
		echo " Voi reporni hello.sh!"
		nohup ./hello.sh &
	fi
done


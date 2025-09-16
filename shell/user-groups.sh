#! /bin/bash

#Faceti un script de shell care citeste linise cu linie un fisier cu nume de utilizatori si pentru fiecare utilizator afiseaza grupurile in care acesta se afla

cat utilizatori.txt | while read utilizator; do
	if [ -z $utilizator ]; then
		echo "rand gold"
		continue
	fi

	if ! id $utilizator &> /dev/null; then
		echo "Utilizatorul nu exista!"
		continue
	fi

	echo "Utilizatorul $utilizator este in grupurile: "
	groups $utilizator
done


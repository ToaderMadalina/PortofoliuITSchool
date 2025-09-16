#! /bin/bash

incercari_ramase=3
parola_corecta="itschool"
user_corect="cursant"
este_logat_cu_succes="NO"

if ls -al baza-date.db &> /dev/null;then
	echo "Cont blocat"
	exit 12
fi

while [ $incercari_ramase -gt 0 ];do
	read -p "User: " username
	read -p "Parola: " parola

	if [[ $username == $user_corect && $parola == $parola_corecta ]]; then
		echo "Esti logat"
		este_logat_cu_succes="YES"
		break
	else
		echo "parola sau username gresit"
		(( incercari_ramase-- ))
		echo "Mai ai $incercari_ramase incercari"
		continue
	fi
done

if [$este_logat_cu_succes== "YES" ];then
	echo"All good. Acum afisam site-ul..."
else
	echo "Cont blocat. Contacteaza ITSchool"
	echo "contblocat" >> baza-date.db
fi



UTILIZATOR=$1
PAROLA=$2

if [ -f "incercari.txt" ]; then
	nr_incercari=$(cat incercari.txt)
else
	echo "1" > incercari.txt
fi

##Verificam conditia SAU ||

if [[ "$UTILIZATOR" != "admin" ||  "$PAROLA" = "1234" ]]; then
	echo "USer sau parola gresita"
	exit 1
else
	echo "Esti logat"
fi

##Verificam conditia AND &&

if [ "$UTILIZATOR" = "admin" ] && [ "$PAROLA" = "1234" ]; then
	echo "Esti logat"
else
	echo "Access denied"
	exit 1
fi



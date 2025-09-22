
AGE=$1

if [ -n "$AGE" ] && [ "$AGE" -ge 18 ]; then
	echo "Userul a introdus varsta si este major"
else
	echo "Userul NU a introdus varsta sau NU este major"
fi



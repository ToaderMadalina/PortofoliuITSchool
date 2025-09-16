# chmod +x var-speciale.sh

# ./var-speciale.sh
# ./var-speciale.sh Ana 23 
# Observam valoarea default Bucuresti

# ./var-speciale.sh Ana 23 Constanta muzica


echo "Numele scriptului curent este" $0

echo "Si am primit $# argumente"

echo "Argumente: $@"

# echo "Primul argument este: " $1 ", al doilea argument este " $2

# echo "Primul argument este: $1 , al doilea argument este  $2"

NAME=$1
AGE=$2
CITY=$3

echo "$NAME are varsta de $AGE si este din ${CITY:-Bucuresti}"





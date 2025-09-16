DATA_EXECUTIE=$(date)
NO_SCRIPTS=$(ls -al *.sh | wc -l)
CALE_DIRECTOR=${1:-"/tmp"}
NO_FILES=$(ls -al $CALE_DIRECTOR | wc -l)

echo "Avem $NO_FILES in directorul $CALE_DIRECTOR"

echo "Avem $NO_SCRIPTS scripturi shell in directorul curent"

echo "Am rulat scriptul la data $DATA_EXECUTIE" 

echo "Am rulat scriptul la data `date"


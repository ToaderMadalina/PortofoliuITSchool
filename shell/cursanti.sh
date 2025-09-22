#! /bin/bash

cursanti=("Alice" "Bob" "Charlie" "DAN")

echo "Avem ${#cursanti[@]} cursanti"
for cursant in ${cursanti[@]};do
	echo "Nume cursant: $cursant"
done


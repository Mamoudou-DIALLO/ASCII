#!/bin/bash

echo "entrer vos coordonées"
	read -p "x1: " var1
	read -p "y1: " var2
	read -p "caractere: " var3
echo "############################"
echo "***ceci est le point qui a pour abcisse $var1 et ordonné $var2 ***"	
point(){
	declare -A tab
	tab[var1:var2]=$var3
	for i in $(seq $var2)
	do
		printf "\n"
	done
	for i in $(seq $var1)
	do
		printf " "
	done
	printf "%s" ${tab[@]}
	
}
echo -e "$(point $@)"

#!/bin/bash
. Point.sh


read -p "POUR LA DROITE ENTRER x2: " var4
echo "############################"
echo "***ceci est la droite qui a pour ordonné $var2 commençant au point d'abcisse $var1 et finissant au point d'abdcisse $var4 ***"
	
droite()
{
	for i in $(seq $var2)
	do
		printf "\n"
	done

	for i in $(seq $var1)
	do
		printf " "
	done

	for i=$var1 in $(seq $var4)
	do
		printf $(point $@)

	done	
}
echo -e "$(droite $@)"

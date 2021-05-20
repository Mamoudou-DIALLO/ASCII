#!/bin/bash
echo "entrer vos coordonées"
	read -p "x1: " var1
	read -p "y: " var2
	read -p "caractere: " var3
echo "############################"
echo "***ce ci est le point qui a pour abcisse $var1 et ordonné $var2 ***"	
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
read -p "POUR LA DROITE ENTRER x2: " var4
echo "############################"
echo "***ce ci est la droite qui a pour ordonné $var2 commençant au point d'abcisse $var1 et finissant au point d'abdcisse $var4 ***"
	
droite()
{	for i in $(seq $var1)
	do
		printf " "
	done
	for i in $(seq $var4)
	do
		printf $(point $@)
	done
	
}
printf "$(droite $@)\n"
echo "############################"
echo "*** ce ci est le rectangle plein de diagonale ($var1,$var2)-($var4,$var2)***"	
rectangle(){
	
	
	for i in $(seq $var4)
	do
		echo -e "$(droite $@)"
	done	
}
echo -e "\n$(rectangle $@)\n"
echo "############################"
echo "*** ce ci est le dessin utilisasnt les fonctions precedentes***"	
petit_dessin()
{
	echo -e "$(rectangle $@)"
	for i in $(seq 5)
	do
		echo -e $(point $@)
	done
	echo -e "$(rectangle $@)"
	for i in $(seq 5)
	do
		echo -e $(point $@)
	done
		echo -e "$(rectangle $@)"
	printf "\n"

}
echo -e "\n$(petit_dessin $@)"
echo "############################"	

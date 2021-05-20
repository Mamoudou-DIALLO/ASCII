#!/bin/bash
. Trait.sh

rectangle(){
	
	
	for i in $(seq $var4)
	do
		echo -e "$(droite $@)"
	done	
}
echo -e "\n$(rectangle $@)\n"
echo "############################"
echo "*** ce ci est le dessin utilisasnt les fonctions precedentes***"


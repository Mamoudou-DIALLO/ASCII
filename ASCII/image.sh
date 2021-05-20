#!/bin/bash
for i in *.txt
do
if [ $2==5 ]
then

	bash $i $@ >> fich1

fi
done

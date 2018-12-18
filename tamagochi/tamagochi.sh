#!/bin/bash
echo -e "Bienvenue sur tamagochi\nQuelle est le nom du tamagochi?"
read NAME
if [ -z "$NAME" ]
then
	echo "Votre Tamagochi s'appelle $NAME"
else
	echo Recommencez s'il vous plait. 
fi 

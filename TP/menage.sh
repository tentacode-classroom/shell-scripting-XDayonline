#!/bin/bash

#Variables
CURRENT_DIRECTORY=`dirname $0`
BAZAR_DIRECTORY=$CURRENT_DIRECTORY/bazar
CLEAN_DIRECTORY=$CURRENT_DIRECTORY/bazar_clean

echo "Lancement du programme"
echo "_______________________________"

#Supprime anciens r�pertoires
rm -Rf $BAZAR_DIRECTORY
rm -Rf $CLEAN_DIRECTORY

#Cr�e le nouveau r�pertoire
mkdir -p $BAZAR_DIRECTORY/Bureau/secret \
	$BAZAR_DIRECTORY/Download

#Cr�e les fichiers
touch $BAZAR_DIRECTORY/Bureau/image.jpg \
	$BAZAR_DIRECTORY/Bureau/secret/projetsecret.pdf \
	$BAZAR_DIRECTORY/Download/fichier.pdf \
	$BAZAR_DIRECTORY/Download/xdaymusic.flp \
	$BAZAR_DIRECTORY/Download/moi.jpg

#Cr�e r�pertoire clean
mkdir -p $CLEAN_DIRECTORY/divers \
	$CLEAN_DIRECTORY/images \
	$CLEAN_DIRECTORY/videos

#Copie les fichiers vers le nouveau r�pertoire
cp $BAZAR_DIRECTORY/Bureau/secret/projetsecret.pdf $CLEAN_DIRECTORY/divers/projetsecret.pdf
touch -t 20181101100000 $CLEAN_DIRECTORY/divers/projetsecret.pdf

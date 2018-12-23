#!/bin/bash

#Variables
CURRENT_DIRECTORY=`dirname $0`
BAZAR_DIRECTORY=$CURRENT_DIRECTORY/bazar
CLEAN_DIRECTORY=$CURRENT_DIRECTORY/bazar_clean

echo "Lancement du programme"
echo -e "_______________________________\n"

#Supprime anciens r�pertoires
rm -Rf $BAZAR_DIRECTORY
rm -Rf $CLEAN_DIRECTORY

#Cr�e le nouveau r�pertoire
#mkdir -p $BAZAR_DIRECTORY/Bureau/secret \
#	$BAZAR_DIRECTORY/Download

#Cr�e les fichiers
#touch $BAZAR_DIRECTORY/Bureau/image.jpg \
#	$BAZAR_DIRECTORY/Bureau/secret/projetsecret.pdf \
#	$BAZAR_DIRECTORY/Download/fichier.pdf \
#	$BAZAR_DIRECTORY/Download/xdaymusic.flp \
#	$BAZAR_DIRECTORY/Download/moi.jpg

#Cr�e r�pertoire clean
mkdir -p $CLEAN_DIRECTORY/divers \
	$CLEAN_DIRECTORY/images \
	$CLEAN_DIRECTORY/videos

#Copie les fichiers vers le nouveau r�pertoire
FILES=`find $BAZAR_DIRECTORY -type f`

	for FILE in $FILES
	do
		file $FILE | grep -q "image data"
		if [ $? = 0 ]
		then
			cp $FILE $CLEAN_DIRECTORY/images
		else
			file $FILE | grep -q "Media"
	                if [ $? = 0 ]
        	        then
                	        cp $FILE $CLEAN_DIRECTORY/videos
			else
				cp $FILE $CLEAN_DIRECTORY/divers
			fi
		fi
	
	done
	echo Fin

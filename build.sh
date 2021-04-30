#!/bin/sh

#This is a small script to automatically build a My Stuff folder.
#The purpose is to just save time having to build and copy files indivdually.
#This script requires Wiimms SZS Tools. https://szs.wiimm.de/
#Please ensure that clean.sh has been run before attempting this.

printf "Hello, this script will auto build a My Stuff\n"
printf "Press [enter] to start\n"
read dummy

cd UncompressedTemplates
wbmgt encode Common.txt

cp Common.bmg ./MenuSingle_E.d/message/
cp Common.bmg ./MenuSingle_U.d/message/

wszst create MenuSingle_E.d MenuSingle_U.d

cd ..
mkdir "My Stuff"

cp ./Tracklist/tracklist.txt My\ Stuff/
cp ./Tracks/* My\ Stuff
cp ./UncompressedTemplates/MenuSingle_* My\ Stuff

printf "\nMy Stuff has been prepared."
printf "\nPress [enter] to exit"


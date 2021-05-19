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
cd StaticR

cd PAL
cp StaticR.rel.bak StaticR.rel
wstrt patch StaticR.rel --tracks=1.1:=2.3,1.2:=3.3,1.3:=5.1,1.4:=4.2,2.1:=1.1,2.2:=4.1,2.3:=8.3,2.4:=1.3,3.1:=8.4,3.2:=4.3,3.3:=6.4,3.4:=5.3,4.1:=1.4,4.2:=1.2,4.3:=2.1,4.4:=2.4,5.1:=2.2,5.2:=3.1,5.3:=6.2,5.4:=3.4,6.1:=3.2,6.2:=8.1,6.3:=7.2,6.4:=7.3,7.1:=4.4,7.2:=5.2,7.3:=8.2,7.4:=6.1,8.1:=5.4,8.2:=6.3,8.3:=7.1,8.4:=7.4

cd ..
cd NTSC-U
cp StaticR.rel.bak StaticR.rel
wstrt patch StaticR.rel --tracks=1.1:=2.3,1.2:=3.3,1.3:=5.1,1.4:=4.2,2.1:=1.1,2.2:=4.1,2.3:=8.3,2.4:=1.3,3.1:=8.4,3.2:=4.3,3.3:=6.4,3.4:=5.3,4.1:=1.4,4.2:=1.2,4.3:=2.1,4.4:=2.4,5.1:=2.2,5.2:=3.1,5.3:=6.2,5.4:=3.4,6.1:=3.2,6.2:=8.1,6.3:=7.2,6.4:=7.3,7.1:=4.4,7.2:=5.2,7.3:=8.2,7.4:=6.1,8.1:=5.4,8.2:=6.3,8.3:=7.1,8.4:=7.4

cd ..
cd ..
mkdir "My Stuff"

cp ./Tracklist/tracklist.txt My\ Stuff/
cp ./Tracks/* My\ Stuff
cp ./Arenas/* My\ Stuff
cp ./UncompressedTemplates/MenuSingle_* My\ Stuff
cp -r ./StaticR/ My\ Stuff

printf "\nMy Stuff has been prepared."
printf "\nPress [enter] to exit"


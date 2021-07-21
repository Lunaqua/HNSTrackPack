#!/bin/sh

#This is a small script to automatically build a My Stuff folder.
#The purpose is to just save time having to build and copy files indivdually.
#This script requires Wiimms SZS Tools. https://szs.wiimm.de/
#Please ensure that clean.sh has been run before attempting this.

#This script now requires a mkw.d folder to operate.
MKWEXTRACT=$(cat mkw.location | sed 's/Specify location of mkw.d folder - //')

printf "Set wszst flags? (Recommended -q) \n"
read WSZSTFLAG

printf "Hello, this script will auto build a My Stuff\n"
printf "Press [enter] to start\n"
read dummy

mkdir WorkingDir

printf "* Creating Common.bmg \n"
cd UncompressedTemplates
wbmgt encode Common.txt $WSZSTFLAG

printf "* Creating regional menusingles \n"
cp Common.bmg ./MenuSingle_E.d/message/
cp Common.bmg ./MenuSingle_U.d/message/

printf "* Preparing MenuSingle \n"
#Prepare MenuSingle
cd MenuSingle.d/bg/timg
wimgt encode * $WSZSTFLAG
cd ..
cd ..

cd control/timg
wimgt encode * $WSZSTFLAG
cd ..
cd ..

cd ..
cd ..

cp $MKWEXTRACT/files/Scene/UI/MenuSingle.szs ./WorkingDir
wszst x ./WorkingDir/MenuSingle.szs $WSZSTFLAG
cp -f ./UncompressedTemplates/MenuSingle.d/bg/timg/*.tpl ./WorkingDir/MenuSingle.d/bg/timg/
cp -f ./UncompressedTemplates/MenuSingle.d/control/timg/*.tpl ./WorkingDir/MenuSingle.d/control/timg/

cd UncompressedTemplates

printf "* Preparing Regional Race.szs \n"
##
#Prepare Race_*.d
cd Race_E.d/game_image/timg
wimgt encode * $WSZSTFLAG

cd ..
cd ..
cd ..

cd Race_U.d/game_image/timg
wimgt encode * $WSZSTFLAG

cd ..
cd ..
cd ..

printf "* Building Race.szs \n"

cd Race.d/control/timg
wimgt encode * $WSZSTFLAG
cd ..
cd ..

cd game_image/timg
wimgt encode * $WSZSTFLAG
cd ..
cd ..

cd message_window/timg
wimgt encode * $WSZSTFLAG
cd ..
cd ..

cd ..
cd ..

cp $MKWEXTRACT/files/Scene/UI/Race.szs ./WorkingDir
wszst x ./WorkingDir/Race.szs $WSZSTFLAG
cp -f ./UncompressedTemplates/Race.d/control/timg/*.tpl ./WorkingDir/Race.d/control/timg/
cp -f ./UncompressedTemplates/Race.d/game_image/timg/*.tpl ./WorkingDir/Race.d/game_image/timg/
cp -f ./UncompressedTemplates/Race.d/message_window/timg/*.tpl ./WorkingDir/Race.d/message_window/timg/

cd UncompressedTemplates

printf "* Creating all of the .szs files \n"
wszst create MenuSingle_E.d MenuSingle_U.d Font.d Race_E.d Race_U.d
cd ..
cd WorkingDir
rm MenuSingle.szs
rm Race.szs
wszst create MenuSingle.d Race.d

printf "* Forming StaticR.rel \n "
cd ..
cd StaticR

cd P
cp StaticR.rel.bak StaticR.rel
wstrt patch StaticR.rel --tracks=1.1:=2.3,1.2:=3.3,1.3:=5.1,1.4:=4.2,2.1:=1.1,2.2:=4.1,2.3:=8.3,2.4:=1.3,3.1:=8.4,3.2:=4.3,3.3:=6.4,3.4:=5.3,4.1:=1.4,4.2:=1.2,4.3:=2.1,4.4:=2.4,5.1:=2.2,5.2:=3.1,5.3:=6.2,5.4:=3.4,6.1:=3.2,6.2:=8.1,6.3:=7.2,6.4:=7.3,7.1:=4.4,7.2:=5.2,7.3:=8.2,7.4:=6.1,8.1:=5.4,8.2:=6.3,8.3:=7.1,8.4:=7.4

cd ..
cd E
cp StaticR.rel.bak StaticR.rel
wstrt patch StaticR.rel --tracks=1.1:=2.3,1.2:=3.3,1.3:=5.1,1.4:=4.2,2.1:=1.1,2.2:=4.1,2.3:=8.3,2.4:=1.3,3.1:=8.4,3.2:=4.3,3.3:=6.4,3.4:=5.3,4.1:=1.4,4.2:=1.2,4.3:=2.1,4.4:=2.4,5.1:=2.2,5.2:=3.1,5.3:=6.2,5.4:=3.4,6.1:=3.2,6.2:=8.1,6.3:=7.2,6.4:=7.3,7.1:=4.4,7.2:=5.2,7.3:=8.2,7.4:=6.1,8.1:=5.4,8.2:=6.3,8.3:=7.1,8.4:=7.4

cd ..
cd ..

printf "* Creating My Stuff \n"
printf "** Preparing Folder \n"
mkdir "NaviHNSPack"
cd NaviHNSPack
mkdir Riivolution
mkdir hns
cd hns
mkdir navihns
cd navihns
mkdir extra
mkdir packone
cd packone
mkdir staticr
mkdir regional
cd regional
mkdir region-J
mkdir region-P
mkdir region-E
cd ..
cd ..
cd ..
cd ..
cd ..

cp ./Tracklist/tracklist.txt NaviHNSPack
cp -r ./Tracks/ NaviHNSPack/packone
cp -r ./Arenas/* NaviHNSPack/packone
cp ./UncompressedTemplates/MenuSingle_E.szs NaviHNSPack/packone/regional/region-P
cp ./UncompressedTemplates/MenuSingle_U.szs NaviHNSPack/packone/regional/region-E
cp ./UncompressedTemplates/Font.szs NaviHNSPack/extra
cp ./UncompressedTemplates/Race_E.szs NaviHNSPack/packone/regional/region-P
cp ./UncompressedTemplates/Race_U.szs NaviHNSPack/packone/regional/region-E
cp ./WorkingDir/*.szs NaviHNSPack/extra
cp -r ./StaticR/P/StaticR.rel NaviHNSPack/packone/staticr/StaticR-P.rel
cp -r ./StaticR/E/StaticR.rel NaviHNSPack/packone/staticr/StaticR-E.rel

cp ./ISOPatch/readme.txt NaviHNSPack

rm ./My\ Stuff/StaticR/P/StaticR.rel.bak
rm ./My\ Stuff/StaticR/E/StaticR.rel.bak
rm -rf ./WorkingDir/

printf "* Creating Archive \n"
printf "* Specify Version Tag \n"
read verTag
7z a HNSTrackPack_$verTag.7z My\ Stuff

printf "\nMy Stuff has been prepared."
printf "\nPress [enter] to exit"
read dummy

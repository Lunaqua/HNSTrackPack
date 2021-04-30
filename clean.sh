#!/bin/sh
#This file will clean your repo.
#It will delete any "My Stuff" folder, as well as files built by wszst

printf "This file will clean your repo, any allow you create a new build\n"
printf "Press [enter] to DELETE ALL BUILT FILES, this includes the 'my stuff' directory\n"
read dummy

rm ./My\ Stuff/*
rmdir My\ Stuff

cd UncompressedTemplates
rm Common.bmg
rm MenuSingle_E.szs
rm MenuSingle_U.szs

rm ./MenuSingle_E.d/message/Common.bmg
rm ./MenuSingle_U.d/message/Common.bmg

printf "Cleaning complete!\n"
printf "Press [enter] to exit\n"


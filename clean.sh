#!/bin/sh
#This file will clean your repo.
#It will delete any "My Stuff" folder, as well as files built by wszst

printf "This file will clean your repo, any allow you create a new build\n"
printf "Press [enter] to DELETE ALL BUILT FILES, this includes the 'my stuff' directory\n"
read dummy

rm -r ./NaviHNSPack/*
rmdir NaviHNSPack

rm ./*.7z

cd UncompressedTemplates
rm Common.bmg
rm MenuSingle_E.szs
rm MenuSingle_U.szs
rm MenuSingle_F.szs
rm MenuSingle_G.szs
rm MenuSingle_I.szs
rm MenuSingle_S.szs
rm Font.szs
rm Race_E.szs
rm Race_U.szs

rm ./MenuSingle_E.d/message/Common.bmg
rm ./MenuSingle_U.d/message/Common.bmg
rm ./MenuSingle_F.d/message/Common.bmg
rm ./MenuSingle_G.d/message/Common.bmg
rm ./MenuSingle_I.d/message/Common.bmg
rm ./MenuSingle_S.d/message/Common.bmg

rm ./UncompressedTemplates/Common.bmg/*.bak
rm ./UncompressedTemplates/Common.bmg/*.txt
mv ./UncompressedTemplates/Common.bmg/*.txt.backup ./UncompressedTemplates/Common.bmg/*.txt

rm ./MenuSingle.d/bg/timg/*.tpl
rm ./MenuSingle.d/control/timg/*.tpl

rm ./Race_E.d/game_image/timg/*.tpl
rm ./Race_U.d/game_image/timg/*.tpl

rm ./Race.d/control/timg/*.tpl
rm ./Race.d/game_image/timg/*.tpl
rm ./Race.d/message_window/timg/*.tpl

cd ..
rm ./StaticR/P/StaticR.rel
rm ./StaticR/E/StaticR.rel

printf "Cleaning complete!\n"
printf "Press [enter] to exit\n"


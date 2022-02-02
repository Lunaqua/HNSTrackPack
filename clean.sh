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
rm MenuSingle_E.szs
rm MenuSingle_U.szs
rm MenuSingle_F.szs
rm MenuSingle_G.szs
rm MenuSingle_I.szs
rm MenuSingle_S.szs
rm MenuSingle_M.szs
rm MenuSingle_Q.szs
rm MenuSingle_J.szs
rm Font.szs
rm Race_E.szs
rm Race_F.szs
rm Race_G.szs
rm Race_I.szs
rm Race_J.szs
rm Race_M.szs
rm Race_Q.szs
rm Race_S.szs
rm Race_U.szs

rm ./MenuSingle_E.d/message/Common.bmg
rm ./MenuSingle_U.d/message/Common.bmg
rm ./MenuSingle_F.d/message/Common.bmg
rm ./MenuSingle_G.d/message/Common.bmg
rm ./MenuSingle_I.d/message/Common.bmg
rm ./MenuSingle_S.d/message/Common.bmg
rm ./MenuSingle_M.d/message/Common.bmg
rm ./MenuSingle_Q.d/message/Common.bmg
rm ./MenuSingle_J.d/message/Common.bmg

rm ./MenuSingle_E.d/message/common.bmg
rm ./MenuSingle_U.d/message/common.bmg
rm ./MenuSingle_F.d/message/common.bmg
rm ./MenuSingle_G.d/message/common.bmg
rm ./MenuSingle_I.d/message/common.bmg
rm ./MenuSingle_S.d/message/common.bmg
rm ./MenuSingle_M.d/message/Common.bmg
rm ./MenuSingle_Q.d/message/Common.bmg
rm ./MenuSingle_J.d/message/Common.bmg

#rm ./Common.bmg/*.bak
#rm ./Common.bmg/*.txt
#mv ./Common.bmg/*.txt.backup ./Common.bmg/*.txt

rm ./MenuSingle.d/bg/timg/*.tpl
rm ./MenuSingle.d/control/timg/*.tpl

rm ./Race_E.d/game_image/timg/*.tpl
rm ./Race_U.d/game_image/timg/*.tpl
rm ./Race_F.d/game_image/timg/*.tpl
rm ./Race_G.d/game_image/timg/*.tpl
rm ./Race_I.d/game_image/timg/*.tpl
rm ./Race_J.d/game_image/timg/*.tpl
rm ./Race_M.d/game_image/timg/*.tpl
rm ./Race_Q.d/game_image/timg/*.tpl
rm ./Race_S.d/game_image/timg/*.tpl

rm ./Race.d/control/timg/*.tpl
rm ./Race.d/game_image/timg/*.tpl
rm ./Race.d/message_window/timg/*.tpl

cd ..
rm ./StaticR/P/StaticR.rel
rm ./StaticR/E/StaticR.rel
rm ./StaticR/J/StaticR.rel

printf "Cleaning complete!\n"
printf "Press [enter] to exit\n"


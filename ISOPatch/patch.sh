#!/bin/sh

#Script unfinished, do not try to use.
echo "Hello, this will auto copy files to an mkw.d folder"
echo "Ensure this zip is extracted into your patcher folder"
echo "Run this script once it pauses you to allow you to copy files"

cp ./My\ Stuff/* ./mkw.d/files/Race/Course/*

printf "What region do you want? P or E \n"
read region
	
cp ./My\ Stuff/StaticR/$region/StaticR.rel ./mkw.d/files/rel/StaticR.rel

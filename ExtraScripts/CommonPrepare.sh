#!/bin/bash

#This script is for preparing common.bmg for all regions.
#The script requires jq to be installed.

cd UncompressedTemplates
cd Common.bmg


__JSON__="./../../ExtraScripts/trackListing.json"

language=""
slot=""
track=""

function replaceStrings {
    file="Common_$1.txt"
    cp $file "$file.backup"
    
    for i in {0..50}; do
        slot="$(jq -r '.Tracks | .['$i'].Slot' $__JSON__ )"
        track="$(jq -r '.Tracks | .['$i'].Track' $__JSON__ )"
        
        sed -i'.bak' "/$slot/c   $slot	= $track" $file
        
        i=$i+1
    done
    
    cp $file ./../MenuSingle_$1.d/message/common.txt
    wbmgt encode ./../MenuSingle_$1.d/message/common.txt
    rm ./../MenuSingle_$1.d/message/common.txt
}

function intro {
    echo "* Encoding common.bmg for language $language"
    replaceStrings $language
}

language="E"
intro

language="F"
intro

language="G"
intro

language="I"
intro

language="S"
intro

language="M"
intro

language="J"
intro

language="Q"
intro

language="U"
intro

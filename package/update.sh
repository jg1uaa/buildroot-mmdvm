#!/usr/bin/env bash

if [ "$1" = "" ]; then
    echo "usage: $0 [package.mk]"
    exit
fi

if [ ! -f $1 ]; then
    echo "file not found"
    exit
fi

FILE=$1
URL=`grep _SITE $FILE | grep -v _METHOD`
URL=${URL##*_SITE = }

HASH=`curl -s $URL | grep spoofed_commit_check`
HASH=${HASH##*/spoofed_commit_check/}
HASH=${HASH%%\" data-test-selector=\"*}

VERNAME=`grep _VERSION $FILE`
VERNAME=${VERNAME%% = *}

echo $VERNAME = $HASH > $FILE.new
grep -v $VERNAME $FILE >> $FILE.new

mv -f $FILE $FILE.old
mv -f $FILE.new $FILE

diff $FILE.old $FILE

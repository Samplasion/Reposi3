#!/bin/bash

message="[Auto-Publish] New tweak"

while [ "$1" != "" ]; do
    if [ "$1" == "-m" ]; then
        shift
        message=$1
    fi
    shift
done

cp ./Packages ./Packages_cp
rm -f ./Packages.bz2
bzip2 Packages
mv ./Packages_cp ./Packages
git add .
git commit -m $message
git push
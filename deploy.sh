#!/usr/bin/env bash

if [ $# -eq 1 ]
  then msg="$1"
fi


echo -e "\033[0;32mStart Build...\033[0m"
cd workspace
hugo --cleanDestinationDir
sleep 0.1

echo -e "\033[0;32mCopy WEB data...\033[0m"
rm -rf ../docs/*
cp -R ./public/* ../docs
sleep 0.1

echo -e "\033[0;32mNow Uploading...\033[0m"
cd ..
git add *
git commit -m "$msg"
git push
sleep 0.1

echo -e "\033[0;32mDONE!\033[0m"
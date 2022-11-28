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
mkdir ../docs/1be9abc2a2d91b83142e9ae8474bfa99d9905c2357ad367cbbee2d4a41037781
cp -R ./public/* ../docs/1be9abc2a2d91b83142e9ae8474bfa99d9905c2357ad367cbbee2d4a41037781
# cp -R ./public/* ../docs/
cp -R ./4password/* ../docs
sleep 0.1

echo -e "\033[0;32mNow Uploading...\033[0m"
cd ..
git add *
git commit -m "$msg"
git push
sleep 0.1

echo -e "\033[0;32mDONE!\033[0m"
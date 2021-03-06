#!/bin/bash
if [ $# -lt 1 ]
then
  echo "Usage: $0 version"
  exit 1
fi

mkdir doofinder
cp *.php doofinder
cp logo.* doofinder
cp *.tpl doofinder
cp -r css doofinder
cp -r translations doofinder
cp README.md doofinder

file="doofinder-p1.5-$1.zip"
[[ -f "$file" ]] && rm -f "$file"
file="doofinder-p1.5-latest.zip"
[[ -f "$file" ]] && rm -f "$file"

zip -r doofinder-p1.5-$1.zip doofinder
cp doofinder-p1.5-$1.zip doofinder-p1.5-latest.zip
rm -Rf doofinder

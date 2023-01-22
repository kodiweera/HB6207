#!/bin/bash

msg=$@

{ echo "Date | Log Entry"; echo ":--- | --- "; } > zero.txt
echo $( date ) "|" '`'$msg'`' >> zero.txt 

cat dblog.md | grep 20  >> zero.txt
mv zero.txt dblog.md

git add .
git commit -m "$msg"
git pull
git push


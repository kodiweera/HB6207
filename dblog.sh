#!/bin/bash

msg=$@

{ echo "Date | Log Entry"; echo ":--- | --- "; } > zero.txt
echo $( date ) "|" $msg >> zero.txt 

cat dblog.md | grep -v "Log Entry" >> zero.txt
mv zero.txt dblog.md

git add .
git commit -m "$msg"
git pull
git push


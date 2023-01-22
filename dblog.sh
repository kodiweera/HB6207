#!/bin/bash

msg=$@

d="$( date ) $msg"
{ echo; echo ${d}; echo; } > zero.txt
cat dblog.md >> zero.txt
mv zero.txt dblog.md

git add .
git commit -m "$msg"
git pull
git push


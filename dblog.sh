#!/bin/bash

msg=$@

d=$( date )
echo "\n$d\t$msg\n" >> dblog.md


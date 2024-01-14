#!/bin/bash


R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"


list=$(df -hT | grep -vE 'tmp|File')



while IFS= read -r  f1 f2 f3
do
 echo "$f1"
 echo "$f2"
 echo "$f3"

done  <<<$list
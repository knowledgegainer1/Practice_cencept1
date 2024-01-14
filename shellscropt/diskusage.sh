#!/bin/bash


R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"


list=$(df -hT | grep -vE 'tmp|File')



while IFS= read -r  line
do
 echo "$line"

done  <<<$list
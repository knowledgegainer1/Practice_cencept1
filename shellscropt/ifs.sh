#!/bin/bash

source_dir="/etc/passwd"
#if dire not there create or skip

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [  ! -f $source_dir ]; 
then
    echo  -e " $R directory not exist $N create it first"
    exit 1  # if you dont keep exit it will run continiously until last to stop it fro running we use exit 
fi

#next we need to find .log  files in that directory

while IFS="/" read -r f1 f2 f3 f4 f5
do 
echo " $f1 ---$f1 ----$f3 ----$f4 ---$f5"
done <<< $source_dir
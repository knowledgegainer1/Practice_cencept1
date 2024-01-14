#!/bin/bash

source_dir="/tmp/shell"
#if dire not there create or skip

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [  ! -d $source_dir ]; 
then
    echo  -e " $R directory not exist $N create it first"
    exit 1  # if you dont keep exit it will run continiously until last to stop it fro running we use exit 
fi

#next we need to find .log  files in that directory

old_files=find $source_dir -type f -mtime +14 -name "*.log"


while IFS= read -r line
do
 echo "deleting $line"
 rm -rf $line
done  <<< $old_files

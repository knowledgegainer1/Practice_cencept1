#!/bin/bash

source_dir=/tmp/shellscript-logs
#if dire not there create or skip

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [  ! -d $source_dir ]; 
then
    echo  -e " $R directory not exist $N"
    exit 1
fi

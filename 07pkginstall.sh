#!/bin/bash

date=$(date +%F-%R-%S)
logfile="/tmp/$0-$date.log"
id=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $id -ne 0 ]; then
    echo -e "Dont have permission to do this !! $R Please run this by SUDO access $N"
    exit 1
else
    for pkg in $@
    do
        yum list installed $pkg &>>$logfile
        if [ $? -eq 0 ]; then
            echo -e  "$pkg Its Already existed so $Y ....SKIPPED $N"
        else
            yum install $pkg -y &>>$logfile
            echo  -e "Installed ---- $pkg $G Success $N"
        fi
    done
fi

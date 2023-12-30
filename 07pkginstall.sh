#!/bin/bash

date=$(date +%F-%R-%S)
logfile="/tmp/$0-$date.log"
id=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"


if [ $id -ne 0 ];
then
echo -e "Dont have permission to do this !! $R Please run this by SUDO access $N"
else
for pkg in $@ 
do
 yum list installed $pkg  &>> $logfile
 if [ $? -eq 0 ]; then
 echo "Its Already existed so $Y ....SKIPPED $N"
 else
  yum install $pkg -y &>> $logfile
  echo "Installed ---- $G Success $N"
done
fi
 

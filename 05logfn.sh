#!/bin/bash
dat=$(date +%F-%R-%S)
id=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

logname="/tmp/$0-$dat.log"  # quotes bcos its string "
validate() {
    if [ $1 -eq 0 ]; then
        echo "$2 ....is $G SUCCESS"
    else
        echo "$2 ...$R FAILED"
        exit 1
    fi
}



if [ $id -eq 0 ]; then
    echo "$G SUUCCESS $N welcome root USRE"
else
    echo "$R Error: $N u are not root"
    exit 1
fi

yum install nginx -y  &>> $logname
validate $? "installing nginx"

yum install git -y &>> $logname
validate $? "installing GIT"

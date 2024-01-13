#!/bin/bash

validate() {
    if [ $1 -eq 0 ]; then
        echo "$2 ....is SUCCESS"
    else
        echo "$2 ...FAILED"
        exit 1
    fi
}

id=$(id -u)

if [ $id -eq 0 ]; then
    echo "welcome root USRE"
else
    echo "Error: u are not root"
    exit 1
fi

yum install nginx -y  &>> temp.log
validate $? "installing nginx"

yum install git -y
validate $? "installing GIT"

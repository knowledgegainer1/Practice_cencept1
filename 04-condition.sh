#!/bin/bash

# x=21

# if [ $x -gt 20 ]; then
#     echo "$x is grtatedthan 20"
# else
#     echo "$x is less than 20"
# fi

id=$(id -u)

if [ $id -ne 0 ]; then
    echo "Error:this is not root user"
    exit 1 # exit status is used to end flow at that point status code are 0 and 1
else
    echo "welcome root  "
fi

yum install giiit -y

if [ $? -eq 0 ]; then
    echo "Installed successfully"
else
    echo "Error in installing"
    exit 1
fi

yum install nginx -y

if [ $? -eq 0 ]; then
    echo "Installed successfully"
else
    echo "Error in installing"
    exit 1
fi

#!/bin/bash

# x=21

# if [ $x -gt 20 ]; then
#     echo "$x is grtatedthan 20"
# else
#     echo "$x is less than 20"
# fi

id=$(id -u)

if [ $id -ne 0 ]; then
    echo "this is not root user"
    exit 0
else
    echo "welcome root  "
fi

yum install nginx -y

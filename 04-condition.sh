#!/bin/bash

# x=21

# if [ $x -gt 20 ]; then
#     echo "$x is grtatedthan 20"
# else
#     echo "$x is less than 20"
# fi

echo "please enter a number from 0 "

read number

if [ $number % 2 -eq 0 ] ; then
    echo "this number is prime"
else
    echo "not prim"
fi

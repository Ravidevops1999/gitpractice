#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"

CHECK_POINT(){

    if[ $USERID -ne 0 ]
    then 
        echo " login with root privilege"
        exit 1
    fi
}

Validate(){

    if[ $1 -ne 0 ]
    then 
        echo -e "$2 is...$R FAILED $N"
        exit 1
    else
        echo -e "$2 is...$G SUCCESS $N"
        }

CHECK_POINT

for package in $@ 
do
    echo $package
done
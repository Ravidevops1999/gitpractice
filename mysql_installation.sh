#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo " Please login with root user"
    exit 1
fi

dnf list installed mysql

if [ $? -ne 0 ]
then
    echo " Mysql is not installed...going to install it"
    dnf install mysql -y
    if [ $? -ne 0 ]
    then
        echo " Mysql installtion is not success...please checK"
    else
        echo " Mysql installtion is success..."
    fi
else
    echo " Mysql is already installed nothing to do..."
fi            
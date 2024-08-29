#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo " Please login with root user"
    exit 1
fi    

dnf list installed git -y

if[ $? -ne 0 ]
then
    echo " git is not installed going to install it"
    dnf install git -y
    if [ $? -ne 0 ]
    then 
        echo " git installion is not success... please check"
    else
        echo " git installion is success..."
    fi
else
    echo "Git is already installed nothing to do"
fi        
    
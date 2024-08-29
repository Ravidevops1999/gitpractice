#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo " please login with root user..."
    exit 1
fi

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2 is failed.."
    else
        echo "$2 is success.." 
    fi       
 }

dnf list installed git -y

if [ $? -ne 0 ]
then
    echo "git is not installed going to install it ..."
    dnf install git -y
   VALIDATE $? "git installation"
else
    echo " git is already installed..."
fi

dnf list installed mysql -y
if [ $? -ne 0 ]
then
    echo "mysql is not installed going to install it..."
    dnf install mysql -y
    VALIDATE $? "mysql installation"
else
    echo " mysql installation is already installed"
fi                
    
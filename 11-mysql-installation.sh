#!/bin/bash

USERID=$(id -u )

if [ $USERID -eq 0 ]
then
    echo "You are root user, you can install the packages"
else
    echo "You are not root user, you cannot install the packages"
fi

yum list available | grep mysql
if [ $? -eq 0 ]
then
    echo "MySQL package is available and ready to install"
else
    echo "MySQL package is not available in the yum repository, please check your repository settings"
fi
    yum list installed | grep mysql -y
if [ $? -eq 0 ]
then
    echo "MySQL package is already installed"
else
    echo "MySQL package is not installed"
fi

if [ $? -neq 0 ]
then
    echo "Installing MySQL package..."
    yum install mysql -y
else
    echo "MySQL package is already installed, skipping installation"
fi
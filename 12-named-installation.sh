#!/bin/bash

USERID=$( id -u )
if [ $USERID -eq 0 ]
then
    echo "you are a root user, so you have a prmission to install the package"
else
    echo "you are not a root user, so please run with root access"
    exit 1
fi

yum list installed | grep bind
if [ $? -eq 0 ]
then
    echo "bind package is already installed, removing it first.."
else
    echo "bind package is not installed, proceeding with installation..."
    exit 1
fi
yum remove bind -y
if [ $? -eq 0 ]
then
    echo "bind package removed successfully"
else
    echo "bind package removal failed"
    exit 1

fi

echo "installing bind
 package..."
yum install bind -y
if [ $? -eq 0 ]
then
    echo "bind package is installed successfully"
else
    echo "bind package installation failed"
    exit 1
fi
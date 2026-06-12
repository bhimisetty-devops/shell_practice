#!/bin/bash

USERID=$( id -u )
if [ $USERID -eq 0 ]
then
    echo "you are a root user, so you have a prmission to install the package"

else
    echo "you are not a root user, so please run with root access"
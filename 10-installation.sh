#!/bin/bash     #shebang line, it tells the system that this script should be run using the bash shell

USERID=$(id -u) # this command gets the user ID of the current user and stores it in

if [ $USERID -eq 0 ]
then
    echo "you are root user, you can do anything..."
    
else
    echo "you are not root user, you cannot install the software..."
    exit 1
fi

dnf install mysql -y
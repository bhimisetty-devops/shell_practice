#!/bin/bash     #shebang line, it tells the system that this script should be run using the bash shell

USERID=$(id -u) # this command gets the user ID of the current user and stores it in

if [ $USERID -eq 0 ]
then
    echo "you are root user, you can do anything..."
    
else
    echo "you are not root user, you cannot install the software..."
    exit 1
fi

yum list available | grep mysql # this command lists all the available packages in the yum repository.
if [ $? -eq 0 ] # this checks the exit status of the previous command,
then
    echo "my sql package is available and ready to install..."
    yum install mysql -y # this command installs the mysql package using yum.
else
    echo "mysql package is not available in the yum repository, please check your repository settings..."
    exit 1
fi 
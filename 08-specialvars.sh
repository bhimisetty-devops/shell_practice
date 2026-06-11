#!/bin/bash     # this is shibang, it tells the system to use bash to execute this script
# This script demonstrates the use of special variables in bash scripting.
echo "The name of the script is: $0" # this will print the name of the script   
echo "The second argument passed to the script is: $2" # this will print the second argument passed to the script
echo "The third argument passed to the script is: $3" # this will print the third argument passed to the script
echo "all variables passed to the script are: $@" # this will print all the variables passed to the script
echo "The number of arguments passed to the script is: $#" # this will print the number of arguments passed to the script
echo "current directory is: $PWD" # this will print the current directory
echo "The process ID of the script is: $$" # this will print the process ID of the script
echo "The exit status of the last command is: $?" # this will print the exit status of the last command executed in the script
echo "home directory of the user is: $HOME" # this will print the home directory of the user
echo "The username of the user is: $USER" # this will print the username of the user
echo "pid of the script is: $$" # this will print the process ID of the script

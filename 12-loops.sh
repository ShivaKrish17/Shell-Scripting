#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"


if [ $USERID -ne 0 ]
then
    echo -e "$R ERROR:: Please run this script with Root Access $N"
    exit 1
fi    

# All argumnets are in $@        Package names given from commandline eg: sh 12-loops.sh mysql git
for i in $@
do
    yum install $i -y
done     

#Improvements
#Implement log files
#Implement colours
#Implement Validations
#Implement Validations through Functions
#Your Script should check package is already installed or not. If already installed print yellow colour
#If Installed, just print package is already installed. It should not run install command

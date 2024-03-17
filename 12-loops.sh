#!/bin/bash

DATE=$(date +%F)
SCRIPT_NAME=$0
LOG_FILE=/tmp/$SCRIPT_NAME-$DATE.log

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo -e "$R Installing $2 is FAILURE $N"
        exit 1
    else
        echo -e "$G Installing $2 is SUCCESS $N"   
    fi  
}


USERID=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"


if [ $USERID -ne 0 ]
then
    echo -e "$R ERROR:: Please run this script with Root Access $N"
    exit 1
fi    

# All argumnets are in $@        Package names given from commandline eg: sh 12-loops.sh mysql git
for i in $@
do
    yum list installed $i &>> $LOG_FILE
    if [ $? -ne 0 ]
    then
        echo "$i is not installed, let's install it"
        yum install $i -y &>> $LOG_FILE
        VALIDATE $? "$i"
    else
        echo -e "$Y $i is already installed"
    fi    
done     

#Improvements
#Implement log files
#Implement colours
#Implement Validations
#Implement Validations through Functions
#Your Script should check package is already installed or not. If already installed print yellow colour
#If Installed, just print package is already installed. It should not run install command

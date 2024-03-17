#!/bin/bash

#Program to install Mysql

USERID=$(id -u)           # id -u returns user id, root has id as 0 

if [ $USERID -ne 0 ]      # -ne: not equal, -eq -> equal operator  
then
    echo "ERROR: Please Run Script with Root User"
    exit 15               # 1 - 127 is failure
fi    

yum install git -y
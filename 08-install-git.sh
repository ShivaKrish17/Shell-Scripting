#!/bin/bash

#Program to install Mysql

USERID=$(id -u)           # id -u returns user id, root has id as 0 

if [ $USERID -ne 0 ]      # -ne: not equal, -eq -> equal operator  
    echo "ERROR: Please Run Script with Root User"
if    
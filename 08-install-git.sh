#!/bin/bash

#Program to install Mysql

USERID=$(id -u)           # id -u returns user id, root has id as 0 

if [ $USERID -ne 0 ]      # -ne: not equal, -eq -> equal operator  
then
    echo "ERROR: Please Run Script with Root User"
    exit 15               # 1 - 127 is failure
fi    


#It is our responsibility to check if installation is success or not

yum install git -y

if [ $? -ne 0 ]
then 
    echo "Installation of Git is error"
    exit 1
else 
    echo "Installation of Git is Success"    
fi    

yum install mysql -y

if [ $? -ne 0 ]
then 
    echo "Installation of MySQL is error"
    exit 1
else
    echo "Installation of MySQL is error"    
fi  
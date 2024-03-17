#!/bin/bash

#Program to install Mysql

USERID=$(id -u)           # id -u returns user id, root has id as 0 

# This Function to Validate the Previous Command and inforrm user whether it is success or failure
VALIDATE(){
    # $1 -> it will receive first argument 

    if [ $1 -ne 0 ]
    then 
        echo "Installation of $2 is error"
        exit 1
    else
        echo "Installation of $2 is Success"    
    fi  
}

if [ $USERID -ne 0 ]      # -ne: not equal, -eq -> equal operator  
then
    echo "ERROR: Please Run Script with Root User"
    exit 15               # 1 - 127 is failure
fi    


#It is our responsibility to check if installation is success or not

yum install git -y

VALIDATE $? "Git" 

yum install mysql -y

VALIDATE $? "MySQL"  


#!/bin/bash

echo "Please enter your username"

read USERNAME # This is the variable where the value of the one user entered

echo "Useraname entered is: $USERNAME"

echo "Please enter your password"

read -s PASSWORD    # -s : do not echo the value which is being typing in command line(or do not echo input coming from a terminal)

echo "Password entered is: $PASSWORD"
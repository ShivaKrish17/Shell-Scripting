#!/bin/bash

# All argumnets are in $@
for i in $@
do
    yum install $i -y
done     
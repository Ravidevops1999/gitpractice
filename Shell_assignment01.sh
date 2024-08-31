#!/bin/bash
file="/var/log/shell/output.txt"
while read line; 
do
    for word in $line; 
    do
        echo "word = '$word'"
    done
done <"output.txt"
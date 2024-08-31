 !/bin/bash
file="/var/shell/output.txt"
while read line; 
do
    for word in $line; 
    do
        echo "word = '$word'"
    done
done <"$file"





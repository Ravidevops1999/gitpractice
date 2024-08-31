 #!/bin/bash
# file="/var/shell/output.txt"
# while read line; 
# do
#     for word in $line; 
#     do
#         echo "word = '$word'"
#     done
    
# done <"$file"


file="/var/shell/output.txt"
while read line; 
do
    while read count word in $line; 
    do
        if [ $count -gt 1 ]
        then
            echo "word = '$word'" | echo "$count"
        fi
    done
done <"$file"




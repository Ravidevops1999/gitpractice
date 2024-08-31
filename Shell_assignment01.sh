 #!/bin/bash
# file="/var/shell/output.txt"
# while read line; 
# do
#     for word in $line; 
#     do
#         echo "word = '$word'"
#     done
# done <"$file"

sort /var/shell/output.txt | uniq -c | sort -nr | while read count name
do
    if [ ${count} -gt 1]
    then 
        echo "${name} ${count}"
    fi
done
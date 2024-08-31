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


sort $file | uniq -c | sort -nr | while read count name
do
    if [ ${count} -gt 1 ]
    then 
        echo "${name} ${count}"
    fi
done
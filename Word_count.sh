#!/bin/bash

file="/var/shell/output.txt"
declare -A count
for word in $(< "$file"); do
    echo $word
    (( count[$word]++ ))
done

max=0
for word in "${!count[@]}"; do
    if (( ${count[$word]} > $max )); then
        max=${count[$word]}
        max_word=$word
    fi
done
echo "most seen word: '$max_word', seen $max times"
#!/bin/bash

SOURCE_DIR=/home/ec2-user/log

if [ -d $SOURCE_DIR ]
then 
    echo "$SOURCE_DIR exist"
else
    echo "$SOURCE_DIR does not exists"
    exit 1
fi

FILES=$(find $SOURCE_DIR -name "*.log" -mtime +14)
echo "files:$FILES"

while IFS= read -r file;
do
    echo "Deleting files:$file"
    rm -rf $file
done<<<$FILES


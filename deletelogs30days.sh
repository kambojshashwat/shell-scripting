#!/bin/bash


# This Script will Delete all the log files greater than 30 days..
#
echo "Delete all the files and folders greater than 30 days"
path=$1
echo = $path
find $path -mtime +30 -delete
if [[ $? -eq 0 ]]; then
        echo "Deleted all the Files Greater than 30 Days"
else
        echo "Deleting Aborted"
fi

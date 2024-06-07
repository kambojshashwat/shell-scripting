#!/bin/bash

###################
# AUTHOR : Shashwat
# DATE : 07/06/2024
#
# This Script will get first Biggest Files in the File System Passed via Parameter with Script Argument
# VERSION : v1.0
# ################

echo "Finding First 10 Biggest Files in the File System via Positional Argument Passed via First Parameter"

#must enter first Parameter to check files for Specific Location
path="$1"
du -ha $path | sort -hr | head -n 10 >> /Testing/BiggestFiles.txt
echo "This is the List of Big Files in the File System $path"
cat /Testing/BiggestFiles.txt

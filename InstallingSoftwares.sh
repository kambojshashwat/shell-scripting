#!/bin/bash

##################
#
# AUTHOR: Shashwat
# DATE : 07/06/2024
# This Script will help to Install git..
#
# ################

#Debug Mode
#set -x

echo "This Script is Installing Git"
echo "Installing Started"

if [ "$(uname)" == "Linux" ]; then
        echo "Installing Git in Linux O.S"
        yum install git -y
elif [ "$(uname)" == "Darwin" ]; then
        echo "Installing Git in MacOS"
        brew install git
else
        echo "Git Installation Aborted!!"
fi

#can use this script to install any software just modify the installation path...

#!/bin/bash

##################
# AUTHOR : Shashwat
# DATE : 07/06/2024
#
# This Script will check the Disk Usage of Your Linux Machine!!
# VERSION : v1.0
# ################

echo "Checking Disk Usage"
#please modify the grep according to your Disk Volume Size..
disk=`df -h | grep "8.0G" | awk '{print $5}' | cut -d '%' -f 1`

if [ $disk -gt 80 ]; then
        echo "ALERT: You disk size is $disk% , You need to Upgrade your Disk Size.."
else
        echo "No need to Worry, Disk Size is Under Control."
fi

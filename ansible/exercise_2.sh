#!/bin/bash
mkdir /logfiles
filecount=0
now=$( date +%Y%m%d-%H%M-%S )
while [ $filecount -lt 1000 ] ; do
    filesize=$RANDOM
    filesize=$(($filesize+1024))
    base64 /dev/urandom | 
    head -c "$filesize" > /var/log/file${filecount}."$now"
    ((filecount++))
done
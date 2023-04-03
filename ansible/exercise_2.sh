#!/bin/bash
mkdir /logfiles
filecount=0
while [ $filecount -lt 10000 ] ; do
    now=$( date +%Y%m%d-%H%M-%S )
    filesize=$RANDOM
    filesize=$(($filesize+1024))
    base64 /dev/urandom | 
    head -c "$filesize" > /logfiles/file${filecount}."$(now)"
    ((filecount++))
done
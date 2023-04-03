#!/bin/bash
mkdir /logfiles
filecount=0
while [ $filecount -lt 10000 ] ; do
    date=date
    filesize=$RANDOM
    filesize=$(($filesize+1024))
    base64 /dev/urandom | 
    head -c "$filesize" > /logfiles/file${filecount}.$date
    ((filecount++))
done
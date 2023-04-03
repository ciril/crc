#!/bin/bash
mkdir /logfiles
filecount=0
now='[\D{%d.%m.%y} \t]'
while [ $filecount -lt 10000 ] ; do
    filesize=$RANDOM
    filesize=$(($filesize+1024))
    base64 /dev/urandom | 
    head -c "$filesize" > /logfiles/file${filecount}."$now"
    ((filecount++))
done
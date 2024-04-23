#!/bin/bash 

FILENAME=$(date +"%d/%m %H:%M")
cd /home/krishna/jferdin4nd/
echo "$FILENAME $(/usr/bin/git pull)" >> /home/krishna/jferdin4nd.log


#!/bin/bash 

FILENAME=$(date +"%m%d%H%M")
cd ~/jferdin4nd
echo "$(git pull) $FILENAME" >> ~/jferdin4nd.log


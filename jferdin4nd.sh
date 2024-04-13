#!/bin/bash 

FILENAME=$(date +"%m-%d %H:%M")
cd ~/jferdin4nd
echo "$FILENAME $(git pull)" >> ~/jferdin4nd.log


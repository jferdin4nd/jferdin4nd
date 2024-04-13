#!/bin/bash 

FILENAME=$(date +"%m-%d %H:%M")
cd /home/shiva/jferdin4nd/
echo "$FILENAME $(git pull)" >> /home/shiva/jferdin4nd.log


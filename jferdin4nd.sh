#!/bin/bash 

FILENAME=$(date +"%d/%m %H:%M")
cd /home/shiva/jferdin4nd/
echo "$FILENAME $(/usr/bin/git pull)" >> /home/shiva/jferdin4nd.log


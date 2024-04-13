#!/bin/bash 

FILENAME=$(date +"%Y%m%d%H%M")
cd ~/jferdin4nd
git pull >> ~/jferdin4nd$FILENAME.log


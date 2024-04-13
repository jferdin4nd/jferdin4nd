#!/bin/bash

SRC=$1
DST=$2
FILENAME=$(date +"%Y%m%d%H%M")
mkdir -p "/tmp/log/"
sudo tar -czvf $2/$FILENAME.tar.gz $SRC >> /tmp/log/backup_$FILENAME.log


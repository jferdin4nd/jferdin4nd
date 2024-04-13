#!/bin/bash

BACKUP_SRC="/tmp"
BACKUP_DST="/backups"
BACKUP_DATE=$(date +%Y%m%d%H%M%S)
BACKUP_FILENAME="backup_$BACKUP_DATE.tar.gz"

mkdir -p "BACKUP_DST/$BACKUP_DATE"

#Archive the source directory

tar -czf "$BACKUP_DST/$BACKUP_DATE/$BACKUP_FILENAME" "$BACKUP_SRC"

#Verify the backup was created succefully

if [ $? -eq 0 ]
then
    echo "Backup succefull: $BACKUP_FILENAME"

else
    echo "Backup failed."


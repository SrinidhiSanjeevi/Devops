#!/bin/bash

SOURCE="/home/srinidhi/shell-practice"

DESTINATION="/home/srinidhi/Backup"

DATE=$(date +%Y-%m-%d_%H-%M-%S)

BACKUP_FILE="backup_$DATE.tar.gz"

echo "Starting backup..."

# Create backup folder if not exists
mkdir -p "$DESTINATION"

tar -czf "$DESTINATION/$BACKUP_FILE" "$SOURCE"

if [ $? -eq 0 ]
then
    echo "Backup completed successfully"
    echo "Saved at: $DESTINATION/$BACKUP_FILE"
else
    echo "Backup failed"
fi

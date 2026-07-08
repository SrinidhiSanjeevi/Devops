#!/bin/bash

SOURCE="/home/srinidhi/Desktop/devops/L02/practice_repo/logs/logs/reports"

DESTINATION="/home/srinidhi/Desktop/devops/L02/practice_repo/logs/backups"

DATE=$(date +%Y-%m-%d_%H-%M-%S)

BACKUP_FILE="backup_$DATE.tar.gz"

echo "======================================"
echo "       Backup Utility Started"
echo "======================================"
echo ""

mkdir -p "$DESTINATION"

tar -caf "$DESTINATION/$BACKUP_FILE" "$SOURCE"

if [ $? -eq 0 ]
then
    echo ""
    echo "Backup completed successfully"
    echo "Saved at:"
    echo "$DESTINATION/$BACKUP_FILE"
else
    echo ""
    echo "Backup failed"
fi

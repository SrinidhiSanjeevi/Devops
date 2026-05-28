#!/bin/bash

LOG_DIR="/home/srinidhi/Desktop/devops/L02/practice_repo/logs/logs/temp"

echo "======================================"
echo "        Cleanup Utility Started"
echo "======================================"
echo ""

if [ ! -d "$LOG_DIR" ]
then
    echo "Log directory not found"
    exit 1
fi

echo "Log files before cleanup:"
echo ""

ls "$LOG_DIR"

echo ""

rm -f "$LOG_DIR"/*.log

echo "Cleanup completed"
echo ""

echo "Remaining files:"
ls "$LOG_DIR"


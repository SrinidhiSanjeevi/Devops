#!/bin/bash

LOG_DIR="/home/srinidhi/logs"

echo "Starting log cleanup..."

if [ ! -d "$LOG_DIR" ]
then
    echo "Log directory not found"
    exit 1
fi

echo "Log files before cleanup:"
ls "$LOG_DIR"

rm -f "$LOG_DIR"/*.log

echo "Cleanup completed"

echo "Remaining files:"
ls "$LOG_DIR"

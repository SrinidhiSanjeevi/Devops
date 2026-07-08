#!/bin/bash

THRESHOLD=70

echo "========================================"
echo "     Disk Usage Monitoring Report"
echo "========================================"

USAGE=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')

echo "Current Disk Usage: ${USAGE}%"
echo "Configured Threshold: ${THRESHOLD}%"

echo ""

if [ "$USAGE" -gt "$THRESHOLD" ]
then
    echo "WARNING: Disk usage exceeded threshold!"
    echo "Immediate cleanup is recommended."
else
    echo "Disk usage is under acceptable limits."
fi

echo ""
echo "Detailed Filesystem Report:"
df -h

echo ""
echo "Disk monitoring completed successfully."

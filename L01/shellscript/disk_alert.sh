#!/bin/bash

THRESHOLD=70

echo "Checking disk usage..."

USAGE=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')

echo "Current disk usage: $USAGE%"

if [ "$USAGE" -gt "$THRESHOLD" ]
then
    echo "WARNING: Disk usage exceeded threshold"
else
    echo "Disk usage is under control"
fi

#!/bin/bash

THRESHOLD=80

echo "========================================"
echo "      Memory Usage Monitoring Report"
echo "========================================"

TOTAL=$(free -m | awk '/Mem:/ {print $2}')
USED=$(free -m | awk '/Mem:/ {print $3}')
FREE=$(free -m | awk '/Mem:/ {print $4}')

USAGE=$((USED * 100 / TOTAL))

echo "Total Memory : ${TOTAL} MB"
echo "Used Memory  : ${USED} MB"
echo "Free Memory  : ${FREE} MB"

echo ""
echo "Memory Utilization : ${USAGE}%"
echo "Configured Threshold : ${THRESHOLD}%"

echo ""

if [ "$USAGE" -gt "$THRESHOLD" ]
then
    echo "WARNING: High memory usage detected!"
    echo "Consider terminating unused processes."
else
    echo "Memory usage is stable."
fi

echo ""
echo "Top 5 Memory Consuming Processes:"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -6

echo ""
echo "Memory monitoring completed successfully."

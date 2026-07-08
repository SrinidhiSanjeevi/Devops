#!/bin/bash

CPU_THRESHOLD=75

echo "========================================"
echo "        CPU Monitoring Report"
echo "========================================"

CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')

CPU_INT=${CPU_USAGE%.*}

echo "Current CPU Usage: ${CPU_USAGE}%"
echo "Configured Threshold: ${CPU_THRESHOLD}%"

echo ""

if [ "$CPU_INT" -gt "$CPU_THRESHOLD" ]
then
    echo "WARNING: High CPU utilization detected!"
else
    echo "CPU utilization is within normal range."
fi

echo ""
echo "Top CPU Consuming Processes:"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -6

echo ""
echo "CPU monitoring completed successfully."

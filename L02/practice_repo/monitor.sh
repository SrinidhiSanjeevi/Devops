#!/bin/bash

clear

while true
do
    echo "=================================================="
    echo "       Linux Monitoring Automation Toolkit        "
    echo "=================================================="

    echo ""
    echo "1. Check Disk Usage"
    echo "2. Check Memory Usage"
    echo "3. Monitor CPU Usage"
    echo "4. Backup System Logs"
    echo "5. Cleanup Temporary Logs"
    echo "6. View Generated Backup Logs "
    echo "7. Exit"
    echo ""

    read -p "Enter your choice: " choice

    echo ""

    case $choice in

        1)
            echo "Running Disk Monitoring Script..."
            bash scripts/disk_usage.sh
            ;;

        2)
            echo "Running Memory Monitoring Script..."
            bash scripts/memory_check.sh
            ;;

        3)
            echo "Running CPU Monitoring Script..."
            bash scripts/cpu_monitor.sh
            ;;

        4)
            echo "Running Backup Utility..."
            bash scripts/backup.sh
            ;;

        5)
            echo "Running Cleanup Utility..."
            bash scripts/cleanup.sh
            ;;

        6)
            echo "Available Backup Files:"
            echo ""

            if [ -d logs/backups ]
            then
                ls -lh logs/backups
            else
                echo "No backup directory found."
            fi
            ;;

        7)
            echo ""
            echo "Exiting Linux Monitoring Toolkit..."
            echo "Thank you for using the toolkit."
            exit 0
            ;;

        *)
            echo "Invalid option selected. Please try again."
            ;;
    esac

    echo ""
    read -p "Press Enter to continue..."
    clear

done

echo "System health check completed successfully"

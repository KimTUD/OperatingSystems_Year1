#!/bin/bash

while true
do
    echo "    *Bash Commands*    "
    echo ""
    echo "1. List files"
    echo "2. Show free disk space"
    echo "3. Show system path"
    echo "4. Display command history"
    echo "5. Backup files"
    echo "6. Exit"
    echo ""
    read -p "Enter your option: " option
    case $choice in
		1) ls ;;
		2) df -h ;;
		3) echo $PATH ;;
		4) history ;;
		5) read -p "Enter directory name: " dir
		   mkdir -p BackupFolder
		   cp -r $dir BackupFolder
		   echo "Backup created:"
		   ls BackupFolder ;;
		6) exit ;;
		*) echo "Invalid choice. Press enter to try again."
		   read ;;
    esac
done

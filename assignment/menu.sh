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
    case $option in
        1)
            ls;;
        2)
            df -h;;
        3)
            echo $PATH;;
        4)
            history;;
        5)
            read -p "Enter directory to backup: " dir
            mkdir BackupFolder
            cp -R $dir BackupFolder
            ls BackupFolder;;
        6)
            exit 0;;
        *)
            echo "Invalid choice.Try again.";;
    esac
done

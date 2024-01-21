#!/bin/bash

# Backup Script

# Set the date format, backup directory and source directory
DATE=$(date +%Y%m%d_%H%M%S)
BACKUP_DIR="/path/to/backup_directory"
SOURCE_DIR="/path/to/source_directory"

# Create a backup filename with date and time
BACKUP_FILENAME="backup_$DATE.tar.gz"

# Print start status message
echo "Starting backup of $SOURCE_DIR to $BACKUP_FILENAME"
date
echo

# Backup the files using tar
tar czf $BACKUP_DIR/$BACKUP_FILENAME $SOURCE_DIR

# Print end status message
echo
echo "Backup finished"
date

# Long listing of files in $dest to check file sizes
ls -lh $BACKUP_DIR

#!/bin/bash

# Log Analyzer Script

if [ $# -eq 0 ]; then
    echo "Usage: $0 <log_file>"
    exit 1
fi

LOG_FILE=$1
declare -A error_counts

while IFS= read -r line; do
    if [[ $line =~ \[([0-9-]+ [0-9:]+)\] (ERROR|WARN|INFO): (.*) ]]; then
        datetime="${BASH_REMATCH[1]}"
        log_level="${BASH_REMATCH[2]}"
        message="${BASH_REMATCH[3]}"

        ((error_counts[$log_level]++))
    fi
done < "$LOG_FILE"

echo "Log Analysis Report:"
echo "---------------------"
for level in "${!error_counts[@]}"; do
    echo "$level: ${error_counts[$level]}"
done

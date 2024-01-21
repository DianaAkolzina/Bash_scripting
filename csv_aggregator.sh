#!/bin/bash

# CSV Data Aggregator Script

# Function to calculate sum and average
function process_column {
    local -n numbers=$1
    local sum=0
    local count=0

    for number in "${numbers[@]}"; do
        sum=$(echo "$sum + $number" | bc)
        ((count++))
    done

    local average=$(echo "scale=2; $sum / $count" | bc)
    echo "Sum: $sum, Average: $average"
}

# Read CSV file and extract column data
FILENAME="data.csv"
COLUMN=3  # Column number to process (e.g., 3 for Salary)

declare -a column_data
while IFS=',' read -r -a line; do
    if [ "${line[0]}" != "Name" ]; then  # Skip header line
        column_data+=("${line[$COLUMN-1]}")
    fi
done < "$FILENAME"

# Process the extracted column
echo "Processing Column $COLUMN:"
process_column column_data

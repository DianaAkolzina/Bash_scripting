#!/bin/bash

# Data Filter Script

function filter_data {
    local column=$1
    local condition=$2
    local filename=$3
    local report_file=$4

    # Extract header
    head -n 1 $filename > $report_file

    # Filter data based on condition and append to report file
    awk -F',' -v col="$column" -v cond="$condition" '
        NR > 1 { 
            if ($col cond) 
                print $0 
        }' $filename >> $report_file
}

# Configuration
FILENAME="data.csv"
REPORT_FILE="filtered_report.csv"
COLUMN=2 # Column to filter (e.g., 2 for Age)
CONDITION='>=30' # Condition to filter (e.g., '>=30' for Age greater or equal to 30)

# Call filter function
filter_data $COLUMN "$CONDITION" $FILENAME $REPORT_FILE
echo "Filtered data saved to $REPORT_FILE"

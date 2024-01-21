# Bash Scripting Projects

This repository contains a collection of Bash scripting projects that demonstrate the basics of Bash scripting and its application in routine tasks.

## Project 1: Backup Script

### Description
This script provides a reliable method for automatically backing up a specified directory to a designated location.

### Usage
- Edit the script to set `BACKUP_DIR` for your backup destination and `SOURCE_DIR` for the directory you want to back up.
- Execute with `./backup_script.sh`.

### Script Details
- **Filename**: `backup.sh`
- **Features**: Compresses and backs up a designated directory.

---

## Project 2: Statistical Analysis Script

### Description
A script for performing basic statistical analysis on a series of numbers read from a text file.

### Usage
- Populate `numbers.txt` with one number per line.
- Execute with `./stat_an.sh`.

### Script Details
- **Filename**: `stat_an.sh`
- **Features**: Calculates mean, median, and standard deviation.

---

## Project 3: CSV Data Aggregator

### Description
Processes a CSV file to perform aggregate calculations on a specified column.

### Usage
- Ensure `data.csv` is in the same directory. Configure `FILENAME` and `COLUMN` in the script.
- Execute with `./csv_aggregator.sh`.

### Script Details
- **Filename**: `csv_aggregator.sh`
- **Features**: Aggregates data from a chosen CSV column.

---

## Project 4: Data Filter Script

### Description
Filters rows from a CSV file based on user-defined conditions and outputs the filtered data.

### Usage
- Prepare `data.csv` with your data. Configure `FILENAME`, `COLUMN`, `CONDITION`, and `REPORT_FILE` in the script.
- Execute with `./data_filter.sh`.

### Script Details
- **Filename**: `data_filter.sh`
- **Features**: Filters and reports data based on conditions.

---

## Project 5: Log Analyzer Script

### Description
Analyzes server log files to extract key information like error codes and frequencies.

### Usage
- Ensure you have a log file like `server.log`.
- Execute with `./log_analyzer.sh server.log`.

### Script Details
- **Filename**: `log_analyzer.sh`
- **Features**: Analyzes logs and generates a summary report.

### Advanced Concepts Demonstrated
- **Command-Line Argument Parsing**: Accepts a log filename as an argument.
- **Associative Arrays**: Counts occurrences of log levels.
- **Regular Expressions**: Extracts data from log entries.
- **File Manipulation**: Processes data from log files.

---

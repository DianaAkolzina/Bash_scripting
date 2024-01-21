# Bash_scripting

Collection of projects that summarise the basics and showcase the usage of bash scripting as everyday routine.

## Project 1: Backup Script

### Description
This script automatically backs up a specified directory to a chosen location. It is useful for routine data backups.

### Usage
1. Edit the script to set `BACKUP_DIR` to your backup destination directory and `SOURCE_DIR` to the directory you want to back up.
2. Run the script using the command `./backup_script.sh`.

### Script Details
- **Filename**: `backup.sh`
- **Functionality**: Creates a compressed backup of the specified directory.

---

## Project 2: Statistical Analysis Script

### Description
This script reads a series of numbers from a text file and calculates the mean, median, and standard deviation.

### Usage
1. Place your numbers in a text file, each number on a new line, and name the file `numbers.txt`.
2. Run the script using the command `./stat_an.sh`.

### Script Details
- **Filename**: `stat_an.sh`
- **Functionality**: Performs statistical analysis on a set of numbers.
- **Input File Format**: A text file named `numbers.txt`, with one number per line.

---

## Project 3: CSV Data Aggregator

### Description
The `csv_aggregator.sh` script is designed to process CSV (Comma-Separated Values) files for data analysis tasks. It reads data from a specified CSV file, extracts values from a chosen column, and performs aggregate calculations such as summing up the values and calculating their average. This script is particularly useful for quick analyses of datasets where specific numerical insights are needed from certain columns.

### Usage
1. Ensure your CSV file (e.g., `data.csv`) is in the same directory as the script. The CSV file should have a header row and values separated by commas.
2. Open the script `csv_aggregator.sh` and set the `FILENAME` variable to your CSV file's name.
3. Set the `COLUMN` variable to the column number you wish to analyze (e.g., `3` for the third column).
4. Run the script using the command: ./csv_aggregator.sh


### Script Details
- **Filename**: `csv_aggregator.sh`
- **Functionality**: Reads a specified column from a CSV file and calculates the sum and average of the numerical values in that column.
- **Input**: A CSV file with structured data. The script assumes the first row is a header row.
- **Output**: Prints the sum and average of the values in the selected column to the console.

### Example CSV File
Name,Age,Salary
Alice,30,50000
Bob,35,55000
Carol,29,48000
Dave,40,60000

In this example, if the script is set to process the third column (`Salary`), it will calculate and output the sum and average of the salary values.

### Customization
The script can be easily modified to process different files or columns. Additional functionalities like median calculation, handling different delimiters, or processing multiple columns simultaneously can be added as needed.

For any questions or custom feature requests, please feel free to reach out to the script maintainer.

---

## Project 4: Data Filter Script

### Description
`data_filter.sh` is a Bash script designed for filtering rows from a CSV file based on user-defined conditions. The script reads a CSV file, filters its rows according to specified criteria (like age or salary), and then outputs the filtered data to a new CSV file. This script is ideal for quick data extraction and reporting tasks.

### Usage
1. Prepare your data in a CSV file named `data.csv`. Ensure the CSV file has a header row and values separated by commas.
2. Open the script `data_filter.sh` and configure the variables:
   - `FILENAME`: Name of your CSV file.
   - `COLUMN`: Column number for applying the filter (e.g., `2` for Age).
   - `CONDITION`: Filter condition (e.g., `'>=30'` for Age greater or equal to 30).
   - `REPORT_FILE`: Name of the output file for filtered data.
3. Run the script using the command: ./data_filter.sh

   The filtered data will be saved to the specified report file.

### Script Details
- **Filename**: `data_filter.sh`
- **Functionality**: Filters data from a CSV file based on a specified condition and generates a report.
- **Input**: A CSV file with structured data. The script assumes the first row is a header row.
- **Output**: A new CSV file containing rows that meet the filter condition.

### Example CSV File
Name,Age,Salary
Alice,30,50000
Bob,35,55000
Carol,29,48000
Dave,40,60000


### Customization
- Modify the script to filter based on different columns or conditions as per your data requirements.
- The script can be extended to support more complex filters or to process multiple conditions simultaneously.

Feel free to reach out to the script maintainer for questions or feature requests.

---



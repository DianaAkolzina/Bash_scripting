#!/bin/bash

# Statistical Analysis Script

# Read numbers from a file into an array
readarray -t numbers < numbers.txt

# Calculate the mean
sum=0
for num in "${numbers[@]}"; do
    sum=$(echo "$sum + $num" | bc)
done
count=${#numbers[@]}
mean=$(echo "scale=2; $sum / $count" | bc)

# Sort numbers and calculate median
IFS=$'\n' sorted=($(sort -n <<<"${numbers[*]}"))
unset IFS
mid=$((count / 2))
if ((count % 2)); then
    median=${sorted[$mid]}
else
    median=$(echo "scale=2; (${sorted[$mid-1]} + ${sorted[$mid]}) / 2" | bc)
fi

# Calculate standard deviation
sum_sq=0
for num in "${numbers[@]}"; do
    sum_sq=$(echo "$sum_sq + ($num - $mean)^2" | bc)
done
std_dev=$(echo "scale=2; sqrt($sum_sq / $count)" | bc)

# Print results
echo "Numbers: ${numbers[@]}"
echo "Mean: $mean"
echo "Median: $median"
echo "Standard Deviation: $std_dev"

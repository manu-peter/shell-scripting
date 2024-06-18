#!/bin/bash

echo "Current CPU Usage"

# Get the CPU idle percentage using awk and filtering for idle percentage (may vary with system)
cpu=$(mpstat | awk '$12 ~ /[0-9.]+/ {print $NF}')

if [[ -z "$cpu" ]]; then
    echo "Failed to retrieve CPU idle percentage."
    exit 1
fi

echo "CPU Idle Percentage: $cpu"

# Calculate CPU usage percentage
cpu_usage=$(bc <<< "scale=1; 100 - $cpu")
echo "CPU Usage Percentage: $cpu_usage"


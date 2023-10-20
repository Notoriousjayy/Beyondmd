#!/bin/bash

# Function to display CPU information
function display_cpu_info {
    echo "CPU Information:"
    echo "Number of CPU cores: $(nproc)"
    echo "CPU load: $(top -n 1 -b | grep "Cpu(s)" | awk '{print $2 + $4 "%"}')"
}

# Function to display memory usage
function display_memory_info {
    echo -e "\nMemory Information:"
    free -m
}

# Function to display disk usage
function display_disk_info {
    echo -e "\nDisk Usage:"
    df -h
}

# Function to display active users
function display_active_users {
    echo -e "\nActive Users:"
    who
}

# Function to display running processes
function display_running_processes {
    echo -e "\nRunning Processes:"
    ps aux
}

# Main function to call other functions
function main {
    display_cpu_info
    display_memory_info
    display_disk_info
    display_active_users
    display_running_processes
}

# Call the main function
main


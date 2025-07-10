#!/bin/bash

LOCK_FILE="/tmp/lockfile"
TIMEOUT=60  # Timeout in seconds

# Function to acquire lock
acquire_lock() {
    if [ -f "$LOCK_FILE" ]; then
        echo "Another process is already running. Exiting."
        exit 1
    fi
    echo $$ > "$LOCK_FILE"
}

# Function to release lock
release_lock() {
    rm -f "$LOCK_FILE"
}

# Function to check if lock is acquired
check_lock() {
    if [ -f "$LOCK_FILE" ]; then
        pid=$(cat "$LOCK_FILE")
        if ps -p "$pid" > /dev/null; then
            echo "Another process is already running. Exiting."
            exit 1
        else
            # Lock file exists but process is not running, remove stale lock
            rm -f "$LOCK_FILE"
        fi
    fi
}

# Main function
main() {
    acquire_lock
    
    # Perform actions here
    echo "Lock acquired. Performing actions..."

    # Simulating some time-consuming process
    sleep 10

    echo "Actions completed."

    release_lock
}

# Check if lock is already acquired by another process
check_lock

# Execute main function
main


#!/bin/bash

# Path to the Apache access log
log_file="/var/log/apache2/access.log"

# Parse the log file and group by IP and HTTP code, then count occurrences
awk '{print $1, $9}' "$log_file" | sort | uniq -c | sort -nr | awk '{print $1, $2, $3}'

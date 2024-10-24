#!/bin/bash

summary=$(grep -A 2 "Summary" resume.txt)

cleaned_summary=$(echo "$summary" | tr -cd '[:alpha:]' | tr '[:upper:]' '[:lower:]')

unique_characters=$(echo "$cleaned_summary" | fold -w1 | sort -u | tr -d '\n')

echo "Summary:"
echo "$summary"
echo ""
echo "Unique Alphabetic Characters:"
echo "$unique_characters"

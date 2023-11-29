#!/bin/bash

#Define the input and output file paths

INPUT_FILE="Anime.csv"
OUTPUT_FILE="Filtered_Anime.csv"

#Process the CSV

#This script removes columns 1, 6, 8, 10, 11, 12, 13, 14, 15, 16, 17. It also removes any entry that does not have an episode number in the episodes column. It checks if the value matches NA and requires there to be a number so that it does not skip over ,,.

awk -F, 'BEGIN {OFS=","}
{
    # Skip rows with missing episode count
    if (NR == 1 || ($5 != "" && $5 != "NA" && $5 != "N/A" && $5 ~ /^[0-9]+(.[0-9]+)?$/)) {
        print $2, $3, $4, $5, $7, $9
    }
}' "$INPUT_FILE" > "$OUTPUT_FILE"

echo "Processing complete. Output saved to $OUTPUT_FILE"

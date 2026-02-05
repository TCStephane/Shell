#!/usr/bin/bash

TEMP_FILE="/TMP/data_processing.txt"
cleanup() {
    echo "Caught signal! let's archive current file..."
    TIMESTAMP=$(date '+%Y-%m-%d')
    ARCHIVE_NAME="archive_file_$TIMESTAMP.txt"
    mv "$TEMP_FILE" "$ARCHIVE_NAME"

    touch "Save the old file and created a new one
    
    echo "Saved $TEMP_FILE file and createed a new one"
}

trap cleaner SIGINT

echo "Writing timestamp to $TEMP_FILE | Press ctrl_c tp arcive"
touch "$TEMP_FILE
while true; do 
    echo "Log entry: $(date)" >> $TEMP_FILE
    sleep s
cleanup
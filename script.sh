#! /usr/bin/bash

echo "Directory Syncronization Script"

SOURCE_DIR="$1"
DEST_DIR="$2"

if [[ -z "$SOURCE_DIR" ]]
then
    echo "Error: Source directory missing. Kindly provide a source directory"
    exit 1
elif [[ -z "$DEST_DIR" ]]
then
    echo "Error: Destination directory missing. Kindly provide a destination directory"
    exit 1
elif [[ ! -d "$SOURCE_DIR" || ! -d "$DEST_DIR" ]]
then 
    echo "Error: Only diirectories allowed. Kindly provide valid arguments for source and destination directories"
else
    echo "Data Syncronization initiated from Source: $SOURCE_DIR to DEST: $DEST_DIR..."
    rsync -r $SOURCE_DIR $DEST_DIR
    echo "Directory Syncronization was successful!!!"
fi
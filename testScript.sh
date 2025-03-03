#!/bin/bash


# Variables
BASE_DIR="/root/HW_19"
DIR1="$BASE_DIR/first_directory"
DIR2="$BASE_DIR/second_directory"

# Create directories if they do not exist

mkdir -p "$DIR1" "$DIR2"



# Create 100 files with random numeric filenames in first_directory

for i in {1..100};
do
        FILE="$DIR1/$RANDOM"

        # Check if the file does not exist before creating
        if [ ! -e "$FILE" ]; then
                touch "$FILE"
        fi
done

echo "100 files created in $DIR1"


# Move files with even numeric names to second_directory

for file in "$DIR1"/*;
do
        filename=$(basename "$file")

	if ((filename % 2 == 0 )); then
                mv "$file" "$DIR2/"
        fi
done

echo "Moved even filenames to second_directory"




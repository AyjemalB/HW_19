#!bin/bash

# mv even files other directory

for file in /first_directory/*;
do
	filename=$(basename "$file")
	if ((filename % 2 == 0));then
		mv "$file" /second_directory/
	fi
done

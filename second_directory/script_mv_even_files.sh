#!bin/bash

# mv even files other directory

for file in /root/first_directory/*;
do
	filename=$(basename "$file")
	if ((filename % 2 == 0));then
		mv "$file" /root/second_directory/
	fi
done

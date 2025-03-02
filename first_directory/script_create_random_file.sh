#!bin/bash


# Create 100 file with random name 
for i in {1..100};
do
	echo "File content $RANDOM" >/root/HW_19/first_directory/$RANDOM
done


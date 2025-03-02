#!bin/bash


# Create 100 file with random name 
for i in {1..100};
do
	filename=$(($RANDOM))
	touch "$filename"
	
done


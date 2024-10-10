#!/bin/bash


#Check if two arguments are provided
if [ $# -ne 2 ]; then
	echo "Error: Two arguments are required."
	exit 1
fi

writefile=$1
writestr=$2

#If the directory does not exist we create it
mkdir -p "$(dirname "$writefile")"

#We write or overwrite the file:
echo "$writestr">"$writefile"

#check for file creation:
if [ $? -ne 0 ]; then
	echo "Error: The file $writefile could not be created"
	exit 1
fi

echo "File $writefile created successfully with content: $writestr"


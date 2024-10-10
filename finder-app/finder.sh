#!/bin/bash


# Check if two arguments are provided
if [ $# -ne 2 ]; then
	echo "Error: You need TWO ARGUMENTS!! "
	echo "Usage: $0 <directory_path> <search_string>"
	exit  1
fi

# We assign the arguments to variables
filesdir=$1
searchstr=$2

# We look for the directories
if [ ! -d "$filesdir" ]; then
	echo "Error: $filesdir is not a directory!!"
	exit 1
fi

#Now we Find the number of files in the directory and subdirectories (X)
X=$(find "$filesdir" -type f | wc -l)

#Find Matching lines (Y) (2>/dev/null is to avoid outputting error messages)
Y=$(grep -r "$searchstr" "$filesdir" 2>/dev/null | wc -l) 

#Output of result
echo "The number of files are $X and the number of matching lines are $Y"



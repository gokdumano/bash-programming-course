#!/bin/bash

# Write a shell script that prompts the user for a name of a file or directory and reports if it is a
# regular file, a directory, or other type of file.
# Also perform an ls command against the file or directory with the long listing option.

read -p "Enter the name of file/directory: " FNAME

if [ -f $FNAME ]
then
	echo "$FNAME is a regular file."
elif [ -d $FNAME ]
then
	echo "$FNAME is a directory."
	ls -l
else
	echo "$FNAME is an other type of file."
fi

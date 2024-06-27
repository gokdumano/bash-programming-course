#!/bin/bash

# Modify the previous script to accept an unlimited number of files and directories as arguments.
# Hint: You'll want to use a special variable.

for FNAME in $@
do
	if [ -f $FNAME ]; then
		echo "$FNAME is a regular file."
	elif [ -d $FNAME ]; then
		echo "$FNAME is a directory."
		ls -l
	else
		echo "$FNAME is an other type of file"
	fi
done

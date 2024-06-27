#!/bin/bash

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

#!/bin/bash

# Modify the previous script so that it accepts the file or directory name as an argument instead of
# prompting the user to enter it.

FNAME=$1

if [ -f $FNAME ]; then echo "$FNAME is a regular file."
elif [ -d $FNAME ]; then echo "$FNAME is a directory" &&  ls -l
else echo "$FNAME is an other type of file"; fi

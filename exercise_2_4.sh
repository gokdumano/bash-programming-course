#!/bin/bash

# Write a shell script to check to see if the file "/etc/shadow" exists. If it does exist, display
# "Shadow passwords are enabled." Next, check to see if you can write to the file. If you can,
# display "You have permissions to edit /etc/shadow." If you cannot, display "You do NOT have
# permissions to edit /etc/shadow."

FPATH="/etc/shadow"

if [ -f $FPATH ]
then
	echo "Shadow passwords are enabled"
	if [ -w $FPATH ]
	then
		echo "You have permission to edit $FPATH"
	else
		echo "You do NOT have permision to edit $FPATH"
	fi
else
	echo "Shadow passwords are disabled"
fi

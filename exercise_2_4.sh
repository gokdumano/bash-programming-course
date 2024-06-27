#!/bin/bash

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

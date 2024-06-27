#!/bin/bash

# Modify the script from the previous exercise. Make the "file_count"
# function accept a directory as an argument. Next have the
# function display the name of the directory followed by a colon.
# Finally, display the number of files to the screen on the next
# line. Call the function three times. First, on the "/etc"
# directory, next on the "/var" directory and finally
# on the "/usr/bin" directory.

function file_count(){
	local DIRPATH=$(readlink -f $1)
	if [ -d $DIRPATH ]; then
		echo $DIRPATH
		echo " $(ls -1 $DIRPATH | wc -l)"
	fi
}

for DIRPATH in $@; do
	file_count $DIRPATH
done

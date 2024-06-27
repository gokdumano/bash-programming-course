#!/bin/bash

# Write a shell script that consists of a function that
# display the number of files in the present working
# directory. Name this function "file_count" and call
# it in your script. If you use a variable in your function,
# remember to make it a local variable.
# 
# Hint: The wc utility is used to count the number of
# lines, words, and bytes. 

function file_count(){
	if [ $# -eq 0 ]; then
		local DIRPATH=$(readlink -f .)
	elif [ -d $1 ]; then
		local DIRPATH=$(readlink -f $1)
	else
		echo "$1 is not a (valid) directory"
		return 1
	fi

	local FILECOUNT=$(ls -1 $DIRPATH | wc -l)
	
	echo "There are $FILECOUNT files under $DIRPATH"
	return 0
}

file_count $@

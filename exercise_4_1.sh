#!/bin/bash

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

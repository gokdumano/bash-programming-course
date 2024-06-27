#!/bin/bash

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

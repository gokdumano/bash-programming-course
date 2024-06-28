#!/bin/bash

# Write a script that renames files based on the file extension.
# The script should prompt the user for a file extension. Next,
# it should ask the user what prefix to prepend to the file name(s).
# By default the prefix should be the current date in YYYY­MM­DD
# format. So, if the user simply presses enter the date will be used.
# Otherwise, whatever the user entered will be used as the prefix.
# Next, it should display the original file name and the new name
# of the file. Finally, it should rename the file.


function listFiles(){
	declare -n OUTPUT=$3
	OUTPUT=$(ls -1q $1 | grep "\.$2$")
}

function renameFiles(){
	local DPATH=$(readlink -f $1)
	local SUFFIX=$2
	local PREFIX=$3

	listFiles $DPATH $SUFFIX FNAMES

	for FNAME in $FNAMES; do
		local OLDPATH="${DPATH}/${FNAME}"
		local NEWPATH="${DPATH}/${PREFIX}${FNAME}"
		echo "$OLDPATH -> $NEWPATH"
	done
}

echo $#

if [ $# -eq 3 ]; then
	renameFiles $1 $2 $3
elif [ $# -eq 2 ]; then
	renameFiles $1 $2 $(date +'%Y%m%d')
else
	exit 1
fi

exit 0

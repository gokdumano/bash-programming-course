#!/bin/bash

# Write a shell script that renames all files in the current
# directory that end in ".jpg" to begin with today's date in the
# following format: YYYY­MM­DD. For example, if a picture of my
# cat was in the current directory and today was October 31, 2016
# it would change name from "mycat.jpg" to "2016­10­31­mycat.jpg".
# 
# Hint: Look at the format options to the date command.
# 
# For "extra credit" make sure to gracefully handle instances
# where there are no ".jpg" files in the current directory.
# (Hint: Man bash and read the section on the nullglob option.)

[ $# -le 0 ] && exit 1

for _ in $@; do
	DIRNAME=$(readlink -f $_)
	if [ -d $DIRNAME ]; then
		echo "Scanning $DIRNAME"
		for OLDNAME in $(ls -1q $DIRNAME | grep '\.jpg$'); do
			NEWNAME="$(date +'%Y%m%d')$OLDNAME"
			NEWPATH="${DIRNAME}/${NEWNAME}"
			OLDPATH="${DIRNAME}/${OLDNAME}"
			mv $OLDPATH $NEWPATH
			echo "   $OLDPATH -> $NEWPATH"
		done
	fi
done
exit 0

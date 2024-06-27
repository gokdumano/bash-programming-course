#!/bin/bash
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

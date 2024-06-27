#!/bin/bash

cat /etc/shadow

if [ 0 -eq $? ]; then
	echo "Command succeeded."
	exit 0
else
	echo "Command failed."
	exit 1
fi

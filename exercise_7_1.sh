#!/bin/bash

case "$1" in
	[sS][tT][aA][rR][tT])
		/tmp/sleepwalkingserver &
		;;
	[sS][tT][oO][pP])
		kill $(cat /tmp/sleepwalkingserver.pid)
		;;
	*)
		echo "usage: $0 start|stop"; exit 1
		;;
esac

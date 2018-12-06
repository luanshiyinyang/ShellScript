#!/bin/bash
case $1 in 
	start)
		google-chrome &
		;;
	stop)
		pkill chrome
		;;
	restart)
		pkill chrome
		google-chrome &
		;;
	*)
		echo "Usage:$0 (start|stop|restart)"
		;;
esac

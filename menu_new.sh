#!/bin/bash
while true
do
	clear
	echo "---------------------"
	echo "1.Display CPU info:"
	echo "2.Display system load:"
	echo "3.Display Mem and swap info:"
	echo "4.Display filesystem mount info:"
	echo "5.Exit Program"
	echo "---------------------"
	read -p "please select you item:" U_SELECT
	case $U_SELECT in
		1)
			echo $(cat /proc/cpuinfo)
			read -p "please enter to continue"
			;;
		2)
			echo $(uptime)
			read -p "please enter to continue"
			;;
		3)
			echo $(free)
			read -p "please enter to continue"
			;;
		4)
			echo $(df -h)
			read -p "please enter to continue"
			;;
		5)
			exit 0
			;;
		*)
			read -p "please enter to continue"
			;;
	esac
done

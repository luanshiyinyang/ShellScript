#!/bin/bash
case $1 in
	[a-z]|[A-Z])
	echo "you have type a char:$1"
	;;
[[:digit:]])
	echo "you have type a number:$1"
	;;
*)
	echo "输入有误"
	;;
	esac

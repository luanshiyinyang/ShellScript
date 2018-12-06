#!/bin/bash
DATE=$(date +%a)
TIME=$(date +%Y%m%d)

case $DATE in 
	Mon | 四)
	tar -czvf /home/zhouchen/Desktop/${TIME}_log_tar.gz /var/log &>/dev/null
	echo "${TIME}的日志备份成功"
	;;
*)
	echo "备份失败"
	echo "Today is ${DATE}"
	;;
	esac

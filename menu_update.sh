#!/bin/bash
#优化版本的menu

#打印提示符
HINT(){
        read -p "Press Enter to continue"
}
#查看CPU信息
CPU_INFO(){
	echo
	echo -e "*\033[1;31mPrint the CPU info:\033[0m"
	cat /proc/cpuinfo | awk 'BEGIN {FS=":"} /model name/{print "CPU Model:"$2}'
	echo
}
#查看系统负载
LOAD_INFO(){
	echo 
	uptime | awk 'BEGIN{FS=":"}{print $5}' | awk 'BEGIN{FS=","}{print "Last 1 min:"$1"\n" "Last 5 min :"$2"\n" "Last 15 min:$3"}'
	echo
}
#查看内存与交换分区信息
MEM_INFO(){
	echo
	free | grep buffers/cache | awk '{print "Mem free:"$4" Bytes"}'
	echo
}
#磁盘挂载信息
DISK_INFO(){
	echo
	echo -e "\033[4;31mPrint the disk space info:\033[0m"
	df -hT
	echo
}

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
			CPU_INFO
			HINT
			;;
		2)
			LOAD_INFO
			HINT
			;;
		3)
			MEM_INFO
			HINT
			;;
		4)
			DISK_INFO
			HINT
			;;
		5)
			break
			;;
		*)
			read -p "please enter to continue"
			;;
	esac
done

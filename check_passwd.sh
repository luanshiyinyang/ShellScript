#!/bin/bash
#用户的初始密码
PASSWD="passwd"
#计数器
SUM=0
while true
do
	read -p "Please input your pasword:" pass
	SUM=$((SUM+1))
	if [ $pass == $PASSWD ];then
		echo "Your passwd Right."
		break
	elif [ $SUM -lt 3 ];then
		continue
	else
		echo "your passwd error"
		break
	fi
done

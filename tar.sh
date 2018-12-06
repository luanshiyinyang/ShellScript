#!/bin/bash
#判断当前用户是否root用户，是则备份home目录
if [ "$(id -u)" -eq "0" ]
then
	tar -czvf /root/home.tar.gz /home &> /dev/null
	echo "backup success!!!"
else
	echo "please root login---"
fi

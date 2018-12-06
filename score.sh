#!/bin/bash
#test score
if [ $1 -ge 90 ];then
	echo "大于90"
elif [ $1 -ge 80 ];then
	echo "大于80"
elif [ $1 -ge 70 ];then
	echo "大于70"
elif [ $1 -ge 60];then
	echo "大于60"
else
	echo "不及格"
fi

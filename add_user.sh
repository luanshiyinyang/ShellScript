#!/bin/bash
# Add twenty users with while
NUM=1
while [ $NUM -le 20 ]
do
	useradd TL${NUM}
	echo TL${NUM}"创建成功"
	ID=`id TL${NUM}`
	echo TL${NUM}"用户的UID号为"id TL${ID}
	NUM=$((NUM+1))
done

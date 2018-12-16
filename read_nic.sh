#!/bin/bash
FILE=/etc/inxi.conf
while read -r line
do
	echo $line
done < $FILE

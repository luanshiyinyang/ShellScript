#!/bin/bash
#delete user
NUM=20
until [ $NUM -eq 0 ]
do
	userdel -r TL${NUM}
	NUM=$((NUM - 1))
done

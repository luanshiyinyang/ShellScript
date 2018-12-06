#!/bin/bash
#read password and test.
read -p "input a password:" password
if [ "$password" == "123123" ]
then
	echo "the password OK!"
else
	echo "The password error"
fi

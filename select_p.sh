#!/bin/bash
echo "where are you from?"
select var in 'BJ' 'CD' 'GH' 'ZC'
do
	break
done
	echo "You are from $var"

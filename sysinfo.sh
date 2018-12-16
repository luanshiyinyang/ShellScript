#!/bin/bash
#This script can be used to collect systemm basic infomation
echo "............................................"
echo "Display CPU info"
echo $(cat /proc/cpuinfo | grep 'model name')
echo "............................................"
echo "Display system load!"
echo $(uptime)
echo "............................................"
echo "Display Mem and swap info :"
echo $(free | grep wap)
echo "............................................"
echo "Display filesystem mount info"
echo $(df -hT |grep 'boot')
echo "............................................"
echo "Display network interface info"
echo $(ip add show|grep inet)
echo "............................................"

#/bin/bash
#This is a menu script
# 清空屏幕
clear
echo "*************************"
# echo -e 开启转义功能
# \033[1,31m 颜色输出 1为样式与前景色，31为字体颜色 \033[0m 关闭颜色设置
echo -e "*\033[1;31m\t\t\tMenu\t\t\033[0m*"

echo "1.Display system CPU info and system load"
echo "2.Display system Mem info and swap info"
echo "3.Display filesysytem mount info"
echo "4.Display system network interface info"
echo "5.EXIT"

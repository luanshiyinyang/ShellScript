#!/bin/bash
# 自动部署DHCP服务器 网段192.168.56.0/24
NET=192.168.56.0
MASK=255.255.255.0 
RANGE="192.168.56.30 192.168.56.40"
DNS=8.8.8.8
DOMAIN_NAME="example.com"
ROUTER=192.168.56.254
# test yum
test_yum(){
yum list dhcp > /dev/null 2& >1
if [ $? -ne 0 ];then
	echo
	echo "There was an error to yum!!!"
	echo "verify your yum."
	exit
fi
}

# copy config
test_conf(){
if [ -f /etc/dhcp/dhcpd.conf ];then
	mv /etc/dhcp/dhcpd.conf /etc/dhcp/dhcpd.conf.bak
fi
}

# create new config
create_conf(){
cat > /etc/dhcp/dhcpd.conf << EOF
#dhcpd.conf
default-lease-time 600;
max-lease-time 7200;
subnet 192.168.56.0 netmask 255.255.255.0 {
  range $RANGE;
  option domain-name-servers $DNS;
  option domain-name "$DOMAIN_NAME";
  option routers  $ROUTER;
  option broadcast-address 192.168.56.255;
  default-lease-time 600;
  max-lease-time 7200;}
host client {
  hardware ethernet 08:00:27:8e:40:34;
  fixed-address 192.168.56.33;
}
EOF
}
rpm - dhcp > /dev/null 2& >1
if [ $? -ne 0 ];then
test_yum
yum install dhcp -y >/dev/null 2& >1
fi
test_conf
create_conf
systemctl restart dhcpd
systemctl enable dhcpd
sleep 10

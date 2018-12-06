#!/bin/bash
DOMAIN=163.com
for MAIL_USER in zc,zb,za
do
	mail -s "LOG" $MAIL_USER@$DOMAIN < /var/log/messages
	echo "$MAIL_USER邮件发送成功"
done

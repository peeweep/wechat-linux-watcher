#!/bin/bash

wget https://dldir1v6.qq.com/weixin/Universal/Linux/WeChatLinux_x86_64.deb -O /tmp/wechat-amd64.deb
if [ -f /tmp/wechat-amd64.deb ];then
	dpkg --info /tmp/wechat-amd64.deb  | grep Version | awk  '{print $NF}' >> wechat-linux-version.txt
fi

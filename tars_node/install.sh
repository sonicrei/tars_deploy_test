#!/bin/bash

# 获取环境变量
WEBHOST=${WEBHOST:-"tars-framework:3000"}
LOCALIP=${LOCALIP:-$(hostname -i)}
RUNUSER=${RUNUSER:-"root"}

# 下载tarsnode安装脚本
wget "http://${WEBHOST}/get_tarsnode?ip=${LOCALIP}&runuser=${RUNUSER}" -O /root/tarsnode_install.sh

# 创建安装目录
mkdir -p /usr/local/app/tars/tarsnode

# 执行安装脚本
sh /root/tarsnode_install.sh

# 添加crontab监控
echo "* * * * * /usr/local/app/tars/tarsnode/util/monitor.sh" > /root/tarsnode.crontab
crontab /root/tarsnode.crontab

# 启动cron服务
service cron start
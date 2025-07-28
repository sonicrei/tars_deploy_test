# FROM tarscloud/tars.cppbase
FROM ubuntu:20.04

# 安装必要的工具
RUN apt update && apt install -y wget cron

# 创建必要的目录
RUN mkdir -p /usr/local/app/tars/tarsnode

# 创建安装脚本
COPY ./install.sh /root/install.sh
RUN chmod +x /root/install.sh

# 设置启动脚本
COPY ./start.sh /root/start.sh
RUN chmod +x /root/start.sh

# 设置工作目录
WORKDIR /root

# 设置启动命令
CMD ["/root/start.sh"]
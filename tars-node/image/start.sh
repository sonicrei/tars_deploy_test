#!/bin/bash

# 启用coredump
ulimit -c unlimited
sysctl -w kernel.core_pattern=/usr/local/app/tars/tarsnode/core.%e.%p.%t

# 执行安装脚本
/root/install.sh

# 保持容器运行
tail -f /dev/null
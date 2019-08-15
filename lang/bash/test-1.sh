#!/usr/bin/bash
# Program:
#   Show your identity and your working directory
# History:
# 2019/06/01  luoheng  First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin/:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo "$(whoami)"
echo "$(pwd)"
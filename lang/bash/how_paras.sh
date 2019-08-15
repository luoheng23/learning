#!/usr/bin/bash
# Program:
#   This program shows script name, parameters
# History:
# 2019/06/01  luoheng  First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin/:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo "The program's name is $0"
echo "The number of parameters is $#"
[ "$#" -lt 2 ] && echo "lack of parameter!" && exit 0
echo "all paras: $@ $*"
echo "The first para: $1"
echo "The second para: $2"
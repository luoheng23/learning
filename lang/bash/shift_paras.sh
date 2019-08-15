#!/usr/bin/bash
# Program:
#   This program shows script name, parameters
# History:
# 2019/06/01  luoheng  First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin/:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo "number of paras ==> $#"
echo "Your whole parameter is ==> '$@'"
shift
echo "number of paras ==> $#"
echo "Your whole parameter is ==> '$@'"
shift 3
echo "number of paras ==> $#"
echo "Your whole parameter is ==> '$@'"

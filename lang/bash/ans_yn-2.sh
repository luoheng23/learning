#!/usr/bin/bash
# Program:
#   This program shows the user's choice
# History:
# 2019/06/01  luoheng  First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin/:/usr/local/bin:/usr/local/sbin:~/bin
export PATH


read -p "Please input (Y/N): " choice
if [ "${choice}" == "Y" ] || [ "${choice}" == "y" ]; then
    echo "OK, continue"
    exit 0
fi

if [ "${choice}" == "N" ] || [ "${choice}" == "n" ]; then
   echo "Oh, interrupt"
   exit 0
fi

echo "I don't know what your choice is"
exit 0

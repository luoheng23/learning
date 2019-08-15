#!/usr/bin/bash
# Program:
#   This program is to test file exist or not, if exist, test if it's regular file or directory,
#   and test if the executor has the write or read right.
# History:
# 2019/06/01  luoheng  First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin/:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo "This program is to test your input file\n"
read -p "Please input your filename: " filename

filename=${filename:-"filename"}

test -e ${filename} || echo "Filename does not exist" && exit 0

test -d ${filename} && echo "Filename is directory" || echo "Filename is regular file"
test -r ${filename} && echo "r"
test -w ${filename} && echo "w"
test -x ${filename} && echo "x"
test -u ${filename} && echo "u"
test -g ${filename} && echo "g"
test -k ${filename} && echo "k"
test -s ${filename} && echo "s"

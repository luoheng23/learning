#!/usr/bin/bash
# Program:
#   Count from 1 to user input
# History:
# 2019/06/01  luoheng  First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin/:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

read -p "Please enter destination: " final

s=0
for ((i=1; i<=${final}; i++))
do
    s=$((${s} + ${i}))
done

echo "The result of '1+2+3+...+${nu}' is ==> ${s}"

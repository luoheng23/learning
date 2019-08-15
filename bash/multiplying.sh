#!/usr/bin/bash
# Program:
#   User inputs 2 integer numbers; program will cross these two numbers
# History:
# 2019/06/01  luoheng  First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin/:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo "You input 2 numbers, I will multiplying them!\n"
read -p "first number: " firstnu
read -p "second number: " secnu

total=$((${firstnu}*${secnu}))
echo "\nThe result of ${firstnu} x ${secnu} is ==> ${total}"
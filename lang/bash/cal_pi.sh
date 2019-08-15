#!/usr/bin/bash
# Program:
#   User input a scale number to calculate pi number.
# History:
# 2019/06/01  luoheng  First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin/:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo "This program will calculate pi value. \n"
echo "You should input a float nubmer to calculate pi value.\n"
read -p "The scale number (10~10000): " checking

num=${checking:-"10"}

echo "Starting calculating pi value. Be patient."
time --verbose echo "scale=${num};4*a(1)" | bc -lq
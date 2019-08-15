#!/usr/bin/bash
# Program:
#   Check if $1 is equal to "hello"
# History:
# 2019/06/01  luoheng  First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin/:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

case ${1} in
    "hello")
        echo "Hello, how are you ?"
        ;;
    "")
        echo "You MUST input parameters, ex> {${0} someword}"
        ;;
    *)
        echo "The only parameter is 'hello', ex> {${0} hello}"
        ;;
esac
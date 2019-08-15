#!/usr/bin/bash
# Program:
#   Using netstat and grep to detect WWW,SSH,FTP and mail services.
# History:
# 2019/06/01  luoheng  First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin/:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo "Now, I will detect your linux server's services!"
echo "The www, ftp, ssh and mail(smtp) will be detected!"

testfile=/dev/shm/netstat_checking.txt
netstat -tuln > ${testfile}
testing=$(grep ":80" ${testfile})
if [ "${testing}" != "" ]; then
    echo "WWW is running in your system."
fi
testing=$(grep ":22" ${testfile})
if [ "${testing}" != "" ]; then
    echo "SSH is running in your system."
fi
testing=$(grep ":21" ${testfile})
if [ "${testing}" != "" ]; then
    echo "FTP is running in your system."
fi
testing=$(grep ":25" ${testfile})
if [ "${testing}" != "" ]; then
    echo "Mail is running in your system."
fi
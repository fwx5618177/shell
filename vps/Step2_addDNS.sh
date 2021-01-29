#!/bin/bash
#step 2

#dns set
#vi /etc/ppp/options.pptpd
#ms-dns 8.8.8.8 #这是谷歌的，你也可以改成阿里巴巴的或者其它
#ms-dns 8.8.4.4

echo "add ms-dns in /etc/ppp/options.pptpd."
#vi /etc/pptpd.conf
#localip 192.168.0.1
#remoteip 192.168.0.234-238,192.168.0.245

echo "#####start add ms-dns in /etc/ppp/options.pptpd#####" | tee -a log.txt
echo "ms-dns 8.8.8.8" >> /etc/ppp/options.pptpd
echo "ms-dns 8.8.4.4" >> /etc/ppp/options.pptpd
echo "##### add ms-dns end #####" | tee -a log.txt

echo "是否查看增加结果？y/n" | tee -a log.txt
read result
if [ "$result"="y" -o "$result"="Y" ]
then
    echo "context....#########" | tee -a log.txt
    tail /etc/ppp/options.pptpd | tee -a log.txt
    echo "是否打开文件查看结果？y/n" | tee -a log.txt
    read lookFile
    if [ "$lookFile"="y" -o "$lookFile"="Y" ]
    then
        echo "正在打开...########" | tee -a log.txt
        vim /etc/ppp/options.pptpd
fi

exit 0
#!/bin/bash
# 提取异常ip，并且将大于50次的ip过滤
# 

LOGFILE="/var/log/maillog"
 
#统计maillog中authentication failure的IP个数与IP
grep "authentication failure" $LOGFILE|awk '{print $7}'|grep -E -o "[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+"|sort|uniq -c > af_iplist.txt
 
#取出AF出现大于50次时的IP
awk '$1>50 {print $2}' af_iplist.txt > block_ip_list.txt
 
#大于50次AF的IP添加到iptables中
cat block_ip_list.txt|while read line
do
/sbin/iptables -nL | grep $line
if [ $? != 0 ]
then
    iptables -I INPUT -s $line -j DROP
fi
done

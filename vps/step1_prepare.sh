#！/bin/bash
#step 1
modprobe ppp-compress-18 && echo yes

if [ `modprobe ppp-compress-18 && echo yes` != yes ]
then
    echo "error: don't support pptp."
    exit 1
else
    echo "Prepare successfully!"
fi

cat /dev/net/tun
echo "如果出现bad state,输入y/Y;"
echo "否则输入n/N;"

read judge
if [ "${judge}"= "y" || "${judge}" = "Y" ]
then
    echo "Yep, continue..."
else
    echo "error:没有开启TUN;"
    exit 1
fi

echo "install some tools."
        
yum -y install update > a.txt
cat a.txt | tee -a log.txt
if [`tail a.txt | grep -ie "Nothing to do" | wc -l` = 1]
then
    echo "time:`date`, update already installed." | tee -a log.txt
    echo "################################" | tee -a log.txt
fi

yum -y install ppp pptpd > a.txt
cat a.txt | tee -a log.txt
if [`tail a.txt | grep -i "Nothing to do" | wc -l` = 1]
then
    echo "time:`date`, pptpd already installed." | tee -a log.txt
    echo "################################" | tee -a log.txt
fi

yum install iptables > a.txt
cat a.txt | tee -a log.txt
if [`tail a.txt | grep -i "Nothing to do" | wc -l` = 1]
then
    echo "time:`date`, pptpd already installed." | tee -a log.txt
    echo "################################" | tee -a log.txt
fi

rm -rf a.txt

echo "是否删除log日志？y/n"
read delVar
if [ "${delVar}" = 'y' || "${delVar}" = 'Y' ]
then
    echo "delete the log..."
    rm -rf log.txt
else
    echo "Still save the file."    
fi

echo "add localip and remoteip in /etc/pptpd.conf."
#vi /etc/pptpd.conf
#localip 192.168.0.1
#remoteip 192.168.0.234-238,192.168.0.245
echo "localip 192.168.0.1" >> /etc/pptpd.conf
echo "remoteip 192.168.0.234-238,192.168.0.245" >> /etc/pptpd.conf
exit 0
#！/bin/bash
#step 4

 #vi /etc/sysctl.conf
 sysctl -p #运行这个命令会输出上面添加的那一行信息，意思是使内核修改生效
 iptables -t nat -A POSTROUTING -s 192.168.0.0/24 -o virbr0 -j MASQUERADE
 service iptables save
  iptables -I INPUT -p tcp --dport 1723 -j ACCEPT
iptables -I INPUT -p tcp --dport 47 -j ACCEPT
iptables -I INPUT -p gre -j ACCEPT
 service iptables save
systemctl restart iptables
systemctl restart pptpd 

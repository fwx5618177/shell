# 本文件下工具
- 所有文件遍历表.bat: 遍历所有文件，并且生成文件的列表

# 快捷办法
- startPostfix: 快速启动Postfix
- LookMailLog: 查看maillog
- searchLog.sh：查看log中出错的地方
- DeleteQueueMail：删除队列里的所有邮件

# 邮箱安全防护
- af_iplist.txt: 获取授权失败的ip列表
- block_ip_list.txt: 获取攻击者ip
- searchAttackerIp.sh: 获取非法攻击mail的ip,并且过滤
- killIp.sh: same
- encode_sasl_plain.pl: 测试base64字符串
- ipt_tcp.sh: 防止DDos攻击

# 邮箱队列管理
- pfdel.pl: 是用来删除队列中指定用户的邮件的
- luserdel.pl: 是用来删除队列中无效用户的邮件的
- moqdel.pl: 是用来删除队列中邮箱配额已满的用户的邮件的
- jmoqdel.pl: 是删除邮箱配额已满的用户的垃圾邮件箱的
- postcat.sh: 查看邮箱队列里邮件的内容

# 邮箱管理
- inforeply.pl: 简单自动回信程序

# 反垃圾邮件管理
- RejectTrashMailConf.conf: main.cf反垃圾邮件配置

# 常见shell
- select循环和菜单.sh
- 信号捕捉.sh
- 国际象棋棋盘.sh
- 并行执行.sh
- 彩色等腰三角形.sh
- 打印颜色字.sh
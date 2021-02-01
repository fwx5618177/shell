#!/bin/bash
#
#   trap ' 触发指令' 信号，自定义进程收到系统发出的指定信号后，将执行触发指令，而不会执行原操作
#   trap '' 信号，忽略信号的操作
#   trap '-' 信号，恢复原信号的操作
#   trap -p，列出自定义信号操作
#信号可以3种表达方法：信号的数字2、全名SIGINT、缩写INT
# 1) SIGHUP: 无须关闭进程而让其重读配置文件
# 2) SIGINT: 中止正在运行的进程；相当于Ctrl+c
# 3) SIGQUIT: 相当于ctrl+\
# 9) SIGKILL: 强制杀死正在运行的进程
# 15) SIGTERM ：终止正在运行的进程（默认为15）
# 18) SIGCONT ：继续运行
# 19) SIGSTOP ：后台休眠
# 9 信号，强制杀死，捕获不住
#①打印0-9，ctrl+c不能终止
trap `echo press ctrl+c` 2
for ((i=0;i<10;i++)); do
    sleep 1
    echo $in
done

#!/bin/bash
#   打印颜色字
#
echo -e "\033[31malong\033[0m" 显示红色along
echo -e "\033[1;31malong\033[0m" 高亮显示红色along
echo -e "\033[41malong\033[0m" 显示背景色为红色的along
echo -e "\033[31;5malong\033[0m" 显示闪烁的红色along
color=$[$[RANDOM%7]+31]
color -e "\033[1;${color};5m*\033[0m" 显示闪烁的随即色along
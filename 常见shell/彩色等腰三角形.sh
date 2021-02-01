#!/bin/bash
#
#   baseline is 2 * height - 1
#
read -p "Please input a num: " height
if [[ $height =~ [^0-9] ]]; then
    echo "input error"
else
    for i in `seq 1 $height` ; do
        maxBaseLine=$[2*$i-1]
        for j in `seq 1 $[$height-$i]`; do
            echo -ne " "
        done

        for k in `seq 1 $maxBaseLine`; do
            color=$[$[RANDOM%7]+31]
            echo -ne "\033[1;${color};5m*\033[0m"
        done
        echo
    done
fi
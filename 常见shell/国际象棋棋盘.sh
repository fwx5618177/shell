#!/bin/bash
#   国际象棋棋盘
#
redboard="\033[1;41m    \033[0m"
yellowboard="\033[1;43m \033[0m"

for i in {1..8}; do
    if [ $[i%2] -eq 0 ]; then
        for i in {1..4}; do
            echo -e -n "$redboard$yellowboard";
        done
        echo
    else
        for i in {1..4}; do
            echo -e -n "$yellowboard$redboard";
        done
        echo
    fi
done
#!/bin/bash -xv
arr=(23 34 56 测试 第五个值 67 76 54 35)
echo ${arr[0]}
index=4
echo ${arr[$index]};
echo ${arr[*]}
echo ${arr[@]}
echo ${#arr[*]}

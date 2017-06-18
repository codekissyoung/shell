#!/bin/bash
a=10.1
b=10
if [ $a -eq $b ]; then
   echo "a 等于 b"
elif [ $a -gt $b ]; then
   echo "a 大于 b"
elif [ $a -lt $b ]; then
   echo "a 小于 b"
else
   echo "没有符合的条件"
fi

# date 命令执行成功了 $? = 0
if date > /dev/null; then
	echo "date 命令执行成功了"
fi

# grep 没有搜寻到用户 $? = 1
if grep codekissyoung /etc/passwd;then
	echo "用户codekissyoung存在";
elif grep cky /etc/passwd > /dev/null;then
	echo "cky 存在";
else
	echo "用户codekissyoung不存在";
fi

# 判断字符串相等
if [ "code" != "cky" ]; then
	echo "code 不等于　cky";
fi

# 判断字符存在
var="变量var"
if [ -n $var ]; then
	echo "$var存在";
fi

# 字符串比较大小
var1="abd"
var2="abc"
if [ $var1 \> $var2 ];then
	echo "$var1 大于 $var2";
fi

# 判断文件
# -e 判断路径是否存在
# -d 判断路径是否存在 并且是目录
# -f 判断路径是否存在 并且是文件
# -s 判断文件是否不为空
# -r -w -x 判断文件是否 可读 可写 可执行
# -O 判断执行者是否是文件的属主
# file1 -nt file2  ,file1 是否比 file2 更新, 镜像: file1 -ot file2
if [ -d "$HOME" ]; then
	echo "$HOME 存在";
fi

# && 与 || 组合条件
if [ -d $HOME ] && [ -w "$HOME" ]; then
	echo "$HOME 存在并且可读";
fi



























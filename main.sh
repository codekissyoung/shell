#!/bin/bash
# 输入与输出
echo -n "Hello ";
echo "Shell ! ";
echo "";

# 重要的环境变量
echo "常用的环境变量: ";
echo "HOME     : ${HOME}";
echo "UID      : ${UID}";
echo "USER     : ${USER}";

echo
echo "使用变量:";
testing="just one test!";   # 声明 或者 赋值
echo ${testing};            # 使用
unset testing;              # 删除
echo ${testing};

echo "将命令输出赋值给变量"
today=$(date +%Y-%m-%d.%k:%M:%S);   # 方法1 使用 $(命令)
echo ${today};
timestamp=`date +%s`;               # 方法2 使用命令替换
echo "TimeStamp : ${timestamp}";
echo "";
# 两种方法都是启用了 子shell 计算结果 , 需要注意的是:
# 在子shell中并不能使用 这个脚本文件中定义的 变量

echo "使用 [ expr ] 来进行数学运算(只支持整数)"
var1=$[1 + 5]
echo "var1 = \$[1 + 5] : ${var1}"
var2=$[$var1 * 2]
echo "var2 = \$[\$var1 * 2] : ${var2}"
echo "";

echo "使用bc计算器 支持浮点数运算";
var1=100
var2=45
var3=$(echo "scale=4; ${var1} / ${var2}" | bc) # scale=4; 是设置bc计算器使用4位小数
echo "${var1} / ${var2} = ${var3}"





















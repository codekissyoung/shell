#!/bin/bash
echo "使用 [ expr ] 来进行数学运算(只支持整数)"
var1=$[1 + 5]
echo "var1 = \$[1 + 5] : ${var1}"
var2=$[$var1 * 2]
echo "var2 = \$[\$var1 * 2] : ${var2}"
echo;

echo "使用bc计算器 支持浮点数运算";
var1=100
var2=45
# scale=4; 是设置bc计算器使用4位小数
var3=$(echo "scale=4; ${var1} / ${var2}" | bc)
echo "${var1} / ${var2} = ${var3}"
echo;

echo "使用 if-then 检测命令执行的返回状态码,控制执行流程";
if pwd; then              # if 判断的是命令执行后的退出状态码 是否是0
    echo "it worked";
# elif unknown_command 2>&1 /dev/null;then
elif ls -d /home/unknow_user;then
    echo "it worked too";
fi
echo;


echo "使用 if-then 和 test commands 语句 支持检测其他条件";
echo "test commands 等价于 [ commands; ] 支持: 1.数值比较 2.字符串比较 3.文件比较";
# 数值比较
if [ 3 -eq 5 ];then
    echo "3 等于 5";
else
    echo "3 不等于 5";
fi
# 字符串比较 = 相等, != 不等, \< , \> , -n 长度非0, -z 长度为0
var2="var2 非0";
if [ -n "${var2}" ]; then
    echo "${var2}";
fi
# 文件比较 -e , -d , -f , -r , -w , -x , -O , -G , file1 -nt file2 比较新旧
file="/home/cky/workspace/C/main.c"
if [ -f ${file} ];then
    echo "${file} 是一个文件且存在";
fi

echo "[ condition1 ] && [ condition2 ] 组合,判断两个条件"
echo "[ condition1 ] || [ condition2 ] 组合,判断两个条件"
echo;


echo "if-then 使用 (( expr; )) 来拓展运算判断条件"
var1="10"
if (( ${var1} ** 2 == "100" )); then
    echo "${var1}的2次方 等于 100";
fi
echo;

echo "if-then 使用 [[ expr; ]] 来拓展字符串的 模式匹配功能"
if [[ ${USER} == c* ]]; then
    echo "${USER} 是以 c 开头的";
fi
echo;

echo "使用while-then命令来重复执行";
var1=3
while [ ${var1} -gt 0 ];do
    echo "Now var1 is ${var1}";
    var1=$[ ${var1} - 1 ]
done
echo

echo "使用 for-do-list 循环操作";
IFS_OLD=${IFS};
IFS=$' '; # 设置IFS , 只使用 空格 来分割列表数据
for i in "Apple" "Orange" "Dog"; do
    echo ${i}
done
IFS=${IFS_OLD}
echo;

echo "非常重要的 IFS 变量, 它就是 列表的分隔符";
IFS_OLD=${IFS}
IFS=$'\n'
for entry in $(cat /etc/passwd); do
    IFS=:
    for value in ${entry};do
        echo -n " ( ${value} )"
    done
    echo
    break;  # 为了输出短些 跑一次说明意思就够了
done
IFS=${IFS_OLD}
echo

echo "for-do-list读取目录";
this_dir=`pwd`;
for file in ${this_dir}/*; do
    if [ -d "${file}" ];then
        echo "${file}  is a directory !"
        break; # 输出第一次 目录就够了 不要输出那么多内容
    fi
done
echo;

echo "for-do-list c语言风格的循环";
for (( i=1; i <= 3; i++ )); do
    echo "The Text Number is ${i}";
done


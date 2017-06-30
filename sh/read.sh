#!/bin/bash
# 不需要回车回车
read -n 2 var
echo "enter $var"

# 以无回显的方式读取密码
read -s var2
echo "var2 : $var2";

# -p 以特定格式输出 -t 限定多少秒内输入
read -t 3 -p "do you love me ? ( Y / N ) : " answer

if [ -n "$answer" ];then
	:
else
	echo "... no answer!";
fi

case $answer in
	Y | y)
		echo "i love you too";;
	N | n)
		echo "fine , thank you ";;
	*)
		echo "unkown answer";;
esac





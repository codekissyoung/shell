#!/bin/bash
while [ -n "$1" ] ;do
	case "$1" in
		cut)
			# 获取cut后面的值
			value="$2";
			echo "cut处理$2";
			shift;;
		add)
			echo "add 参数";;
		*)
			echo "其他参数";
	esac
	shift
done

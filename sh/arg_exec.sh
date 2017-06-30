#!/bin/bash

while [ -n "$1" ] ;do
	case "$1" in
	first)
		echo "first 参数";;
	second)
		echo "second 参数";;
	third)
		echo "third 参数";;
	*)
		echo "处理其他参数";;
	esac
	shift
done







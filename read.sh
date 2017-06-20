#!/bin/bash
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





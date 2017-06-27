#!/bin/bash
prepend() {
	eval $1=\"\$$1$\{$2:+:\$$2\}\"
	# eval $1=\"\$$1:\$$2\"    # 假如 $2 为空值的话 : 号是多于的
}

A=/var/bin
B=/etc/lib

prepend A B
echo $A;
echo $B;
echo $A:$B;

C=/test/hehe
D=''
prepend C D
echo $C
echo $D

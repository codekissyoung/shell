#!/bin/bash

echo "当前进程PID : $$";
echo "父进程PID : $PPID";
echo "用户ID : $UID";
echo $!
echo $_

bar()
{
	echo 'bar called';
	caller 0
}

call_function()
{
	bar;
}

call_function;



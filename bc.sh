#!/bin/bash
var1=100
var2=45
var3=`echo "scale=4; $var1 / $var2" | bc` # scale=4; 是设置bc计算器使用4位小数
echo $var3

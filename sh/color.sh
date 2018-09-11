#!/bin/bash
#控制选项说明  
#\e[0m 关闭所有属性  
#\e[1m 设置高亮度  
#\e[4m 下划线  
echo -e "\e[30m 黑色字 \e[0m"  
echo -e "\e[31m 红色字 \e[0m"  
echo -e "\e[32m 绿色字 \e[0m"  
echo -e "\e[33m 黄色字 \e[0m"  
echo -e "\e[34m 蓝色字 \e[0m"  
echo -e "\e[35m 紫色字 \e[0m"  
echo -e "\e[36m 天蓝字 \e[0m"  
echo -e "\e[37m 白色字 \e[0m"  
echo -e "\e[40;37m 黑底白字 \e[0m"  
echo -e "\e[41;30m 红底黑字 \e[0m"  
echo -e "\e[42;34m 绿底蓝字 \e[0m"  
echo -e "\e[43;34m 黄底蓝字 \e[0m"  
echo -e "\e[44;30m 蓝底黑字 \e[0m"  
echo -e "\e[45;30m 紫底黑字 \e[0m"  
echo -e "\e[46;30m 天蓝底黑字 \e[0m"  
echo -e "\e[47;34m 白底蓝字 \e[0m"  
echo -e "\e[4;31m 下划线红字 \e[0m"  
# echo -e "\e[5;34m 闪烁 \e[0m"

for STYLE in 1 2 3 4 6; do
  for FG in 30 31 32 33 34 35 36 37; do
    for BG in 40 41 42 43 44 45 46 47; do
      echo -en "\e[${STYLE};${FG};${BG}m";
      echo -n " ${STYLE};${FG};${BG} ";
      echo -en "\e[0m";
    done
    echo ;
  done
done
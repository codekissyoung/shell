#!/usr/bin/expect
spawn ./auto_input.sh; # 指定要自动化哪一个命令
expect "Enter your name:"; # 如果匹配这个提示，那就输入codekissyoung
send "codekissyoung\n"; # 发送给命令的信息
expect "Enter your age:" # 如果匹配这个提示，那就输入 22
send "22\n"
expect eof # 交互结束


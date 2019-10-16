#!/bin/bash

# 查看系统版本和环境
lsb_release -a
cat /etc/issue
uname -a

# 安装调试软件 insight 的依赖
sudo apt-get install autoconf
sudo apt-get install autogen
sudo apt-get install texinfo
sudo apt-get install zlib1g-dev
sudo apt-get install tcl-dev
sudo apt-get install tk-dev
sudo apt-get install mesa-common-dev
sudo apt-get install libjpeg-dev
sudo apt-get install libtogl-dev
sudo apt-get install python-dev
sudo apt-get install flex
sudo apt-get install bison
sudo apt-get install itcl3
sudo apt-get install itk3
sudo apt-get install iwidgets4

# 安装中文支持
sudo apt-get install language-pack-zh-hans
sudo apt-get install zhcon

# 安装 aptitude
sudo apt-get install aptitude

# 必备软件
sudo apt-get install gcc gdb make autoconf automake libtool build-essential flex bison cmake git tree
sudo apt-get install vim
sudo update-alternatives --config editor                # 默认编辑设置为vim
sudo apt-get install git
git config --global core.quotepath false                # git中文正确显示
git config --global core.editor vim                     # 默认编辑器 vim
git config --global user.name "codekissyoung"           # git 用户名
git config --global user.email "1162097842@qq.com"      # git email

sudo apt-get install rar unrar                  # 安装rar解压工具, unrar x test.rar 解压到当前文件夹
sudo apt-get install p7zip                      # .7z 压缩的解压工具
sudo apt-get install zsh
sudo apt-get install bless                      # 安装二进制查看与编辑器
sudo apt-get install tmux
sudo apt-get install openssh-server
sudo apt-get install lnav                       # 安装终端看访问日志的神器 lnav观看 [服务器端]
sudo apt-get install bash-builtins bash-completion bash-doc bash-static

# 安装 c++ 开发环境
sudo apt-get install build-essential
sudo apt-get install linux-headers-$(uname -r)
sudo apt-get install automake autoconf libtool pkg-config intltool checkinstall

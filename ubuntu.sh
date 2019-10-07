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
sudo apt-get install vim
sudo apt-get install git
sudo apt-get install rar unrar
sudo apt-get install p7zip
sudo apt-get install zsh
sudo apt-get install bless
sudo apt-get install tmux
sudo apt-get install openssh-server
sudo apt-get install bash-builtins bash-completion bash-doc bash-static

# 安装 c++ 开发环境
sudo apt-get install build-essential
sudo apt-get install linux-headers-$(uname -r)
sudo apt-get install automake autoconf libtool pkg-config intltool checkinstall

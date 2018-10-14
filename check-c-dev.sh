#!/bin/bash
echo "内核版本:"
uname -a              

echo "发行版本:";
lsb_release -a

echo "gcc版本:"
gcc -v

echo "gdb版本:";
gdb -v

echo "make版本:";
make -v                 

echo "autoconf版本:";
autoconf --version      

echo "automake版本:";
automake --version

echo "libtoolize版本";
libtoolize --version

echo "sudo apt-get install gcc gdb make autoconf automake libtool build-essential";

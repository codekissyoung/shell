#!/bin/bash
file=/dir1/dir2/dir3/my.file.txt
echo ${#file}       # 输出值的长度
echo ${file#*/};    # dir1/dir2/dir3/default_var 去除最小匹配左边
echo ${file##*/};   # default_var  去除最大匹配左边
echo ${file%/*};    # /dir1/dir2/dir3  去除最小匹配右边
echo ${file%%/*};   # 空值  去除最大匹配右边
echo ${file:0:5};   # /dir1 从第0个开始 取5个
echo ${file:5:5};   # /dir2 从第5个开始 取5个
echo ${file/dir/path} # /path1/dir2/dir3/default_var  将第一个dir换成path
echo ${file//dir/path} # /path1/path2/path3/default_var  将全部dir换成path

echo ------------------------------------------------------------------------
echo ${file-default_var} # file 没设置时，使用default_var作为返回值
echo ${file:-default_var} # file 没设置或者为空时，使用default_var作为返回值
echo ${file+default_var} # 除非file没设置，否则使用default_var作为返回值
echo ${file:+default_var} # file 非空时，才使用default_var作为返回值
echo ${file=default_var} # file没设置或者空值，则使用default_var作为返回值,同时将$file作为default_var的值
echo ${file:=default_var} # file空值或者没设置，则使用default_var作为返回值,同时$file赋值为default_var的值
echo ${file?default_var}  # file没设定，则将default_var输出至STDERR
echo ${file:?default_var} # file没设定或者空值，则将default_var输出至STDERR

echo ------------------------------------------------------------------------
file='' # file 设置为空值
echo "file is null";
echo ${file-default_var} # file 没设置时，使用default_var作为返回值
echo ${file:-default_var} # file 没设置或者为空时，使用default_var作为返回值
echo ${file+default_var} # 除非file没设置，否则使用default_var作为返回值
echo ${file:+default_var} # file 非空时，才使用default_var作为返回值
echo ${file=default_var} # file没设置或者空值，则使用default_var作为返回值,同时将$file作为default_var的值
echo ${file:=default_var} # file空值或者没设置，则使用default_var作为返回值,同时$file赋值为default_var的值
echo ${file?default_var}  # file没设定，则将default_var输出至STDERR
echo ${file:?default_var} # file没设定或者空值，则将default_var输出至STDERR

echo ------------------------------------------------------------------------
unset file # 删除file
echo "unset file";
echo ${file-default_var} # file 没设置时，使用default_var作为返回值
echo ${file:-default_var} # file 没设置或者为空时，使用default_var作为返回值
echo ${file+default_var} # 除非file没设置，否则使用default_var作为返回值
echo ${file:+default_var} # file 非空时，才使用default_var作为返回值
echo ${file=default_var} # file没设置或者空值，则使用default_var作为返回值,同时将$file作为default_var的值
echo ${file:=default_var} # file空值或者没设置，则使用default_var作为返回值,同时$file赋值为default_var的值
echo ${file?default_var}  # file没设定，则将default_var输出至STDERR
echo ${file:?default_var} # file没设定或者空值，则将default_var输出至STDERR


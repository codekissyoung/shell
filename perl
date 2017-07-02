#!/usr/bin/perl -w

# 计算华氏温度
# 也可以使用 \s 来匹配所有的空白字符: 空格,制表符,换行符，回车符
print "Enter a temperature in (eg 32F , 100 C) : ";
$celsius = <STDIN>;
chomp($celsius); # 去掉末尾换行符
if ( $celsius =~ m/^([+-]?[0-9]+(\.[0-9]*)?)[\t ]*([CFcf])$/ ) {
	$temp = $1; # 使用反向引用取值，一定紧邻着使用的正则表达式
	$type = $3; # 第三个括号匹配的值，反向引用就是 $3
	# print "$1 \n"; print "$3 \n"; # 调试
	if( $type =~ m/^[Cc]$/ ){
		$celsius = $temp;
		$fahrenheit = ($celsius * 9 / 5) + 32;
		print "$celsius C is $fahrenheit F.\n";
	}

	if( $type =~ m/^f$/i ){ # i 是忽略大小写 , g 是全局匹配(而不是匹配第一次), x 表示宽松排列的表达式
		$fahrenheit = $temp;
		$celsius = ($fahrenheit - 32) * 5 / 9;
		print "$fahrenheit F is $celsius C.\n";
	}
} else {
	print "Please Enter a temperature with F or C ! \n";
}

# 用于替换
$templete = "dear =NAME= , i love you ! \n";
print "Enter your name : ";
$your_name = <STDIN>;
chomp($your_name);
$templete =~ s/Dear/Dear/i; # 实现了 将所有不论大小写的 dear ,全部转换成 Dear, /i 对于替换字符是没有影响的
$templete =~ s/=NAME=/$your_name/; # 替换匹配到的文本
print $templete;

# 再来个例子，12.3570000001 要变成 12.357 ,而 37.590830 要变成 37.59
$price = 12.3570000001;
$price2 = 37.5909023;
$price =~ s/(\.\d\d[1-9]?)\d*/$1/;
$price2 =~ s/(\.\d\d[1-9]?)\d*/$1/;
print "price : $price , price2 : $price2 \n";




















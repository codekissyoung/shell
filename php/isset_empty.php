#!/usr/bin/php
<?php
error_reporting(E_WARNING); // 只报告警告级别以上的错误
// 未定义值
echo "未定义值\n";
echo "isset : ".var_export(isset($undef),true)."\t";
echo "empty : ".var_export(empty($undef),true)."\t";
if($undef) { echo "if : true"; } else { echo 'if : false';}
echo "\n--------------------------------------------------\n";

// null
$d = null;
echo "null \n";
echo "isset : ".var_export(isset($d),true)."\t";
echo "empty : ".var_export(empty($d),true)."\t";
if($d) { echo "if : true"; } else { echo 'if : false';}
echo "\n--------------------------------------------------\n";

// 空值
$e = ['',"",0,0.00,'0',"0",[]];
echo '\'\',"",0,0.00,\'0\',"0",[]'."\n";
foreach ($e as $v){
	echo "isset : ".var_export(isset($v),true)."\t";
	echo "empty : ".var_export(empty($v),true)."\t";
	echo "if : ".($v ? 'true':'false')."\n";
}
echo "\n--------------------------------------------------\n";

// 空对象
class A{}
$a = new A();
echo "空对象\n";
echo "isset : ".var_export(isset($a),true)."\t";
echo "empty : ".var_export(empty($a),true)."\t";
if($a) { echo "if : true"; } else { echo 'if : false';}
echo "\n--------------------------------------------------\n";

// 非空值
$t = ['a',"ab",'0.00',"0.00",['a'=>12]];
echo '\'a\',"ab",\'0.00\',"0.00",[\'a\'=>12]'."\n";
foreach ($t as $v){
	echo "isset : ".var_export(isset($v),true)."\t";
	echo "empty : ".var_export(empty($v),true)."\t";
	echo "if : ".($v ? 'true':'false')."\n";
}






























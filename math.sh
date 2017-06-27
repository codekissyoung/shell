#!/bin/bash
a=8
b=3
echo "a : $a , b : $b";
let c=$a+$b
echo "c : $c";
let a++;
let b--;
echo "after let a++, let b-- : a : $a , b : $b";
let a+=6; let b+=6;
echo "after let a+=6 ,let b+=6 : a : $a , b : $b";
echo "\$[ a + b ] = $[ a + b ] ";
echo "\$((\$a + \$b)) = $(($a+$b))";
echo "expr \$a + \$b : `expr $a + $b`";
decimal=0.36
echo "$a * $decimal" | bc
echo "scale=4;11/3" | bc
echo "obase=2;ibase=10;43" | bc
echo "obase=10;ibase=2;100110" | bc
echo "sqrt(16)" | bc
echo "10^10" | bc

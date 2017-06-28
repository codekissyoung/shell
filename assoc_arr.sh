#!/bin/bash
declare -A ass_arr;
ass_arr=([apple]='1.00' [orange]='3.00');
ass_arr[banana]='4.00';
echo "the price of apple is ${ass_arr[apple]}";
echo ${!ass_arr[*]}
echo ${!ass_arr[@]}




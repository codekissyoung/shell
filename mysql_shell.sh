#!/bin/bash
MYSQL=`which mysql`;

$MYSQL shell -uroot -Bse "show tables;"; # 登录MySQL


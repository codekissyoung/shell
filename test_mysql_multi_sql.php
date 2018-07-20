<?php
$mysqli = new MySQLi( "localhost", "root", "Cky951010", "jiebao_produce" );

$sqls = "select id,name from mall limit 10;";
$sqls.= "select id,account from employee limit 10;";
$sqls.= "select id,phone from user limit 10;";

if( $mysqli -> multi_query( $sqls ) )
{
    do
    {
        $result = $mysqli -> store_result();
        if( $result instanceof mysqli_result )
        {
            while( $row = $result -> fetch_assoc() )
                var_dump( $row );
        }
        echo "\n----------------------------------\n";
    }
    while( $mysqli -> next_result() );    //取得下一个结果集
}
else
    echo "ERROR".$mysqli->errno."---".$mysqli->error;
$mysqli -> close();




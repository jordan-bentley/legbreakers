<?php
/*
PHP MSSQL Example

Replace data_source_name with the name of your data source.
Replace database_username and database_password
with the SQL Server database username and password.
*/

$data_source='localhost';
$user='bentleyj';
$password = '';
$db = 'lb_db';
$port = '3306';

// Connect to the data source and get a handle for that connection.
$conn=new mysqli($data_source,$user,'',$db,$port);

?> 

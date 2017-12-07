<?php
/*

Replace data_source is the location of the server where the database is housed. 
Replace database_username and database_password
with the SQL Server database username and password.
$db is the name of the database to be used by the connection.
$port is the port that the PHP will use to talk to the server.
*/

$data_source='localhost';
$user='bentleyj';
$password = '';
$db = 'lb_db';
$port = '3306';

// Connect to the data source and get a handle for that connection.
// $conn then exists to be used by the webpage that ran this script.
// $conn is the living connection to the database. It is used in all queries to the database.
$conn=new mysqli($data_source,$user,$password,$db,$port);

?> 

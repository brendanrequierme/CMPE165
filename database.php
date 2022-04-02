<?php

$servername='localhost';
$username='root';
$password='';
$db="information";

$conn = new mysqli($servername,$username,$password,$db);
if($conn->connect_error) {
    die(mysql_fatal_error("Cant connect to MySQL"));
}

$sql = file_get_contents('information.sql');

$mysqli = new mysqli("localhost", "root", "", "information");

/* execute multi query */
$mysqli->multi_query($sql);

?>

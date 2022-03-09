<?php

$servername='localhost';
$username='root';
$password='';
$db="information";

$conn = new mysqli($servername,$username,$password,$db);
if($conn->connect_error) {
	die(mysql_fatal_error("Cant connent to MySQL"));
}

$query ="CREATE TABLE IF NOT EXISTS loginInfo(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
username VARCHAR(20) NOT NULL UNIQUE,
password VARCHAR(255) NOT NULL)";

$result = $conn->query($query) or die(mysql_fatal_error("Could not create MYSQL TABLE"));
if(!$result){ 
	die(mysql_fatal_error("Could not create MYSQL TABLE"));

}
?>
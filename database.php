<?php

$servername='localhost';
$username='root';
$password='';
$db="information";

$conn = new mysqli($servername,$username,$password,$db);
if($conn->connect_error) {
	die(mysql_fatal_error("Cant connect to MySQL"));
}

$query = "
CREATE TABLE city (
	city_id	INTEGER NOT NULL UNIQUE,
	city_name	varchar(128) NOT NULL,
	state	varchar(128) NOT NULL UNIQUE,
	country	varchar(128) NOT NULL UNIQUE,
	PRIMARY KEY(city_id AUTOINCREMENT)
);



CREATE TABLE hotel (
	hotel_id	INTEGER NOT NULL UNIQUE,
	hotel_name	varchar(128) NOT NULL,
	description	TEXT,
	
	city_id	INTEGER NOT NULL,
	PRIMARY KEY(hotel_id AUTOINCREMENT),
	FOREIGN Key (city_id) REFERENCES city
);


CREATE TABLE room (
	room_id	INTEGER NOT NULL UNIQUE,
	room_name	varchar(128) NOT NULL,
	price	decimal(10,2) NOT NULL,
	description	TEXT,
	bed_count	INTEGER NOT NULL,
	
	hotel_id	INTEGER NOT NULL,
	PRIMARY KEY(room_id AUTOINCREMENT),
	FOREIGN Key (hotel_id) REFERENCES hotel
);


CREATE TABLE room_reserved (
	reserved_id	INTEGER NOT NULL UNIQUE,
	start_date DATE NOT NULL,
	end_date DATE NOT NULL,
	
	room_id	INTEGER NOT NULL,
	price	decimal(10,2) NOT NULL,
	user_id	INTEGER NOT NULL,
	PRIMARY KEY(reserved_id AUTOINCREMENT),
	FOREIGN Key (room_id) REFERENCES room,
	FOREIGN Key (price) REFERENCES room,
	FOREIGN Key (user_id) REFERENCES userInfo
);


CREATE TABLE userInfo (
	user_id	INTEGER NOT NULL UNIQUE,
	username	varchar(128) NOT NULL,
	password	varchar(128) NOT NULL,
	PRIMARY KEY(user_id AUTOINCREMENT)
);


CREATE TABLE invoice (
	invoice_id	INTEGER NOT NULL UNIQUE,
	total_price	decimal(10,2) NOT NULL,
	time_paid		timestamp	NOT NULL,
	time_cancelled	timestamp,
	
	user_id	INTEGER NOT NULL,
	reserved_id	INTEGER NOT NULL,
	PRIMARY KEY(invoice_id AUTOINCREMENT),
	FOREIGN Key (user_id) REFERENCES userInfo,
	FOREIGN Key (reserved_id) REFERENCES room_reserved
);"

$result = $conn->query($query) or die(mysql_fatal_error("Could not create MYSQL TABLE"));
if(!$result){ 
	die(mysql_fatal_error("Could not create MYSQL TABLE"));

}
?>

<?php
    // Initialize the session
    session_start();

    if (!$_SESSION) {
        include 'header.php';
    } else {
        include 'header2.php';
}

include 'database.php';

#<script>alert('Welcome to Geeks for Geeks')</script>

$hotelsId = $_GET['hotelID'];
$hotelsName = $_GET['hotelNAME'];
$hotelsDescription = $_GET['hotelDESCRIPTION'];
$hotelsCity = $_GET['hotelCITY'];
$hotelsPrice = $_GET['hotelPRICE'];
$hotelsImage = $_GET['hotelIMAGE'];
$hotelsRating = $_GET['hotelRATING'];
$usersId = $_GET['userID'];
$rewardsTotal = $_GET['rewardTOTAL'];
$roomNumber = $_GET['roomNUMBER'];
$startDate = $_GET['startDATE'];
$endDate = $_GET['endDATE'];
$days = $_GET['days'];

$query = "INSERT INTO bookedhotel (booked_id, hotel_id, hotel_name, description, city_id, usd, image, rating, start_date, end_date, room_number, days) VALUES (DEFAULT, $hotelsId, '$hotelsName', '$hotelsDescription', $hotelsId, '$hotelsPrice', '$hotelsImage', '$hotelsRating', '$startDate', '$endDate', '$roomNumber', '$days')";
$data = mysqli_query($conn,$query);
$query2 = "UPDATE userinfo SET reward_points = '$rewardsTotal' WHERE user_id = $usersId";
$data2 = mysqli_query($conn,$query2);
$query3 = "UPDATE room SET room_count = room_count - '$roomNumber' WHERE hotel_id = $hotelsId";
$data3 = mysqli_query($conn,$query3);

?>

<!DOCTYPE html>

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="refresh" content="5;url=booked.php" />
        <title>Finished Booking</title>
    </head>

    <style>

    h2 {
        margin-left: 25%;
    }

    img { 
        margin-left: 42%;
    }

    b {
        margin-left: 30.6%;
        font-size: 30px;
        font-family: nosifer;
        color: red;
    }

    </style>

    <body>
        <img src = "images/cat.gif" />
        <h2>Thank you for booking with Spartan Death Hotel.</h2>
        <b>We hope you enjoy your stay.</b>
        </br>
        <h2 style = margin-left:22%;>You will be redirected back to the Booked in 5 seconds.</h2>
    </body>
</html>
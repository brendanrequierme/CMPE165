<?php
    // Initialize the session
    session_start();

    if (!$_SESSION) {
        include 'header.php';
        echo "
            <meta http-equiv = 'refresh' content = '0; url = booked2.php'>
        ";
    } else {
        include 'header2.php';
    }
    include 'database.php';
?>

<!DOCTYPE html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- https://fonts.google.com/icons?selected=Material+Icons -->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <title>Booked Page</title>
    </head>
</html>

<?php

    $stmt = mysqli_query($conn,"SELECT * FROM bookedhotel");
    while ($row = mysqli_fetch_array($stmt)) {
        $bookedID = $row['booked_id'];
        $hotelID = $row['hotel_id'];
        $hotelName = $row['hotel_name'];
        $hotelDescription = $row['description'];
        $hotelCity = $row['city_id'];
        $hotelRating = $row['rating'];
        $hotelPrice = $row['usd'];
        $startDate = $row['start_date'];
        $endDate = $row['end_date'];
        $hotelImage = $row['image'];
        $roomNumber = $row['room_number'];
        $days = $row['days'];

        echo "
        <div>
        <table style = margin-left:400px>
        <tr>
        <td>
            <td><img style = margin-right:15px class = 'picBorder' src = 'images/$hotelImage' width='280' height='280'/></td>
            <td>
            <h1 style = margin:0px>$hotelName</h1>
            <p style = margin:0px;font-size:18px>$hotelDescription</p>
            <p style = font-size:18px>Rating: $hotelRating</p>
            <p style = font-size:18px>Date of Booking: $startDate</p>
            <p style = font-size:18px>End Date of Booking: $endDate</p>
            <p style = font-size:18px>Number of Rooms: $roomNumber</p>
            </td>
        </table>
        </div>
        <table>
        <div>
        <form action = 'delete.php?hotelID=$hotelID&hotelPRICE=$hotelPrice&roomNUMBER=$roomNumber&bookedID=$bookedID&days=$days' method='POST' name='RemoveHotel''>
        ";
        if (($startDate == '2022-05-03') || ($startDate == '2022-05-04')) {
            echo "
            <td><input style = width:130px;margin-left:215px; name = 'remove' type = 'submit' class = 'bookButton' onclick = 'cancelFee()' value = 'Cancel Hotel''/></td>
            <script>
                function cancelFee() {
                    alert('Due to cancelation one day before or day of a fee of $".$hotelPrice*0.25." has been charged to your credit card!');
                }
            </script>
            ";
        } else {
        echo "
            <td><input style = width:130px;margin-left:215px; name = 'remove' type = 'submit' class = 'bookButton' value = 'Cancel Hotel'/></td>
            ";
        }
        echo "
        </form>
        <div>
        <form action = 'reschedule.php?bookedID=$bookedID' method='post' name='RescheduleHotel'>
        <tr>
        <td>
            <p style = margin-left:215px; for='start'>Choose Start Date: </p>
            <input type='date' name='startDate' value = 'startDATE' style = margin-left:215px;/>
        </td>
        <td>
            <p style = margin-left:50px; for='start'>Choose End Date: </p>
            <input type='date' name='endDate' style = margin-left:50px;/>
        </td>
        </tr>
        <td><input style = width:130px;margin-left:215px; name = 'mainName' type = 'submit' class = 'bookButton'  value = 'Reschedule Hotel' /></td>
        </form>
        </div>
        </div>
        "; 
    }
    if(mysqli_num_rows($stmt) < 1) {
        echo "
            <meta http-equiv = 'refresh' content = '0; url = booked2.php'>
        ";
    }

?>

<!DOCTYPE html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Booked Page</title>
    </head>
</html>
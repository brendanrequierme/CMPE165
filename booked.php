<?php
    // Initialize the session
    session_start();

    if (!$_SESSION) {
        include 'header.php';
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

    <div style = margin-left:240px;margin-bottom:5px;>
    <p for="start">Choose Date: </p>

        <input type="text" name="datefilter" value="" />
      
        <script type="text/javascript">
            $(function() {

            $('input[name="datefilter"]').daterangepicker({
                autoUpdateInput: false,
                locale: {
                        cancelLabel: 'Clear'
                        }
                    });

                $('input[name="datefilter"]').on('apply.daterangepicker', function(ev, picker) {
                    $(this).val(picker.startDate.format('MM/DD/YYYY') + ' - ' + picker.endDate.format('MM/DD/YYYY'));
                });

                $('input[name="datefilter"]').on('cancel.daterangepicker', function(ev, picker) {
                    $(this).val('');
                });

                });
            </script>
        </div>
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

        echo "
        <div>
        <table style = margin-left:400px>
            <td><img style = margin-right:15px class = 'picBorder' src = 'images/$hotelImage' width='280' height='280'/></td>
            <td>
            <h1 style = margin:0px>$hotelName</h1>
            <p style = margin:0px;font-size:18px>$hotelDescription</p>
            <p style = font-size:18px>Rating: $hotelRating</p>
            <p style = font-size:18px>Room Price: $$hotelPrice</p>
            <p style = font-size:18px>Date of Booking: $startDate</p>
            <p style = font-size:18px>End Date of Booking: $$endDate</p>
            <p style = font-size:18px>Number of Rooms: $roomNumber</p>
            </td>
        </table>
        </div>
        <table>
        <div>
        <form action = 'delete.php?hotelID=$hotelID&hotelPRICE=$hotelPrice&roomNUMBER=$roomNumber&bookedID=$bookedID' method='POST' name='RemoveHotel'>
        <td><input style = width:130px;margin-left:215px; name = 'remove' type = 'submit' class = 'bookButton' onclick='remove();' value = 'Cancel Hotel' /></td>
        </form>
        <td><input style = width:130px;margin-left:10px; name = 'mainName' type = 'submit' class = 'bookButton'  value = 'Reschedule Hotel' /></td>
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


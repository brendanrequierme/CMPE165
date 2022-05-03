<?php
    // Initialize the session
    session_start();

    if (!$_SESSION) {
        include 'header.php';
    } else {
        include 'header2.php';
    }
    include 'database.php';

    $bookedId = $_GET['bookedID'];
    $startDate = $_POST['startDate'];
    $endDate = $_POST['endDate'];

    $query = "UPDATE bookedhotel SET start_date = '$startDate', end_date = '$endDate' WHERE booked_id = '$bookedId' ";
    $data = mysqli_query($conn,$query);

    if($data) {
        echo "<p>Record Updated<p>";
    } else {
        echo "<p>Failed to Update<p>";
    }
?>

<!DOCTYPE html>

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="refresh" content="0;url=booked.php" />
        <title>Finished Booking</title>
    </head>
</html>
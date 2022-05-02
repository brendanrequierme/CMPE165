<?php
    // Initialize the session
    session_start();

    if (!$_SESSION) {
        include 'header.php';
    } else {
        include 'header2.php';
    }
    include 'database.php';

    $hotelsId = $_GET['hotelID'];
    $hotelsPrice = $_GET['hotelPRICE'];

    $query = "DELETE FROM bookedhotel WHERE hotel_id = '$hotelsId' ";
    $data = mysqli_query($conn,$query);

    if($data) {
        echo "<p>Record Deleted<p>";
    } else {
        echo "<p>Failed to Delete<p>";
    }

    $stmt = mysqli_query($conn,"SELECT * FROM userinfo");
    while ($row = mysqli_fetch_array($stmt)) {
        $userId = $row['user_id'];
        $rewardPoints = $row['reward_points'];
    }

    $query2 = "UPDATE userinfo SET reward_points = '$rewardPoints'-'$hotelsPrice'*0.10 WHERE user_id = $userId";
    $data2 = mysqli_query($conn,$query2);
?>

<!DOCTYPE html>

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="refresh" content="0;url=booked.php" />
        <title>Finished Booking</title>
    </head>
</html>
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
    $bookedId = $_GET['bookedID'];
    $hotelsPrice = $_GET['hotelPRICE'];
    $roomNumber = $_GET['roomNUMBER'];
    $days = $_GET['days'];

    $query = "DELETE FROM bookedhotel WHERE booked_id = '$bookedId' ";
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

    if($rewardPoints > 0) {
        $query2 = "UPDATE userinfo SET reward_points = '$rewardPoints'-'$hotelsPrice'*'$roomNumber'*'$days'*0.10 WHERE user_id = $userId";
        $data2 = mysqli_query($conn,$query2);
    } else {
        $query2 = "UPDATE userinfo SET reward_points = '$rewardPoints'+'$hotelsPrice'*'$roomNumber'*'$days' WHERE user_id = $userId";
        $data2 = mysqli_query($conn,$query2);
    }

    $query3 = "UPDATE room SET room_count = room_count + '$roomNumber' WHERE hotel_id = $hotelsId";
    $data3 = mysqli_query($conn,$query3);

?>

<!DOCTYPE html>

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="refresh" content="0;url=booked.php" />
        <title>Finished Booking</title>
    </head>
</html>
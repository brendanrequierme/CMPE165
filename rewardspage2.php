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

<?php
        $stmt = mysqli_query($conn,"SELECT * FROM userinfo");
        while ($row = mysqli_fetch_array($stmt)) {
            $rewardPoints = $row['reward_points'];
            }

        if ($rewardPoints < 0) {
        echo "
            <h1 style = margin:0px>Reward Points: 0</h1>
            <h2> No Hotels Available </h2>
            ";
        } else {
            echo "
            <h1 style = margin:0px>Reward Points: $rewardPoints</h1>
            <h2> No Hotels Available </h2>
            ";
        }
?>

<!DOCTYPE html>

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Rewards Page</title>
    </head>

    <body>
        <div>

        </div>
        
    </body>
</html>
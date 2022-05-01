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

<!DOCTYPE HTML>
    <div class="card-body" style = margin-bottom:10px;>
        <form method="GET">
            <div class="group">
                <select name="sort_numeric" class="form-control">
                    <option value="">-------</option>
                    <option value="low-high" <?php if(isset($_GET['sort_numeric']) && $_GET['sort_numeric'] == "low-high") {echo "selected";}?> >low - high</option>
                    <option value="high-low" <?php if(isset($_GET['sort_numeric']) && $_GET['sort_numeric'] == "high-low") {echo "selected";}?> >high - low</option>
                </select>
                <button type="submit" style = margin-left:10px;>Filter</button>
            </div>
        </form>
    </div>
</html>

<?php
        $stmt = mysqli_query($conn,"SELECT * FROM userinfo");
        while ($row = mysqli_fetch_array($stmt)) {
            $rewardPoints = $row['reward_points'];
            }
        echo "
            <h1 style = margin:0px>Reward Points: $rewardPoints</h1>
            ";

            $sort_option = "";
            $stmt = mysqli_query($conn,"SELECT * FROM hotel WHERE hotel.usd < $rewardPoints");
            if(isset($_GET['sort_numeric'])) {
                if($_GET['sort_numeric'] == "low-high") {
                    $sort_option = "ASC";
                } elseif($_GET['sort_numeric'] == "high-low")
                    $sort_option = "DESC";
            }
            $query = "SELECT * From hotel WHERE hotel.usd < $rewardPoints ORDER BY usd $sort_option";
            $query_run = mysqli_query($conn, $query);

            if(mysqli_num_rows($query_run) > 0) {
                foreach($query_run as $row) {
                    $hotelID = $row['hotel_id'];
                    $hotelName = $row['hotel_name'];
                    $hotelDescription = $row['description'];
                    $hotelCity = $row['city_id'];
                    $hotelRating = $row['rating'];
                    $hotelPrice = $row['usd'];
                    $hotelImage = $row['image'];

            echo "
            <div>
            <table style = margin-left:190px>
                <td><img style = margin-right:15px class = 'picBorder' src = 'images/$hotelImage' width='280' height='280'/></td>
                <td>
                <h1 style = margin:0px>$hotelName</h1>
                <p style = margin:0px;font-size:18px>$hotelDescription</p>
                <p style = font-size:18px>Rating: $hotelRating</p>
                <p style = font-size:18px>Hotel Price: $$hotelPrice</p>
                <form action = 'bookingroom.php?hotelID=$hotelID&hotelNAME=$hotelName&hotelDESCRIPTION=$hotelDescription&hotelCITY=$hotelCity&hotelPRICE=$hotelPrice&hotelIMAGE=$hotelImage&hotelRATING=$hotelRating' method = 'post'>
                <input style = width:110px; name = '$hotelID' type = 'submit' class = 'bookButton'  value = 'Book Now!' />
                </form>
                </td>
            </table>
            </div>
            ";  
        }
    } else {
        ?>
        <h2> No Hotels Available </h2>
        <?php
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
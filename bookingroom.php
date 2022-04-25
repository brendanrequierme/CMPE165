<?php
    // Initialize the session
    session_start();

    if (!$_SESSION) {
        include 'header.php';
    } else {
        include 'header2.php';
    }
    include 'database.php';

    global $datefilter;
?>

<?php
        $stmt = mysqli_query($conn,"SELECT * FROM hotel WHERE hotel_id = 1");
        while ($row = mysqli_fetch_array($stmt)) {
            $hotelName = $row['hotel_name'];
            $hotelDescription = $row['description'];
            $hotelCity = $row['city_id'];
            $hotelRating = $row['rating'];
            $hotelPrice = $row['usd'];
            $hotelImage = $row['image'];
                $stmt2 = mysqli_query($conn,"SELECT SUM(bed_count) AS bedcount FROM room WHERE hotel_id IN (SELECT hotel_id FROM hotel WHERE hotel_name LIKE '%$hotelName%')");
                while ($rows = mysqli_fetch_array($stmt2)) {
                    $hotelRoom = $rows['bedcount'];
                }

            echo "
            <div>
            <table style = margin-left:500px>
                <td><img style = margin-right:15px class = 'picBorder' src = 'images/$hotelImage' width='280' height='280'/></td>
                <td>
                <h1 style = margin:0px>$hotelName</h1>
                <p style = margin:0px;font-size:18px>$hotelDescription</p>
                <p style = font-size:18px>Rating: $hotelRating</p>
                <p style = font-size:18px>Number of Rooms Available: $hotelRoom</p>
                <p style = font-size:18px>Hotel Price: $$hotelPrice</p>
                <form action = 'payment.php' method = 'post'>
                <input style = width:110px; name = 'mainName' type = 'submit' class = 'bookButton'  value = 'Pay Now!' />
                </form>
                </td>
            </table>
            </div>
            "; 
        }

?>
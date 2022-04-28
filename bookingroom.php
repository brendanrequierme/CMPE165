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

    $hotelsId = $_GET['hotelID'];
    
?>

<?php
        $stmt = mysqli_query($conn,"SELECT * FROM hotel WHERE hotel_id = $hotelsId");
        while ($row = mysqli_fetch_array($stmt)) {
            $hotelID = $row['hotel_id'];
            $hotelName = $row['hotel_name'];
            $hotelDescription = $row['description'];
            $hotelCity = $row['city_id'];
            $hotelRating = $row['rating'];
            $hotelPrice = $row['usd'];
            $hotelImage = $row['image'];
            }

            echo "
            <div>
            <table style = margin-left:300px>
                <td><img style = margin-right:15px class = 'picBorder' src = 'images/$hotelImage' width='280' height='280'/></td>
                <td>
                <h1 style = margin:0px>$hotelName</h1>
                <p style = margin:0px;font-size:18px>$hotelDescription</p>
                <p style = font-size:18px>Rating: $hotelRating</p>
                <p style = font-size:18px>Hotel Price: $$hotelPrice</p>
                </td>
            </table>
            </div>
            ";

            $stmt2 = mysqli_query($conn,"SELECT * FROM room");
            while ($row2 = mysqli_fetch_array($stmt2)) {
                $roomName = $row2['room_name'];
                $roomCount = $row2['room_count'];
            }

            echo "
            <div>
            <table style = margin-left:300px>
                <td><img style = margin-right:15px class = 'picBorder' src = 'images/$hotelImage' width='120' height='120'/></td>
                <td>
                <p style = margin:0px;font-size:18px>$roomName</p>
                <p style = font-size:18px>Room Count: $roomCount</p>
                <form action = 'payment.php' method = 'post'>
                <input style = width:110px; name = 'mainName' type = 'submit' class = 'bookButton'  value = 'Pay Now!' />
                </form>
                </td>
            </table>
            <td><p style = font-size:18px;margin-left:125px;>Nearby Food Places</p></td>
            </div>
            ";

            $stmt3 = mysqli_query($conn,"SELECT * FROM restaurant INNER JOIN hotel ON restaurant.hotel_id = hotel.hotel_id WHERE restaurant.hotel_id = '$hotelID'");
            while ($row3 = mysqli_fetch_array($stmt3)) {
                $restaurantName = $row3['restaurant_name'];
                $restaurantImage = $row3['restaurant_image']; 
            
            echo"
            <div style = margin-left:0px; id = 'restaurantAlign'>
            <table style = text-align:center>
                <td><p style = font-size:18px>$restaurantName</p></td>
            <tr>
                <td><img class = 'picBorder' src = 'images/$restaurantImage' width='240' height='240' /><td>
            </tr>
            </table>
            </div>
            "; 
        }

?>
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
    $hotelsName = $_GET['hotelNAME'];
    $hotelsDescription = $_GET['hotelDESCRIPTION'];
    $hotelsCity = $_GET['hotelCITY'];
    $hotelsPrice = $_GET['hotelPRICE'];
    $hotelsImage = $_GET['hotelIMAGE'];
    $hotelsRating = $_GET['hotelRATING'];

    
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
                <p style = font-size:18px>Room Price: $$hotelPrice</p>
                </td>
            </table>
            </div>
            ";

            $stmt2 = mysqli_query($conn,"SELECT * FROM room INNER JOIN hotel ON room.hotel_id = hotel.hotel_id WHERE room.hotel_id = $hotelsId");
            while ($row2 = mysqli_fetch_array($stmt2)) {
                $roomName = $row2['room_name'];
                $roomCount = $row2['room_count'];

            }

            echo "
            <div>
            <table style = margin-left:300px>
                <td><img style = margin-right:15px class = 'picBorder' src = 'images/basic room.jpg' width='150' height='150'/></td>
                <td>
                <p style = margin:0px;font-size:18px>$roomName</p>
                <p style = font-size:18px>Room Count: $roomCount</p>
                <label for='roomNum'>Choose # Rooms to Book:</label>
                <select id='roomNum'>
                    <option value='1'>1</option>
                    <option value='2'>2</option>
                    <option value='3'>3</option>
                    <option value='4'>4</option>
                    <option value='5'>5</option>
                    <option value='6'>6</option>
                    <option value='7'>7</option>
                    <option value='8'>8</option>
                    <option value='9'>9</option>
                    <option value='10'>10</option>
                </select>
                <form action = 'payment.php?hotelID=$hotelID&hotelNAME=$hotelName&hotelDESCRIPTION=$hotelDescription&hotelCITY=$hotelCity&hotelPRICE=$hotelPrice&hotelIMAGE=$hotelImage&hotelRATING=$hotelRating' method = 'post'>
                <input style = width:110px;margin-top:10px; name = 'mainName' type = 'submit' class = 'bookButton'  value = 'Pay Now!' />
                </form>
                </td>
            </table>
            <td><b><p style = font-size:18px;margin-left:125px;mergin-bottom:-50px>Nearby Food Places</p></b></td>
            </div>
            ";

            $stmt3 = mysqli_query($conn,"SELECT * FROM restaurant INNER JOIN hotel ON restaurant.hotel_id = hotel.hotel_id WHERE restaurant.hotel_id = '$hotelID'");
            while ($row3 = mysqli_fetch_array($stmt3)) {
                $restaurantName = $row3['restaurant_name'];
                $restaurantImage = $row3['restaurant_image']; 
            
            echo"
            <div id = 'restaurantAlign'>
            <table style = text-align:center>
                <td>
                <p style = font-size:18px>$restaurantName</p>
                <img class = 'picBorder' src = 'images/$restaurantImage' width='240' height='240' />
                </td>
            </table>
            </div>
            "; 
        }

?>
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
    $bookedId = 0;
    $x = 0;
    if(isset($_POST['checkDate'])){ // Check if form was submitted
    $input = $_POST['startDate']; // Get input text
    }
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
                <form action='#?$x = '1'' method='post'>
                <p style = margin-top:2px;margin-bottom:0px for='start'>Choose Start Date: </p>
                <input required type='date' name='startDate' value = 'startDATE' style = padding-right:-150px/>
                <p style = margin-top:2px;margin-bottom:0px for='start'>Choose End Date: </p>
                <input  require type='date' name='endDate'/>
                <input style = width:110px;margin-bottom:-300px;margin-left:40px; name = 'checkDate' type = 'submit' class = 'bookButton'  value = 'Check Date!' />
                <td><img style = margin-right:15px class = 'picBorder' src = 'images/$hotelImage' width='220' height='220'/></td>
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

            $stmt3 = mysqli_query($conn,"SELECT * FROM bookedhotel");
            while ($row3 = mysqli_fetch_array($stmt3)) {
                $bookedId = $row3['hotel_id'];
            }

            if ($x == 1) {
            echo "
            <div>
            <form action = 'payment.php?hotelID=$hotelID&hotelNAME=$hotelName&hotelDESCRIPTION=$hotelDescription&hotelCITY=$hotelCity&hotelPRICE=$hotelPrice&hotelIMAGE=$hotelImage&hotelRATING=$hotelRating' method = 'post'>
            ";
            };
            echo "
            <table style = margin-left:300px>
            <td><img style = margin-right:15px class = 'picBorder' src = 'images/basic room.jpg' width='200' height='200'/></td>
            <td>
            <p style = margin-top:2px;margin-bottom:0px;font-size:18px>$roomName</p>
            <p style = font-size:18px;margin-top:2px;margin-bottom:0px>Room Count: $roomCount</p>
            ";
            #SCUFFED BUT IT'LL WORK?!?!?
            if($roomCount != '0') {
            echo "
            <p for = 'roomNum'>Choose # Rooms to Book:</p>
            ";
            if($roomCount == '1') { 
            echo "
            <select name = 'roomNum' id='roomNum'>
                <option value='1'>1</option>
            </select>
            ";
            } else if ($roomCount == '2') { 
            echo "
            <select name = 'roomNum' id='roomNum'>
                <option value='1'>1</option>
                <option value='2'>2</option>
            </select>
            ";
            } else if ($roomCount == '3') { 
            echo "
            <select name = 'roomNum' id='roomNum'>
                <option value='1'>1</option>
                <option value='2'>2</option>
                <option value='3'>3</option>
            </select>
            ";
            } else if ($roomCount == '4') {
            echo "
            <select name = 'roomNum' id='roomNum'>
                <option value='1'>1</option>
                <option value='2'>2</option>
                <option value='3'>3</option>
                <option value='4'>4</option>
            </select>
            ";
            } else if ($roomCount == '5') {
            echo "
            <select name = 'roomNum' id='roomNum'>
                <option value='1'>1</option>
                <option value='2'>2</option>
                <option value='3'>3</option>
                <option value='4'>4</option>
                <option value='5'>5</option>
            </select>
            ";
            } else if ($roomCount == '6') {
            echo "
            <select name = 'roomNum' id='roomNum'>
                <option value='1'>1</option>
                <option value='2'>2</option>
                <option value='3'>3</option>
                <option value='4'>4</option>
                <option value='5'>5</option>
                <option value='6'>6</option>
            </select>
            ";    
            } else if ($roomCount == '7') {
            echo "
            <select name = 'roomNum' id='roomNum'>
                <option value='1'>1</option>
                <option value='2'>2</option>
                <option value='3'>3</option>
                <option value='4'>4</option>
                <option value='5'>5</option>
                <option value='6'>6</option>
                <option value='7'>7</option>
            </select>
            ";
            } else if ($roomCount == '8') {
            echo "
            <select name = 'roomNum' id='roomNum'>
                <option value='1'>1</option>
                <option value='2'>2</option>
                <option value='3'>3</option>
                <option value='4'>4</option>
                <option value='5'>5</option>
                <option value='6'>6</option>
                <option value='7'>7</option>
                <option value='8'>8</option>
            </select>
            ";
            } else if ($roomCount == '9') {
            echo "
            <select name = 'roomNum' id='roomNum'>
                <option value='1'>1</option>
                <option value='2'>2</option>
                <option value='3'>3</option>
                <option value='4'>4</option>
                <option value='5'>5</option>
                <option value='6'>6</option>
                <option value='7'>7</option>
                <option value='8'>8</option>
                <option value='9'>9</option>
            </select>
            ";
            } else if ($roomCount == '10') {
            echo "
            <select name = 'roomNum' id='roomNum'>
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
            ";
            }
        } else {
            echo "
            <p>No More Rooms Available</p>
            </table>
                <td><b><p style = font-size:18px;margin-left:125px;mergin-bottom:-50px>Nearby Food Places</p></b></td>
            </div>
            ";
            }
            if($roomCount > 0) {
            echo "
                <tr>
                    <td>
                    ";
                    if($hotelsId == $bookedId) {
                    echo"
                    </form>
                    <form action = '?hotelID=$hotelID&hotelNAME=$hotelName&hotelDESCRIPTION=$hotelDescription&hotelCITY=$hotelCity&hotelPRICE=$hotelPrice&hotelIMAGE=$hotelImage&hotelRATING=$hotelRating' method = 'post'>
                    ";
                    $x = 69;
                    $startDate = 1;
                    echo "
                    <script>
                    function alertBox() {
                        alert('You Can Not Book 2 Hotels on the Same Dates!');
                    }
                    </script>
                        <input style = width:110px;margin-bottom:-300px;margin-left:40px; name = 'mainName' type = 'submit' class = 'bookButton'  value = 'Pay Now!' onclick='alertBox()' />
                    </form>
                    ";
                    } else {
                    echo"
                        <input style = width:110px;margin-bottom:-300px;margin-left:40px; name = 'mainName' type = 'submit' class = 'bookButton'  value = 'Pay Now!' />
                        </form>
                    ";
                    }
                    echo"
                    </td>
                </tr>
                </td>
                </table>
                    <td><b><p style = font-size:18px;margin-left:125px;mergin-bottom:-50px>Nearby Food Places</p></b></td>
                </div>
            ";
            }
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

<!DOCTYPE html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Booked Room</title>
    </head>
</html>

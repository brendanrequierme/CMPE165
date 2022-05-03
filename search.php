<?php
    // Initialize the session
    session_start();

    if (!$_SESSION) {
        include 'header.php';
    } else {
        include 'header2.php';
    }
    include 'database.php';
    
    echo "
        <div class = 'searchBarOuter2'>
        <table class = 'test'>
        <form method='post' action = 'search.php'>
        <div class='searchBox'>
                <td><input type='text' class='search2' placeholder='Search...' name='inputHere' style = margin-right:20px;margin-left:65px></td>
        </div>
        <td><input type='submit' class = 'searchButton' name = 'searchs' value = 'SEARCH'></td>
        </form>
    </table>
    </div>
    ";

    if (isset($_POST['searchs'])){
        $searchQuery = $_POST['inputHere'];
        $stmt = mysqli_query($conn,"SELECT * FROM hotel WHERE hotel_name LIKE '%$searchQuery%'");
        while ($row = mysqli_fetch_array($stmt)) {
            $hotelName = $row['hotel_name'];
            $hotelDescription = $row['description'];
            $hotelCity = $row['city_id'];
            $hotelRating = $row['rating'];
            $hotelPrice = $row['usd'];
            $hotelImage = $row['image'];
            $hotelID = $row['hotel_id'];

            echo "
            <div>
            <table style = margin-left:500px>
                <td><img style = margin-right:15px class = 'picBorder' src = 'images/$hotelImage' width='280' height='280'/></td>
                <td>
                <h1 style = margin:0px>$hotelName</h1>
                <p style = margin:0px;font-size:18px>$hotelDescription</p>
                <p style = font-size:18px>Rating: $hotelRating</p>
                <p style = font-size:18px>Hotel Price: $$hotelPrice</p>
                <form action = 'bookingroom.php?hotelID=$hotelID&hotelNAME=$hotelName&hotelDESCRIPTION=$hotelDescription&hotelCITY=$hotelCity&hotelPRICE=$hotelPrice&hotelIMAGE=$hotelImage&hotelRATING=$hotelRating' method = 'post'>
                <input style = width:110px; name = 'mainName' type = 'submit' class = 'bookButton'  value = 'Book Now!' />
                </form>
                </td>
            </table>
            </div>
            "; 
        }
        if(mysqli_num_rows($stmt) < 1) {
            echo "
                <h2> No Record Found </h2>
            ";
            }
        }

?>

<!DOCTYPE HTML>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Search Page</title>
    </head>
</html>
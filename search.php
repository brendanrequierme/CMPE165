<?php
    include 'header.php';
    include 'database.php';

   
    if (isset($_POST['searchs'])){
        $searchQuery = $_POST['inputHere'];
        $stmt = mysqli_query($conn,"SELECT * FROM hotel WHERE hotel_name LIKE '%$searchQuery%'");
        while ($row = mysqli_fetch_array($stmt)) {
            $hotelName = $row['hotel_name'];
            $hotelDescription = $row['description'];
            $hotelPrice = $row['usd'];
            $hotelImage = $row['image'];

            echo "
            <div id='organize'>
            <h3>$hotelName</h3>
            <h3>Description: $hotelDescription</h3>
            <h3>Hotel Price: $hotelPrice</h3>
            <img src = 'images/$hotelImage' width='180' height='180' />
            </div>
            "; 
        }
        if(mysqli_num_rows($stmt) < 1) {
            echo("No Data Found");
        }
    }
?>


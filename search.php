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
                $stmt2 = mysqli_query($conn,"SELECT SUM(bed_count) AS bedcount FROM room WHERE hotel_id IN (SELECT hotel_id FROM hotel WHERE hotel_name LIKE '%$hotelName%')");
                while ($rows = mysqli_fetch_array($stmt2)) {
                $hotelRoom = $rows['bedcount'];
                }
                echo "
                <div id='organize'>
                <table>
                    <h3>$hotelName</h3>
                    <h3>Description: $hotelDescription</h3>
                    <h3>Number of Rooms Available: $hotelRoom</h3>
                    <h3>Hotel Price: $hotelPrice</h3>
                    <td><img src = 'images/$hotelImage' width='180' height='180' /></td>
                </table>
                </div>

                "; 
        }
        if(mysqli_num_rows($stmt) < 1) {
            echo("No Data Found");
        }
    }

?>

<!DOCTYPE html>
        <body>
            <form action = "payment.php">
                <input style = margin-left:2%; type = "submit" class = "bookButton"  value = "Book Now!" />
            </form>
        </body>
</html>
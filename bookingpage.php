<?php
    include 'header.php';
    include 'database.php';

    echo "
    <div class = 'searchBarOuter2'>
    <table class = 'test'>
        <form method='post' action = 'search.php' >
            <div class='searchBox'>
                    <td><input type='text' class='search' placeholder='Search...' name='inputHere'></td>
            </div>
            <td><label for='start'>Check-In Date:</label></td>
            <td><input type='date' id='start' name='res-start' style = margin-right:25px></td>
            <td><label for='end'>Check-Out Date:</label></td>
            <td><input type='date' style = 'margin-right:20px' id='end' name='res-end'></td>
            <td><input type='submit' class = 'searchButton' name = 'searchs' value = 'SEARCH'></td>
            </form>
    </table>
    </div>
    ";

        $stmt = mysqli_query($conn,"SELECT * FROM hotel");
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
            <table>
                <td><img src = 'images/$hotelImage' width='180' height='180' /></td>
                <td>
                <h2>$hotelName</h2>
                <h3>Description: $hotelDescription</h3>
                <h3>Number of Rooms Available: $hotelRoom</h3>
                <h3>Hotel Price: $$hotelPrice</h3>
                </td>
                <tr>
                <td><form action = 'payment.php'>
                <input style = width:110px; type = 'submit' class = 'bookButton'  value = 'Book Now!' />
                </form>
                </td>
                </tr>
            </table>
            </div>
            "; 
        }

    include 'footer.php';

?>
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
    echo "
        <div class = 'searchBarOuter2'>
        <table class = 'test'>
        <form method='post' action = 'search.php'>
        <div class='searchBox'>
                <td><input type='text' class='search' placeholder='Search...' name='inputHere'></td>
        </div>
        <td><label for='start'>Choose Date: </label></td>
        <td>
            <input type='text' name='datefilter' value=''  style = margin-right:30px;/>
        </td>
        
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
                $hotelPrice = $row['usd'];
                $hotelImage = $row['image'];
                $stmt2 = mysqli_query($conn,"SELECT SUM(bed_count) AS bedcount FROM room WHERE hotel_id IN (SELECT hotel_id FROM hotel WHERE hotel_name LIKE '%$hotelName%')");
                while ($rows = mysqli_fetch_array($stmt2)) {
                    $hotelRoom = $rows['bedcount'];
                }

            echo "
            <div id='organize'>
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
        if(mysqli_num_rows($stmt) < 1) {
            echo("No Data Found");
            }
        }

    include 'footer.php';

?>

<!DOCTYPE HTML>
    <script type='text/javascript'>
        $(function() {
        $('input[name="datefilter"]').daterangepicker({
                autoUpdateInput: false,
                locale: {
                            cancelLabel: 'Clear'
                        }
                    });
                $('input[name="datefilter"]').on('apply.daterangepicker', function(ev, picker) {
                $(this).val(picker.startDate.format('MM/DD/YYYY') + ' - ' + picker.endDate.format('MM/DD/YYYY'));
            });

            $('input[name="datefilter"]').on('cancel.daterangepicker', function(ev, picker) {
                $(this).val('');
            });
        });
    </script>
</html>
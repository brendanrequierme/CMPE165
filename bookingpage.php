<?php
    // Initialize the session
    session_start();

    if (!$_SESSION) {
        include 'header.php';
    } else {
        include 'header2.php';
}
    $saveUser = $_GET['id'];
    include 'database.php';

    global $datefilter;
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

<?php
    echo "
        <div class = 'searchBarOuter2'>
        <table class = 'test'>
        <form method='post' action = 'search.php'>
        <div class='searchBox'>
                <td><input type='text' class='search' placeholder='Search...' name='inputHere'></td>
        </div>
        <td><label for='start'>Choose Date: </label></td>
        <td style>
            <input type='text' name='datefilter' value='' style = margin-right:30px;/>
        </td>
        <td><input type='submit' class = 'searchButton' name = 'searchs' value = 'SEARCH'></td>
        </form>
    </table>
    </div>
    
    ";
?>

<!DOCTYPE HTML>
    <div class="card-body" style = margin-bottom:10px;>
        <form method="GET">
            <div class="group" style = padding-left:2px;>
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
        $sort_option = "";
        $stmt = mysqli_query($conn,"SELECT * FROM hotel");
        if(isset($_GET['sort_numeric'])) {
            if($_GET['sort_numeric'] == "low-high") {
                $sort_option = "ASC";
            } elseif($_GET['sort_numeric'] == "high-low") 
            $sort_option = "DESC";
        }
        $query = "SELECT * From hotel ORDER BY usd $sort_option";
        $query_run = mysqli_query($conn, $query);

        if(mysqli_num_rows($query_run) > 0) {
            foreach($query_run as $row) {
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
        } else {
            ?>
            <h2> No Record Found </h2>
            <?php
        }
                
        // while ($row = mysqli_fetch_array($stmt)) {
        //         $hotelName = $row['hotel_name'];
        //         $hotelDescription = $row['description'];
        //         $hotelPrice = $row['usd'];
        //         $hotelImage = $row['image'];
        //         $stmt2 = mysqli_query($conn,"SELECT SUM(bed_count) AS bedcount FROM room WHERE hotel_id IN (SELECT hotel_id FROM hotel WHERE hotel_name LIKE '%$hotelName%')");
        //         while ($rows = mysqli_fetch_array($stmt2)) {
        //             $hotelRoom = $rows['bedcount'];
        //         }

        //     echo "
        //     <table>
        //         <td><img src = 'images/$hotelImage' width='180' height='180' /></td>
        //         <td>
        //         <h2>$hotelName</h2>
        //         <h3>Description: $hotelDescription</h3>
        //         <h3>Number of Rooms Available: $hotelRoom</h3>
        //         <h3>Hotel Price: $$hotelPrice</h3>
        //         </td>
        //         <tr>
        //         <td><form action = 'payment.php'>
        //         <input style = width:110px; type = 'submit' class = 'bookButton'  value = 'Book Now!' />
        //         </form>
        //         </td>
        //         </tr>
        //     </table>
        //     </div>
        //     ";
        // }




        $username =$saveUser;
        if (!$_SESSION) {
            include 'footer.php';
        } else {
            include 'footer2.php';
        }


?>
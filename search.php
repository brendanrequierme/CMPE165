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
                <td><input type='text' class='search2' placeholder='Search...' name='inputHere' style = margin-right:180px></td>
        </div>
        <td><label for='start'>Choose Start Date: </label></td>
                    <td>
                        <input type='date' name='startDate' style = margin-right:30px;/>
                    </td>
                    <td><label for='start'>Choose End Date: </label></td>
                    <td>
                        <input type='date' name='endDate' style = margin-right:30px;/>
                    </td>
        <td><input type='submit' class = 'searchButton' name = 'searchs' value = 'SEARCH'></td>
        </form>
    </table>
    </div>
    ";
    $startDate = $_POST['startDate'];
    $endDate = $_POST['endDate'];
    /*echo $startDate;
    echo " ";
    echo date("Y-m-d");*/
    if (isset($_POST['searchs'])){
        /*if($startDate > $endDate) {
            echo "Start date is after end date.";
        } else if($startDate < date("Y/m/d")) {
            echo "Start date is in the past.";
        } else if($endDate < date("Y/m/d")) {
            echo "End date is in the past.";
        }else{*/
            $searchQuery = $_POST['inputHere'];
            $stmt = mysqli_query($conn,"SELECT * FROM hotel WHERE hotel_name LIKE '%$searchQuery%' AND  WHERE start_date BETWEEN '%$startDate%' AND '%$endDate%'");
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
           // }
    }

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
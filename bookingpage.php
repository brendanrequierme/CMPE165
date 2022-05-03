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
                <td><input type='text' class='search2' placeholder='Search...' name='inputHere' style = margin-right:180px></td>
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
    <div style = margin-bottom:-30px; class="card-body">
        <form method="GET">
                <div class="group">
                    <select name="sort_numeric" class="form-control">
                    <option value="">-------</option>
                    <option value="price: low-high" <?php if(isset($_GET['sort_numeric']) && $_GET['sort_numeric'] == "price: low-high") {echo "selected";}?> >price: low - high</option>
                    <option value="price: high-low" <?php if(isset($_GET['sort_numeric']) && $_GET['sort_numeric'] == "price: high-low") {echo "selected";}?> >price: high - low</option>
                    <option value="rating: low-high" <?php if(isset($_GET['sort_numeric']) && $_GET['sort_numeric'] == "rating: low-high") {echo "selected";}?> >rating: low - high</option>
                    <option value="rating: high-low" <?php if(isset($_GET['sort_numeric']) && $_GET['sort_numeric'] == "rating: high-low") {echo "selected";}?> >rating: high - low</option>
                    </select>
                </div>
    </div>

            <div class="city-body">
                <p style = padding-top:20px>City List</p>
                <?php
                    $city_query = "SELECT * FROM city";
                    $city_query_run  = mysqli_query($conn, $city_query);
        
                    if(mysqli_num_rows($city_query_run) > 0) {
                        foreach($city_query_run as $citylist) {
                            $checked = [];
                                if(isset($_GET['cities'])) {
                                    $checked = $_GET['cities'];
                                }
                            ?>
            </div>

            <div>
                <input style = margin-left:0px type="checkbox" name="cities[]" value="<?= $citylist['city_id']; ?>" 
                    <?php if(in_array($citylist['city_id'], $checked)){ echo "checked"; } ?>
                    />
                    <?= $citylist['city_name']; ?>
            </div>
                <?php            
                }
            } else {
            echo "No cities Found";
            }
        ?>
        <button type="submit" style = margin-left:190px;>Filter</button>
        </form>

        <div style = margin-top:-210px class="city-body-row">
            <?php
                if(isset($_GET['cities'])) {
                    $citychecked = [];
                    $citychecked = $_GET['cities'];
                    foreach($citychecked as $rowcity) {
                        // echo $rowcity;
                        //price and rating filter
                        $hotels = "SELECT * FROM hotel WHERE city_id IN($rowcity)";
                        $sort_price = "";
                        $sort_option= "";
                        $stmt = mysqli_query($conn,"SELECT * FROM hotel");
                        if(isset($_GET['sort_numeric'])) {
                            if($_GET['sort_numeric'] == "price: low-high") {
                                $sort_price = "ASC";
                                $hotels = "SELECT * FROM hotel WHERE city_id IN($rowcity) ORDER BY usd $sort_price";  
                            } elseif($_GET['sort_numeric'] == "price: high-low") {
                                $sort_price = "DESC";
                                $hotels = "SELECT * FROM hotel WHERE city_id IN($rowcity) ORDER BY usd $sort_price";  
                            } elseif($_GET['sort_numeric'] == "rating: low-high") {
                                $sort_option = "ASC";
                                $hotels = "SELECT * FROM hotel WHERE city_id IN($rowcity) ORDER BY rating $sort_option";  
                            } elseif($_GET['sort_numeric'] == "rating: high-low") {
                                $sort_option = "DESC";
                                $hotels = "SELECT * FROM hotel WHERE city_id IN($rowcity) ORDER BY rating $sort_option";  
                            }      
                        }
                        $hotels_run = mysqli_query($conn, $hotels);
                        if(mysqli_num_rows($hotels_run) > 0)
                        {
                            foreach($hotels_run as $hotelitems) :
                                $hotelID = $hotelitems['hotel_id'];
                                $hotelName = $hotelitems['hotel_name'];
                                $hotelStartDate = $hotelitems['start_date'];
                                $hotelEndDate = $hotelitems['end_date'];
                                $hotelDescription = $hotelitems['description'];
                                $hotelCity = $hotelitems['city_id'];
                                $hotelRating = $hotelitems['rating'];
                                $hotelPrice = $hotelitems['usd'];
                                $hotelImage = $hotelitems['image'];
                                echo "
                                <div>
                                    <table style = margin-left:500px>
                                        <td><img style = margin-right:15px class = 'picBorder' src = 'images/$hotelImage' width='280' height='280'/></td>
                                        <td>
                                        <h1 style = margin:0px>$hotelName</h1>
                                        <p style = margin:0px;font-size:18px>$hotelDescription</p>
                                        <p style = margin:0px;font-size:18px>Date of Booking: $hotelStartDate</p>
                                        <p style = margin:0px;font-size:18px>End Date of Booking: $hotelEndDate</p>
                                        <p style = font-size:18px>Rating: $hotelRating</p>
                                        <p style = font-size:18px>Hotel Price: $$hotelPrice</p>
                                        <form action = 'bookingroom.php?hotelID=$hotelID&hotelNAME=$hotelName&hotelDESCRIPTION=$hotelDescription&hotelCITY=$hotelCity&hotelPRICE=$hotelPrice&hotelIMAGE=$hotelImage&hotelRATING=$hotelRating' method = 'post'>
                                        <input style = width:110px; name = '$hotelID' type = 'submit' class = 'bookButton'  value = 'Book Now!' />
                                        </form>
                                        </td>
                                    </table>
                                    </div>
                                    ";
                                    endforeach;
                                }
                            }
                        }
                        else
                        {
                            $hotels = "SELECT * FROM hotel";
                            $sort_price = "";
                            $sort_option = "";
                            $stmt = mysqli_query($conn,"SELECT * FROM hotel");
                            if(isset($_GET['sort_numeric'])) {
                                if($_GET['sort_numeric'] == "price: low-high") {
                                    $sort_price = "ASC";
                                    $sort_option = "ASC";
                                    $hotels = "SELECT * FROM hotel ORDER BY usd $sort_price";  
                                } elseif($_GET['sort_numeric'] == "price: high-low") {
                                    $sort_price = "DESC";
                                    $hotels = "SELECT * FROM hotel ORDER BY usd $sort_price";  
                                } elseif($_GET['sort_numeric'] == "rating: low-high") {
                                    $sort_option = "ASC";
                                    $hotels = "SELECT * FROM hotel ORDER BY rating $sort_option";  
                                } elseif($_GET['sort_numeric'] == "rating: high-low") {
                                    $sort_option = "DESC";
                                    $hotels = "SELECT * FROM hotel ORDER BY rating $sort_option";  
                                }                          
                            }
                            $hotels_run = mysqli_query($conn, $hotels);

                            if(mysqli_num_rows($hotels_run) > 0)
                            {
                                foreach($hotels_run as $hotelitems) :
                                    $hotelID = $hotelitems['hotel_id'];
                                    $hotelName = $hotelitems['hotel_name'];
                                    $hotelDescription = $hotelitems['description'];
                                    $hotelStartDate = $hotelitems['start_date'];
                                    $hotelEndDate = $hotelitems['end_date'];
                                    $hotelCity = $hotelitems['city_id'];
                                    $hotelRating = $hotelitems['rating'];
                                    $hotelPrice = $hotelitems['usd'];
                                    $hotelImage = $hotelitems['image'];
                                    echo "
                                    <div>
                                    <table style = margin-left:500px>
                                        <td><img style = margin-right:15px class = 'picBorder' src = 'images/$hotelImage' width='280' height='280'/></td>
                                        <td>
                                        <h1 style = margin:0px>$hotelName</h1>
                                        <p style = margin:0px;font-size:18px>$hotelDescription</p>
                                        <p style = margin-bottom:0px;font-size:18px>Date of Booking: $hotelStartDate</p>
                                        <p style = margin-top:0px;font-size:18px>End Date of Booking: $hotelEndDate</p>
                                        <p style = font-size:18px>Rating: $hotelRating</p>
                                        <p style = font-size:18px>Hotel Price: $$hotelPrice</p>
                                        <form action = 'bookingroom.php?hotelID=$hotelID&hotelNAME=$hotelName&hotelDESCRIPTION=$hotelDescription&hotelCITY=$hotelCity&hotelPRICE=$hotelPrice&hotelIMAGE=$hotelImage&hotelRATING=$hotelRating' method = 'post'>
                                        <input style = width:110px; name = '$hotelID' type = 'submit' class = 'bookButton'  value = 'Book Now!' />
                                        </form>
                                        </td>
                                    </table>
                                    </div>
                                    ";
                                endforeach;
                            }
                            else
                            {
                                echo "No Items Found";
                            }
                        }
                    ?>
            </div>
</html>
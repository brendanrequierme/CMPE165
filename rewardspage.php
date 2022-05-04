<?php
    // Initialize the session
    session_start();

    if (!$_SESSION) {
        include 'header.php';
        echo "
            <meta http-equiv = 'refresh' content = '0; url = rewardspage3.php'>
        ";
    } else {
        include 'header2.php';
    }
    include 'database.php';
?>

<?php
        $stmt = mysqli_query($conn,"SELECT * FROM userinfo");
        while ($row = mysqli_fetch_array($stmt)) {
            $rewardPoints = $row['reward_points'];
            }
        if ($rewardPoints < 0) {
            echo "
            <h1 style = margin:0px>Reward Points: $rewardPoints</h1>
            ";
        } else {
        echo "
            <h1 style = margin:0px>Reward Points: $rewardPoints</h1>
            ";
        }
?>

<!DOCTYPE HTML>

    <head>
        <meta charset="utf-8">
        <?php
        if ($rewardPoints < 69) {
        echo "
            <meta http-equiv = 'refresh' content = '0; url = rewardspage2.php'>
            ";
        }
        ?>
        <title>Rewards Page</title>
    </head>

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
                        $hotels = "SELECT * From hotel WHERE hotel.usd <= $rewardPoints AND city_id IN($rowcity)";
                        $sort_price = "";
                        $sort_option= "";
                        $stmt = mysqli_query($conn,"SELECT * From hotel WHERE hotel.usd <= $rewardPoints");
                        if(isset($_GET['sort_numeric'])) {
                            if($_GET['sort_numeric'] == "price: low-high") {
                                $sort_price = "ASC";
                                $hotels = "SELECT * From hotel WHERE hotel.usd <= $rewardPoints AND city_id IN($rowcity) ORDER BY usd $sort_price";  
                            } elseif($_GET['sort_numeric'] == "price: high-low") {
                                $sort_price = "DESC";
                                $hotels = "SELECT * From hotel WHERE hotel.usd <= $rewardPoints AND city_id IN($rowcity) ORDER BY usd $sort_price";  
                            } elseif($_GET['sort_numeric'] == "rating: low-high") {
                                $sort_option = "ASC";
                                $hotels = "SELECT * From hotel WHERE hotel.usd <= $rewardPoints AND city_id IN($rowcity) ORDER BY rating $sort_option";  
                            } elseif($_GET['sort_numeric'] == "rating: high-low") {
                                $sort_option = "DESC";
                                $hotels = "SELECT * From hotel WHERE hotel.usd <= $rewardPoints AND city_id IN($rowcity) ORDER BY rating $sort_option";  
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
                            $hotels = "SELECT * From hotel WHERE hotel.usd <= $rewardPoints";
                            $sort_price = "";
                            $sort_option = "";
                            $stmt = mysqli_query($conn,"SELECT * From hotel WHERE hotel.usd <= $rewardPoints");
                            if(isset($_GET['sort_numeric'])) {
                                if($_GET['sort_numeric'] == "price: low-high") {
                                    $sort_price = "ASC";
                                    $sort_option = "ASC";
                                    $hotels = "SELECT * From hotel WHERE hotel.usd <= $rewardPoints ORDER BY usd $sort_price";  
                                } elseif($_GET['sort_numeric'] == "price: high-low") {
                                    $sort_price = "DESC";
                                    $hotels = "SELECT * From hotel WHERE hotel.usd <= $rewardPoints ORDER BY usd $sort_price";  
                                } elseif($_GET['sort_numeric'] == "rating: low-high") {
                                    $sort_option = "ASC";
                                    $hotels = "SELECT * From hotel WHERE hotel.usd <= $rewardPoints ORDER BY rating $sort_option";  
                                } elseif($_GET['sort_numeric'] == "rating: high-low") {
                                    $sort_option = "DESC";
                                    $hotels = "SELECT * From hotel WHERE hotel.usd <= $rewardPoints ORDER BY rating $sort_option";  
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
                                echo "<h2> No Hotels Available </h2>";
                            }
                        }
                    ?>
            </div>
</html>
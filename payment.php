<?php
    // Initialize the session
    session_start();

    if (!$_SESSION) {
        include 'header.php';
    } else {
        include 'header2.php';
    }
    include 'database.php';

    $hotelsId = $_GET['hotelID'];
    $hotelsName = $_GET['hotelNAME'];
    $hotelsDescription = $_GET['hotelDESCRIPTION'];
    $hotelsCity = $_GET['hotelCITY'];
    $hotelsPrice = $_GET['hotelPRICE'];
    $hotelsImage = $_GET['hotelIMAGE'];
    $hotelsRating = $_GET['hotelRATING'];
    $roomNumber = $_POST['roomNum'];
    $startDate = $_GET['startDate'];
    $endDate = $_GET['endDate'];
    $days = $_GET['days'];

?>

<!DOCTYPE html>

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Payment Page</title>
    </head>

    <script src="script.js"></script>

    <body>
        <?php

        $stmt = mysqli_query($conn,"SELECT * FROM userinfo");
        while ($row = mysqli_fetch_array($stmt)) {
            $userId = $row['user_id'];
            $rewardPoints = $row['reward_points'];
            $rewardTotal = $rewardPoints + ($hotelsPrice*$roomNumber*$days) * 0.10;
        }

        $stmt2 = mysqli_query($conn,"SELECT * FROM room INNER JOIN hotel ON room.hotel_id = hotel.hotel_id WHERE room.hotel_id = $hotelsId");
        while ($row = mysqli_fetch_array($stmt2)) {
            $hotelID = $row['hotel_id'];
            $hotelName = $row['room_name'];
            $hotelDescription = $row['description'];
            $hotelCity = $row['city_id'];
            $hotelRating = $row['rating'];
            $hotelPrice = $row['usd'];
            $hotelImage = $row['image'];
            echo "
            <div>
            <table>
            <td><img style = margin-right:15px class = 'picBorder' src = 'images/$hotelImage' width='200' height='200'/></td>
            <td>
                <h1 style = margin:0px>$hotelName</h1>
                <p style = margin:0px;font-size:18px>$hotelDescription</p>
                <p style = font-size:18px>Rating: $hotelRating</p>
                <p style = font-size:18px>Number of Rooms: $roomNumber</p>
                <p style = font-size:18px>Room Price: $".($hotelPrice)."</p>
                <p style = font-size:18px>Room Price: $".($hotelPrice*$roomNumber*$days).".00 For ".$days." days</p>
                </td>
            </table>
            </div>
            ";
        }
        ?>

        <!-- This div is for the Rewards Field -->
        <div>
            <h2 class = "noBotMargin"><span style = color:purple>Pay with Rewards Now!</span></h2>
            <?php
            echo"
                <form action='paymentRewards.php?hotelID=$hotelID&hotelNAME=$hotelName&hotelDESCRIPTION=$hotelDescription&hotelCITY=$hotelCity&hotelPRICE=$hotelPrice&hotelIMAGE=$hotelImage&hotelRATING=$hotelRating&userID=$userId&rewardTOTAL=$rewardTotal&roomNUMBER=$roomNumber&startDATE=$startDate&endDATE=$endDate&days=$days' method = 'POST'>
                    <input style = width:110px;margin-top:10px; name = 'mainName' type = 'submit' class = 'bookButton'  value = 'Pay Now!' />
                </form>
                <form action='finishbookingpage.php?hotelID=$hotelID&hotelNAME=$hotelName&hotelDESCRIPTION=$hotelDescription&hotelCITY=$hotelCity&hotelPRICE=$hotelPrice&hotelIMAGE=$hotelImage&hotelRATING=$hotelRating&userID=$userId&rewardTOTAL=$rewardTotal&roomNUMBER=$roomNumber&startDATE=$startDate&endDATE=$endDate&days=$days' method = 'POST' name = 'form1' autocomplete='off' onsubmit='return required()'>
            ";
            ?>
        </div>
        
         <!-- This div is for the information details-->
         <div>
                <h2 class = "noBotMargin">Your Details</h2>
                <hr class = "lineHeight" class = "noTopMargin" color = "gray">
                <b><p>* required fields</p></b>
                <b><p>First Name*</p></b>
                <input type = "text" name = "fname" placeholder = "Enter your First Name">
                <p>Please give us the name of one of the people staying in this room.</p>
                <b><p>Last Name*</p></b>
                <input type = "text" name = "lname" placeholder = "Enter your Last Name">
                <b><p>Email Address*</p></b>
                <p>Make sure to enter the correct email address.</p>
                <input type = "text" name = "email" placeholder = "Enter your Email Address">
                <b><p>Cell Phone Number*</p></b>
                <p>We'll only contact you in an emergency.</p>
                <input type = "text" name = "phone" placeholder = "Enter your Phone Number">
        </div>

        <!-- This div is for the payment picker part of the page -->
        <div>
            <h2 class = "noBotMargin">Payment Details</h2>
           
            <hr class = "lineHeight" class = "noTopMargin" color = "gray">
        <!--
            <p>First Name*</p>
            <input type = "text" name = "fname" placeholder = "Enter your First Name">
            <p>Please give us the name of one of the people staying in this room.</p>
            <p>Last Name*</p>
            <input type = "text" name = "lname" placeholder = "Enter your Last Name">
        </div>
        -->
        <h3>Pay with Credit/Debit Card Now</h3>
        <p>* required fields</p>
        <h4 class = "noBotMargin">First Name*</h4>
        <input type = "text" name = "fname2" placeholder = "Enter your First Name">
        <h4 class = "noBotMargin">Last Name*</h4>
        <input type = "text" name = "lname2" placeholder = "Enter your Last Name">
        <h4 class = "noBotMargin">Card Number*</h4>
        <input type = "text" name = "card" placeholder = "Enter your Card Number">
        <h4 class = "noBotMargin">Expiration Date*</h4>
        <input type = "text" name = "expiration" placeholder = "Enter your Expiration Date">
        <h4 class = "noBotMargin">Security Code*</h4>
        <input type = "text" name = "seccode" placeholder = "Enter your Security Code">
        <h4 class = "noBotMargin">ZIP Code*</h4>
        <p class = "noMargin">We'll use this to verify your credit card details</p>
        <input type = "text" name = "zipcode" placeholder = "12345">

        <h3>Easier Payment Powered by PayPal.</h3>
        <div id="smart-button-container">
        <div id="paypal-button-container"></div>
        </div>
        </div>
        <script src="https://www.paypal.com/sdk/js?client-id=sb&enable-funding=venmo&currency=USD" data-sdk-integration-source="button-factory"></script>
        <script>
            function initPayPalButton() {
            paypal.Buttons({
            style: {
            shape: 'pill',
            color: 'blue',
            layout: 'vertical',
            label: 'pay',
        },

        createOrder: function(data, actions) {
          return actions.order.create({
            purchase_units: [{"amount":{"currency_code":"USD","value":1}}]
          });
        },

        onApprove: function(data, actions) {
          return actions.order.capture().then(function(orderData) {
            
            // Full available details
            console.log('Capture result', orderData, JSON.stringify(orderData, null, 2));

            // Show a success message within this page, e.g.
            const element = document.getElementById('paypal-button-container');
            element.innerHTML = '';
            element.innerHTML = '<h3>Thank you for your payment!</h3>';

            // Or go to another URL:  actions.redirect('thank_you.html');
            
          });
        },
                onError: function(err) {
                console.log(err);
                }
            }).render('#paypal-button-container');
            }
            initPayPalButton();
        </script>

        <div>
            <h2 class = "noBotMargin">Cancellation Policy</h2>
            <hr class = "lineHeight" class = "noTopMargin" color = "gray">
            <h3>Basic Room, 2 Twin Beds, Non Smoking</h3>
            <p>Non-refundable rate</p>
            <!-- Eventually turn this into a drop down -->
            <p>If you cancel your booking within 24 hrs, you will be charged 25% of the booking's total.</p>
        </div>

        <input type = "submit" name = "submit" value = "Book Now" />
        </form>

    </body>

</html>
<?php
    // Initialize the session
    session_start();

    if (!$_SESSION) {
        include 'header.php';
    } else {
        include 'header2.php';
    }
    include 'database.php';

?>

<!DOCTYPE html>

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Payment Page</title>
    </head>

    <script src="script.js"></script>

    <body>
 
        <form name = "form1" action="finishbookingpage.php" autocomplete="off" onsubmit="return required()">

        <?php
        $stmt = mysqli_query($conn,"SELECT * FROM hotel WHERE hotel_id = 1");
        while ($row = mysqli_fetch_array($stmt)) {
            $hotelPrice = $row['usd'];

            echo "
            <div>
            <table style = margin-left:500px>
                <p style = font-size:18px>Hotel Price: $$hotelPrice</p>
                </td>
            </table>
            </div>
            "; 
        }
        ?>

         <!-- This div is for the information details-->
         <div>
                <h2 class = "noBotMargin">Your Details</h2>
                <hr class = "lineHeight" class = "noTopMargin" color = "gray">
                <p>* required fields</p>
                <p>First Name*</p>
                <input type = "text" name = "fname" placeholder = "Enter your First Name">
                <p>Please give us the name of one of the people staying in this room.</p>
                <p>Last Name*</p>
                <input type = "text" name = "lname" placeholder = "Enter your Last Name">
                <p>Email Address*</p>
                <p>Make sure to enter the correct email address.</p>
                <input type = "text" name = "email" placeholder = "Enter your Email Address">
                <p>Cell Phone Number*</p>
                <p>We'll only contact you in an emergency.</p>
                <input type = "text" name = "phone" placeholder = "Enter your Phone Number">
        </div>

        <!-- This div is for the room details -->
        <div>
            <h2 class = "noBotMargin">Room Details</h2>
            <hr class = "lineHeight" class = "noTopMargin" color = "gray">
            <h3>Property Amenities</h3>
            <table>
                    <td>Pet-Friendly</td>
                    <td>Pool</td>
                    <td>Free WiFi</td>
                    <td>Bathtub</td>
                    <td>Bar</td>
                    <td>Gym</td>
            </table>
            <h3>Room, 2 Queen Beds, Non smoking</h3>
            <p>Any special requests?<p>
            <p>Any accessible requests?<p>
        </div>

        <div>
            <p>If you don't book now, this amazing deal could be gone</p>
        </div>

        <div>
            <h2 class = "noBotMargin">Booking Protection</h2>
            <hr class = "lineHeight" class = "noTopMargin" color = "gray">
            <p>Why you might need it for your non-refundable stay:</p>
            <p>1. Up to 100% booking reimbursement if you can't travel for a covered reasons</p>
            <p>2. Up to 100% reimbursement on unused nights if you must leave early due to a covered sickness</p>
            <p>3. Up to $150 for lodging and meals if delayed for covered reasons</p>
            <P>4. Up to $150 for covered essentials if your baggage is delayed</p>
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

        <!-- This div is for the Rewards Field -->
        <div>
            <h2 class = "noBotMargin"><span style = color:purple>Join SpartanDeathHotels.com Rewards</span></h2>
            <p class = "noTopMargin">(optional)</p>
            <h4 class = "noBotMargin">Create password</h4>
            <p class = "noMargin">6 to 20 letters, with at least 1 number</p>
            <input type = "text" name = "password">
        </div>

        <div>
            <h2 class = "noBotMargin">Cancellation Policy</h2>
            <hr class = "lineHeight" class = "noTopMargin" color = "gray">
            <h3>Room, 2 Queen Beds, Non Smoking</h3>
            <p>Non-refundable rate</p>
            <!-- Eventually turn this into a drop down -->
            <p class = "noMargin">If you change or cancel your booking you will not get a refund or credit to use for a future stay. This policy</p>
            <p class = "noTopMargin">will apply regardless of COVID-19, subject to any local consumer laws.</p>
        </div>

        <input type = "submit" name = "submit" value = "Book Now" />
        </form>

    </body>

</html>
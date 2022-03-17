<?php
    include 'header.php';
?>

<!DOCTYPE html>

    <head>
        <title>Payment Page</title>
    </head>

    <body>
 
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
            <label for = "payment">Please Pick A Payment Method:</label>

            <select name = "payment" id = "payment">
            <option value = "" disable selected>Please Select a Method</option>
            <option value = "Card">Credit / Debit Card</option>
            <option value = "Google Pay">Google Pay</option>
            <option value = "PayPal">PayPal</option>
            <option value = "Gift Card">Gift Card</option>
            </select>

            <p>We never charge any credit card fees</p>
            <p>First Name*</p>
            <input type = "text" name = "fname" placeholder = "Enter your First Name">
            <p>Please give us the name of one of the people staying in this room.</p>
            <p>Last Name*</p>
            <input type = "text" name = "lname" placeholder = "Enter your Last Name">
            <p>Credit Card Number*</p>
            <input type = "text" name = "cardnum" placeholder = "0000 0000 0000 0000">
            <p>Expiration Date*</p>
            <input type = "text" name = "expiration" placeholder = "MM/YY">
            <p>Security Code*</p>
            <input type = "text" name = "seccode" placeholder = "000">
        </div>

        <!-- This div is for the payment information part of the page -->
        <div>
            <h2 class = "noBotMargin">Billing Address</h2>
            <hr class = "lineHeight" class = "noTopMargin" color = "gray">
            <h4 class = "noMargin">ZIP Code*</h4>
            <p class = "noTopMargin">We'll use this to verify your credit card details</p>
            <input type = "text" name = "zipcode">
        </div>

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

        <button type="button">Book Now!</button>

        <?php include 'footer.php'?>

    </body>

</html>


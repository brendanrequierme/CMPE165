<?php

?>

<!DOCTYPE html>

    <head>
        <script src='http://use.edgefonts.net/nosifer.js'></script>
        <title>Spartan Death Hotel</title>
        <link rel="stylesheet" type="text/css" href="./styles.css" />
    </head>

    <body>
        <form action = "https://formspree.io/f/xoqrlwyk" method = "POST">
        <!-- This div is for the top part of the header -->
        <div>
            <table>
                <tr>
                    <th class = "logo"><a class = "clearDecorAndRed" href = "homepage.php">Spartan Death Hotel</a></th>
                    <td class = redTextRPad><a class = "clearDecorAndRed" href = "payment.php">USD</td>
                    <td class = redTextRPad>Help</td>
                    <td class = redTextRPad>Trips</td>
                    <td class = redTextRPad2><a class = "clearDecorAndRed" href = "login.php">Sign In</a></td>
                    <td class = redTextRPad2><a class = clearDecorAndRed href = "logout.php">Sign Out</a></td>
                </tr> 
            </table>
            <hr class = "lineHeight" class = "noTopMargin" color = "gray">
        </div>

        <!-- This div is for the bottom part of the header -->
        <div>
            <table align = "center">
                <tr>
                    <td><a class = "clearDecorAndRPad" href = "https://www.w3schools.com/">Deals</a></td>
                    <td><a class = "clearDecorAndRPad" href = "https://www.w3schools.com/">Vacation Rentals</a></td>
                    <td><a class = "clearDecorAndRPad" href = "https://www.w3schools.com/">Car Rental</a></td>
                    <td><a class = "clearDecorAndRPad" href = "https://www.w3schools.com/">Groups & Meetings</a></td>
                    <td><a class = "clearDecorAndRPad" href = "https://www.w3schools.com/">Gift Cards</a></td>
                    <td><a class = "clearDecorAndRPad" href = "https://www.w3schools.com/">List Your Property</a></td>
                    <td><a class = "clearDecorAndRPad" href = "https://www.w3schools.com/">Rewards</a></td>
                    <td><a class = "clearDecorAndRPad" href = "https://www.w3schools.com/">Credit Card</a></td>
                </tr>
            </table>
            <hr color = "gray">
        </div>

        <!-- This div is for contact part -->
        <div>
            <h3 class = "noBotMargin">Phone Number</h3>
            <p class = "noTopMargin">+1 (678)-999-8212
        </div>

        <!-- This div is for the attempt on an email box -->
        <div>
            <h2 style = margin-bottom:0px>Email Us:</h2>
            <p style = margin-top:5px>Email us at: spartandeathhotel@gmail.com or down below</p>
            <h4 style = margin-bottom:5px>First Name</h4>
            <input type = "text" name = "First Name" placeholder = "Enter your First Name">
            <h4 style = margin-bottom:5px>Last Name</h4>
            <input type = "text" name = "Last Name" placeholder = "Enter your Last Name">
            <h4 style = margin-bottom:5px>Email Address</h4>
            <input type = "text" name = "Email Address" placeholder = "Enter your Email Address">
            <h4 style = margin-bottom:5px>Message</h4>
            <textarea name = "msg" id = "Message" cols = "60" rows = "10" placeholder = "Enter your Message"></textarea>
        </div>

        <button class = "submitButton" style = margin-top:10px type= "submit">Submit</button>

        <hr class = "lineHeight" class = "noTopMargin" color = "gray">
        </form>

        <!-- This div is for the bottom part of the page -->
        <div>
            <table align = "center">
                <td style = padding-right:20px><a class = "clearDecorAndRPad" href = "aboutpage.php">About Us</a></td>
                <td style = padding-right:20px><a class = "clearDecorAndRPad" href = "aboutpage.php">List Your Property</a></td>
                <td style = padding-right:20px><a class = "clearDecorAndRPad" href = "contactpage.php">Conact Us</a></td>
            </table>
        </div>
        <script src = "script.js"></script>
    </body>
</html>
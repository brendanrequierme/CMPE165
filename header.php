<?php 

?>

<!DOCTYPE html>

    <head>
        <link href='https://fonts.googleapis.com/css?family=Nosifer' rel='stylesheet'>
        <link rel="stylesheet" type="text/css" href="./styles.css" />
        <script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
        <script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
        <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
        <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
    </head>

    <body>

           <!-- This div is for the top part of the header -->
           <!-- -25 margin for bot and top makes logo and text more centered, but makes the header long -->
           <div class = "header">
            <table>
                <tr>
                    <td><img src="./images/spartan-removebg-preview.png" alt="spartan" style = height:100px;width:100px;margin-top:-35px;margin-bottom:-30px;margin-right:-25px;margin-left:-25px></td>
                    <th class = "logo" style = padding-right:250px;><a class = "clearDecorAndRed" href = "homepage.php">Spartan Hotel</a></th>
                    <td><a class = "clearDecorAndRPad" href = "homepage.php">Home</a></td>
                    <td><a class = "clearDecorAndRPad" href = "bookingpage.php">Booking</a></td>
                    <td><a class = "clearDecorAndRPad" href = "booked.php">Booked</a></td>
                    <td><a class = "clearDecorAndRPad" href = "rewardspage.php">Rewards</a></td>
                    <td><a class = "clearDecorAndRPad" style = margin-right:220px href = "aboutpage.php">About Us</a></td>
                    <td class = redTextRPad2><a class = "clearDecor" href = "login.php">Sign In</a></td>
                </tr> 
            </table>
            <hr class = "lineHeight" class = "noTopMargin" color = "gray">
        </div>

    </body>
</html>
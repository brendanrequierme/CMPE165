<?php 
if(isset($_GET['id'])){
    $username = $_GET['id'];
    echo 'Welcome: '.$username;
}
?>

<!DOCTYPE html>

    <head>
        <script src='http://use.edgefonts.net/nosifer.js'></script>
        <link rel="stylesheet" type="text/css" href="./styles.css" />
        <script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
        <script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
        <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
        <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
    </head>

    <body>

           <!-- This div is for the top part of the header -->
           <div>
            <table>
                <tr>
                    <th class = "logo"><a class = "clearDecorAndRed" href = "homepage.php?id=<?php echo $username?>">Spartan Death Hotel</a></th>
                    <td class = redTextRPad><a class = "clearDecorAndRed" href = "helppage.php?id=<?php echo $username?>">Help</a></td>
                    <td class = redTextRPad2><a class = clearDecorAndRed href = "logout.php">Sign Out</a></td>
                </tr> 
            </table>
            <hr class = "lineHeight" class = "noTopMargin" color = "gray">
        </div>

        <!-- This div is for the bottom part of the header -->
        <div>
            <table>
                <tr>
                    <td><a class = "clearDecorAndRPad" href = "homepage.php?id=<?php echo $username?>">Home</a></td>
                    <td><a class = "clearDecorAndRPad" href = "bookingpage.php?id=<?php echo $username?>">Booking</a></td>
                    <td><a class = "clearDecorAndRPad" href = "rewardspage.php?id=<?php echo $username?>">Rewards</a></td>
                </tr>
            </table>
            <hr color = "gray">
        </div>

    </body>
</html>